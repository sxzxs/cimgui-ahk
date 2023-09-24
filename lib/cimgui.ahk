/************************************************************************
 * @description  cimgui ahk bind
 * @file cimgui.ahk
 * @author sxzxs 2397633100@qq.com https://github.com/sxzxs
 * @date 2023/09/16
 * @version 1.0.0
 ***********************************************************************/


#Requires AutoHotkey v2.0
#include ./cimgui_dll.ah2
#include ./cimgui_structs.ah2
#include ./cimgui_all_class.ah2

class Imgui extends Cimgui_AHK
{
    static ctype_bind_var := []
    __New()
    {
        
    }
    __Delete()
    {
        
    }

    static color(cl := [0, 0, 0, 255]) ;rgba int
    {
        return ImVec4.from_ptr(ImColor_AHK.ImColor_Int(cl*))
    }

    static str(str, encoding := 'UTF-8')
    {
        buf := buffer(strput(str, encoding))
        strput(str, buf, encoding)
        return buf
    }

    str(str, encoding := 'UTF-8')
    {
        buf := buffer(strput(str, encoding))
        strput(str, buf, encoding)
        return buf
    }

    tb(text := '', length := 1028)
    {
        return %this.__Class%.text_buffer(text, length)
    }

    class text_buffer
    {
        __New(text := '', length := 1028)
        {
            this.bf := Buffer(length, 0)
            StrPut(text, this.bf, 'UTF-8')
            this.ptr:= this.bf.ptr
            this.size := this.bf.size
        }
        text
        {
            get
            {
                return StrGet(this.bf, 'UTF-8')
            }
            set
            {
                StrPut(Value, this.bf, 'UTF-8')
            }
        }
    }

    main() => DllCall(Cimgui_dll.main, 'int', 0, 'ptr', 0)

    ;GUI_API const ImWchar*    GetGlyphRangesDefault();                // Basic Latin, Extended Latin
    ;GUI_API const ImWchar*    GetGlyphRangesKorean();                 // Default + Korean characters
    ;GUI_API const ImWchar*    GetGlyphRangesJapanese();               // Default + Hiragana, Katakana, Half-Width, Selection of 1946 Ideographs
    ;GUI_API const ImWchar*    GetGlyphRangesChineseFull();            // Default + Half-Width + Japanese Hiragana/Katakana + full set of about 21000 CJK Unified Ideographs
    ;GUI_API const ImWchar*    GetGlyphRangesChineseSimplifiedCommon();// Default + Half-Width + Japanese Hiragana/Katakana + set of 2500 CJK Unified Ideographs for common simplified Chinese
    ;GUI_API const ImWchar*    GetGlyphRangesCyrillic();               // Default + about 400 Cyrillic characters
    ;GUI_API const ImWchar*    GetGlyphRangesThai();                   // Default + Thai characters
    ;GUI_API const ImWchar*    GetGlyphRangesVietnamese();             // Default + Vietnamese characters
    /**
    * 创建窗口
    * @param src 图像
    * @param w h x y 窗口大小和坐标
    * @param style 
    * @param exstyle
    * @font_path 字体路径
    *	- "c://xxx.ttf"
    *   - 内存加载
    *		- from_memory_ali
    *		- from_memory_simhei
    *		- default
    * @font_size 字体大小
    * @font_range 字体的范围
    *	- GetGlyphRangesDefault
    *	- GetGlyphRangesKorean
    *	- GetGlyphRangesJapanese
    *	- GetGlyphRangesChineseFull
    *	- GetGlyphRangesChineseSimplifiedCommon
    *	- GetGlyphRangesCyrillic
    *	- GetGlyphRangesThai
    *	- GetGlyphRangesVietnamese
    * @range_charBuf 从配置文件中读取的字体范围, 配合_Imgui_load_font_range 使用
    */
    gui_create(title, w, h, x := -1, y := -1, style := 0, ex_style := 0, font_path := "from_memory_simhei", font_size := 20, font_range := "GetGlyphRangesChineseFull", range_charBuf := 0, OversampleH := 2, OversampleV := 1, PixelSnapH := false)
    {
        result := DllCall(Cimgui_dll.GUICreate, "wstr", title, "int", w, "int", h, "int", x, "int", y, "wstr", font_path, "float", font_size, "wstr", font_range, "ptr", range_charBuf, "int", OversampleH, "int", OversampleV, "int", PixelSnapH)
        this.hwnd := result
        if(style != 0)
            DllCall("SetWindowLongPtr", "Ptr", result, "Int", -16 ,"Int64", style)
        if(ex_style != 0)
            DllCall("SetWindowLongPtr", "Ptr", result, "Int", -20, "int64", ex_style)
        return result
    }

    guicreate_unbackground(title, font_path := "from_memory_simhei", font_size := 20, font_range := "GetGlyphRangesChineseFull", range_charBuf := 0, OversampleH := 2, OversampleV := 1, PixelSnapH := false)
    {
        WS_CAPTION :=  0x00C00000
        WS_THICKFRAME := 0x00040000
        hwnd := this.gui_create(title, 0, 0, -5000, -5000, 0, 0x80, font_path, font_size, font_range, range_charBuf, OversampleH, OversampleV, PixelSnapH)
        DllCall("SetWindowLongPtr", "Ptr", hwnd, "Int", -16 ,"Int64", DllCall('GetWindowLongPtr', 'ptr', hwnd, 'int', -16, 'int64') & ~WS_CAPTION & ~WS_THICKFRAME)
        WinHide(hwnd)
        return hwnd
    }

    peekmsg() => DllCall(Cimgui_dll.PeekMsg)

    beginframe() => DllCall(Cimgui_dll.BeginFrame, "Cdecl")

    endframe(color := 0x004488)
    {
        DllCall(Cimgui_dll.EndFrame, "UInt", color, "Cdecl")
        if(-1 == WinGetMinMax(this.hwnd))
            Sleep(20)
    }

    enableviewports(enable := True) => DllCall(Cimgui_dll.EnableViewports, "Int", enable)

    ;加载图片
    imageFromFile(file_path)
    {
        rtn := Dllcall(Cimgui_dll.ImageFromFile, "wstr", file_path)
	    Return rtn
    }

    ;图片尺寸
    ImageGetSize(user_texture_id)
    {
        if(user_texture_id == 0)
            return false
        struct_x := buffer(4, 0)
        struct_y := buffer(4, 0)
        result := Dllcall(Cimgui_dll.ImageGetSize, "ptr", user_texture_id, "ptr", struct_x,"ptr", struct_y)
        ret := [NumGet(struct_x, 0, "float"), NumGet(struct_y, 0, "float")]
        Return ret
    }

    ;保存style
    save_style_to_file(file_path) => DllCall(Cimgui_dll.save_style_to_file, 'wstr', file_path)
    ;加载style
    load_style_from_file(file_path) => DllCall(Cimgui_dll.load_style_from_file, 'wstr', file_path)

    LoadTextureFromFile(filename, &out_srv, &out_width, &out_height)
    {
        rtn := DllCall(Cimgui_dll.LoadTextureFromFile, "wstr", filename, "int *", &out_srv, "int *", &out_width, "int *", &out_height)
        return rtn
    }

    LoadTextureFromMemory(buf, buf_size, &out_srv, &out_width, &out_height)
    {
        rtn := DllCall(Cimgui_dll.LoadTextureFromMemory, "ptr", buf, "int", buf_size, "int *", &out_srv, "int *", &out_width, "int *", &out_height)
        return rtn
    }

    /*
    * 从给定的字符串中获取字符的编码范围
    * @string 字符串， utf-16
    * @range_array 返回字符串编码数组
    * @length 数字数组的长度
    * @raw_data 原始字符范围字符串
    */
    load_font_range_from_string(string, &range_array, &length, &raw_data)
    {
        struct_value := buffer(10000 * 4, 0)
        raw_data := buffer(10000 * 4, 0)
        DllCall(Cimgui_dll.imgui_get_custom_font_range_from_string, "wstr", string, "ptr", struct_value, "int *", &length, "ptr", raw_data)
        loop(length)
            range_array.Push(NumGet(struct_value, (A_Index -1) * 4, "int"))
    }

    ;从给定的文件获取字符编码范围
    load_font_range(file_path, &range_array, &length, &raw_data)
    {
        struct_value := buffer(10000 * 4, 0)
        raw_data := buffer(10000 * 4, 0)
        DllCall(Cimgui_dll.imgui_get_custom_font_range, "wstr", file_path, "ptr", struct_value, "int *", &length, "ptr", raw_data)
        loop(length)
            range_array.Push(NumGet(struct_value, (A_Index -1) * 4, "int"))
    }

    ;加载字体
    load_font(font_path := "from_memory_simhei", font_size := 20, font_range := "GetGlyphRangesChineseFull", range_charBuf := 0, OversampleH := 1, OversampleV := 1, PixelSnapH := false)
    {
        font := 0
        result := DllCall(Cimgui_dll.load_font, "ptr*", &font, "wstr", font_path, "float", font_size, "wstr", font_range, "ptr", range_charBuf, "int", OversampleH, "int", OversampleV, "int", PixelSnapH)
        return font
    }
}