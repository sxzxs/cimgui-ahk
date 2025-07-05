#pragma once
#include "imgui.h"

class ITextRenderer {
public:
    virtual ~ITextRenderer() = default;

    // 测量文本尺寸
    virtual ImVec2 CalcTextSize(const char* text, const char* text_end = nullptr) = 0;

    // 渲染文本到指定位置
    virtual void RenderText(
        ImDrawList* draw_list,
        const char* text,
        const char* text_end,
        ImVec2 pos,
        ImU32 col
    ) = 0;

    // 设置字体属性 (可选)
    virtual void SetFont(const char* font_name, float size, bool bold = false) = 0;
};
