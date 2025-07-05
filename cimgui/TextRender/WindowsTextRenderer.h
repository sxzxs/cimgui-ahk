#pragma once

#include <dwrite.h>
#include <d2d1.h>
#include <d3d11.h>
#include <string>
#include <unordered_map>
#include <wrl.h>  // 包含 ComPtr 定义
#include "TextRenderer.h"

namespace wrl = Microsoft::WRL;
extern ID3D11Device* g_pd3dDevice;

class WindowsTextRenderer : public ITextRenderer
{
public:
    WindowsTextRenderer(ID3D11Device* d3d_device);
    ~WindowsTextRenderer();

    // 支持 text_end 为 nullptr 或指向结尾
    std::wstring ConvertUTF8ToWide(const char* text, const char* text_end = nullptr);


    // 实现接口方法
    ImVec2 CalcTextSize(const char* text, const char* text_end) override;
    void RenderText(ImDrawList* draw_list, const char* text, const char* text_end, ImVec2 pos, ImU32 col) override;
    //void SetFont(const char* font_name, float size, bool bold = false) override;
    void UpdateTextFormat();
    void CreateTextTexture(
        IDWriteTextLayout* layout,
        const ImVec2& size,
        ImU32 col,
        ID3D11Texture2D** out_texture,
        ID3D11ShaderResourceView** out_srv
    );

private:
    // DirectWrite 资源
    wrl::ComPtr<IDWriteFactory> m_dwrite_factory;
    wrl::ComPtr<IDWriteTextFormat> m_text_format;

    // Direct2D 用于离屏渲染
    wrl::ComPtr<ID2D1Factory> m_d2d_factory;
    wrl::ComPtr<ID2D1RenderTarget> m_render_target;

    // 当前字体属性
    std::wstring m_font_name = L"Microsoft YaHei UI";
    float m_font_size = 16.0f;
    bool m_bold = false;

    // 缓存最近渲染结果 (可选优化)
    std::unordered_map<std::string, ID3D11ShaderResourceView*> m_text_cache;

    // 创建 DirectWrite 文本布局
    wrl::ComPtr<IDWriteTextLayout> CreateTextLayout(
        const std::wstring& text,
        float max_width = FLT_MAX
    );
};
