#include "WindowsTextRenderer.h"

#include <codecvt>
#include <locale>
WindowsTextRenderer* g_text_renderer = nullptr;
ID3D11Device* g_pd3dDevice = nullptr;
WindowsTextRenderer::~WindowsTextRenderer() = default;

WindowsTextRenderer::WindowsTextRenderer(ID3D11Device* d3d_device)
{
    // 创建 DirectWrite 工厂
    DWriteCreateFactory(DWRITE_FACTORY_TYPE_SHARED, __uuidof(IDWriteFactory), &m_dwrite_factory);

    // 创建 Direct2D 工厂
    D2D1_FACTORY_OPTIONS options = {};
    HRESULT hr = D2D1CreateFactory(
        D2D1_FACTORY_TYPE_SINGLE_THREADED,
        __uuidof(ID2D1Factory),
        &options,
        reinterpret_cast<void**>(m_d2d_factory.GetAddressOf())
    );
    // 创建默认文本格式
    UpdateTextFormat();
}

void WindowsTextRenderer::UpdateTextFormat()
{
    m_dwrite_factory->CreateTextFormat(
        m_font_name.c_str(),
        nullptr,
        m_bold ? DWRITE_FONT_WEIGHT_BOLD : DWRITE_FONT_WEIGHT_NORMAL,
        DWRITE_FONT_STYLE_NORMAL,
        DWRITE_FONT_STRETCH_NORMAL,
        m_font_size,
        L"", // 区域设置
        &m_text_format
    );
}

std::wstring WindowsTextRenderer::ConvertUTF8ToWide(const char* text, const char* text_end)
{
    if (!text) return L"";
    int len = text_end ? (int)(text_end - text) : (int)strlen(text);
    if (len == 0) return L"";
    int wlen = MultiByteToWideChar(CP_UTF8, 0, text, len, nullptr, 0);
    std::wstring wstr(wlen, 0);
    MultiByteToWideChar(CP_UTF8, 0, text, len, &wstr[0], wlen);
    return wstr;
}

ImVec2 WindowsTextRenderer::CalcTextSize(const char* text, const char* text_end)
{
    if (!text || !*text) return ImVec2(0, 0);

    // 转换 UTF-8 到 UTF-16
    std::wstring wtext = ConvertUTF8ToWide(text, text_end);

    // 创建文本布局
    auto layout = CreateTextLayout(wtext);

    // 获取文本尺寸
    DWRITE_TEXT_METRICS metrics;
    layout->GetMetrics(&metrics);

    return ImVec2(metrics.width, metrics.height);
}

void WindowsTextRenderer::RenderText(
    ImDrawList* draw_list,
    const char* text,
    const char* text_end,
    ImVec2 pos,
    ImU32 col
)
{
    // 1. 检查缓存中是否已有该文本的纹理
    std::string key = std::string(text, text_end ? (text_end - text) : strlen(text));
    key += "|" + std::to_string(col);

    if (auto it = m_text_cache.find(key); it != m_text_cache.end())
    {
        // 使用缓存纹理绘制
        ID3D11ShaderResourceView* texture = it->second;
        ImVec2 size = CalcTextSize(text, text_end);
        draw_list->AddImage(texture, pos, ImVec2(pos.x + size.x, pos.y + size.y));
        return;
    }

    // 2. 转换文本
    std::wstring wtext = ConvertUTF8ToWide(text, text_end);

    // 3. 创建文本布局
    auto layout = CreateTextLayout(wtext);

    // 4. 测量文本尺寸
    DWRITE_TEXT_METRICS metrics;
    layout->GetMetrics(&metrics);
    ImVec2 size(metrics.width, metrics.height);

    // 5. 创建离屏纹理
    ID3D11Texture2D* texture = nullptr;
    ID3D11ShaderResourceView* srv = nullptr;
    CreateTextTexture(layout.Get(), size, col, &texture, &srv);

    // 6. 缓存纹理
    m_text_cache[key] = srv;

    // 7. 添加到绘制列表
    draw_list->AddImage(srv, pos, ImVec2(pos.x + size.x, pos.y + size.y));

    // 8. 释放临时资源 (texture 由 srv 管理引用)
    texture->Release();
}

void WindowsTextRenderer::CreateTextTexture(
    IDWriteTextLayout* layout,
    const ImVec2& size,
    ImU32 col,
    ID3D11Texture2D** out_texture,
    ID3D11ShaderResourceView** out_srv
)
{
    // 创建 D3D11 纹理
    D3D11_TEXTURE2D_DESC desc = {};
    desc.Width = static_cast<UINT>(size.x);
    desc.Height = static_cast<UINT>(size.y);
    desc.MipLevels = 1;
    desc.ArraySize = 1;
    desc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    desc.SampleDesc.Count = 1;
    desc.Usage = D3D11_USAGE_DEFAULT;
    desc.BindFlags = D3D11_BIND_SHADER_RESOURCE;

    ID3D11Texture2D* texture;
    g_pd3dDevice->CreateTexture2D(&desc, nullptr, &texture);

    // 创建 D2D 渲染目标
    wrl::ComPtr<IDXGISurface> dxgi_surface;
    texture->QueryInterface(IID_PPV_ARGS(&dxgi_surface));

    D2D1_RENDER_TARGET_PROPERTIES props = D2D1::RenderTargetProperties(
        D2D1_RENDER_TARGET_TYPE_DEFAULT,
        D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_PREMULTIPLIED)
    );

    wrl::ComPtr<ID2D1RenderTarget> render_target;
    m_d2d_factory->CreateDxgiSurfaceRenderTarget(dxgi_surface.Get(), &props, &render_target);

    // 渲染文本
    render_target->BeginDraw();
    render_target->Clear(D2D1::ColorF(0, 0, 0, 0)); // 透明背景

    // 转换 ImU32 颜色到 D2D 颜色
    D2D1_COLOR_F d2d_color = D2D1::ColorF(
        ((col >> IM_COL32_R_SHIFT) & 0xFF) / 255.0f,
        ((col >> IM_COL32_G_SHIFT) & 0xFF) / 255.0f,
        ((col >> IM_COL32_B_SHIFT) & 0xFF) / 255.0f,
        ((col >> IM_COL32_A_SHIFT) & 0xFF) / 255.0f
    );

    wrl::ComPtr<ID2D1SolidColorBrush> brush;
    render_target->CreateSolidColorBrush(d2d_color, &brush);

    render_target->DrawTextLayout(
        D2D1::Point2F(0, 0),
        layout,
        brush.Get()
    );

    render_target->EndDraw();

    // 创建着色器资源视图
    D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
    srvDesc.Format = desc.Format;
    srvDesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2D;
    srvDesc.Texture2D.MipLevels = 1;

    g_pd3dDevice->CreateShaderResourceView(texture, &srvDesc, out_srv);

    *out_texture = texture;
}

wrl::ComPtr<IDWriteTextLayout> WindowsTextRenderer::CreateTextLayout(const std::wstring& text, float width)
{
    // 简单实现，具体参数按你的需求调整
    wrl::ComPtr<IDWriteTextLayout> layout;
    m_dwrite_factory->CreateTextLayout(
        text.c_str(), (UINT32)text.length(),
        m_text_format.Get(),
        width > 0 ? width : 4096, // 宽度
        m_font_size * 2, // 高度
        &layout
    );
    return layout;
}
