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
        global g_imgui
        g_imgui := this
    }
    __Delete()
    {
        
    }

    static color(cl := [0, 0, 0, 255]) ;rgba int
    {
        ;调用构造函数从堆分配内存,需要主动释放
        color_ptr := ImColor_AHK.ImColor_Int(cl*)
        color := ImColor.from_ptr(color_ptr)
        rtn_color := ImVec4(color.Value)
        ImColor_AHK.free(color_ptr)
        return rtn_color
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

    ;背景隐藏的窗口
    guicreate_unbackground(title, font_path := "from_memory_simhei", font_size := 20, font_range := "GetGlyphRangesChineseFull", range_charBuf := 0, OversampleH := 2, OversampleV := 1, PixelSnapH := false)
    {
        WS_CAPTION :=  0x00C00000
        WS_THICKFRAME := 0x00040000
        hwnd := this.gui_create(title, 0, 0, -5000, -5000, 0, 0x80, font_path, font_size, font_range, range_charBuf, OversampleH, OversampleV, PixelSnapH)
        DllCall("SetWindowLongPtr", "Ptr", hwnd, "Int", -16 ,"Int64", DllCall('GetWindowLongPtr', 'ptr', hwnd, 'int', -16, 'int64') & ~WS_CAPTION & ~WS_THICKFRAME)
        WinHide(hwnd)
        return hwnd
    }

    ;背景透明的窗口
    gui_overlay(title, w, h, x := -1, y := -1, style := 0, ex_style := 0, font_path := "from_memory_simhei", font_size := 20, font_range := "GetGlyphRangesChineseFull", range_charBuf := 0, OversampleH := 2, OversampleV := 1, PixelSnapH := false)
    {
        result := DllCall(Cimgui_dll.GUICreate_overlay, "wstr", title, "int", w, "int", h, "int", x, "int", y, "wstr", font_path, "float", font_size, "wstr", font_range, "ptr", range_charBuf, "int", OversampleH, "int", OversampleV, "int", PixelSnapH)
        this.hwnd := result
        if(style != 0)
            DllCall("SetWindowLongPtr", "Ptr", result, "Int", -16 ,"Int64", style)
        if(ex_style != 0)
            DllCall("SetWindowLongPtr", "Ptr", result, "Int", -20, "int64", ex_style)
        return result
    }

    peekmsg() => DllCall(Cimgui_dll.PeekMsg)

    beginframe() => DllCall(Cimgui_dll.BeginFrame, "Cdecl")

    /**
     * 
     * @param {number} color  ARGB 无效
     * @param {number} is_present 垂直同步，默认为false，需要手动管理，这样不会影响其他伪线程的效率
     */
    endframe(color := 0xff004488, is_present := false)
    {
        DllCall(Cimgui_dll.EndFrame, "UInt", color, 'char', is_present, "Cdecl")
        if(!is_present)
            Sleep(10)
        ; 最小化时，垂直同步不生效
        if(is_present && -1 == WinGetMinMax(this.hwnd))
            Sleep(20)
    }

    ;如果窗口是dll创建的,调用这个方法
    ShutDown()
    {
        Critical
        DllCall(Cimgui_dll.ShutDown, 'ptr')
    }

    ;如果窗口是ahk创建的,调用这个方法
    shutdown_ahk()
    {
        Critical
        DllCall(Cimgui_dll.ImGui_ImplDX11_Shutdown)
        DllCall(Cimgui_dll.ImGui_ImplWin32_Shutdown)
        DllCall(Cimgui_dll.igDestroyContext, 'ptr', 0)
        DllCall(Cimgui_dll.CleanupDeviceD3D)
        DllCall('DestroyWindow', 'ptr', this.hwnd)
        this.UnregisterClass(this.class_name, NumGet(this.cls.cls, 24, 'ptr'))
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
        rtn := DllCall(Cimgui_dll.LoadTextureFromFile, "wstr", filename, "ptr*", &out_srv, "int *", &out_width, "int *", &out_height)
        return rtn
    }

    LoadTextureFromMemory(buf, buf_size, &out_srv, &out_width, &out_height)
    {
        rtn := DllCall(Cimgui_dll.LoadTextureFromMemory, "ptr", buf, "int", buf_size, "ptr*", &out_srv, "int *", &out_width, "int *", &out_height)
        return rtn
    }

    TextureFree(srv)
    {
        return DllCall(Cimgui_dll.TextureFree, "ptr", srv)
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

    toggle_button(text, &active)
    {
        b_active := buffer(4, 0)
        NumPut("Int", active, b_active)
        result := DllCall(Cimgui_dll.imgui_toggle_button, "wstr", text, "ptr", b_active)
        active := NumGet(b_active, 0, "Int")
        return result
    }

    change_window_icon(hwnd, ico_path)
    {
        hIcon := DllCall( "LoadImage", 'UInt',0, 'Str', ico_path, 'uint',1, 'UInt',0, 'UInt',0, 'UInt',0x10 )
        SendMessage(0x80, 0, hIcon,, hwnd)
        SendMessage(0x80, 1, hIcon,, hwnd)
    }
    CreateDeviceD3D(hwnd) => DllCall(Cimgui_dll.CreateDeviceD3D, 'ptr', hwnd, 'char')
    CleanupDeviceD3D() => DllCall(Cimgui_dll.CleanupDeviceD3D)
    ShowWindow(hWnd, nCmdShow) => DllCall('User32\ShowWindow', 'ptr', hWnd, 'int', nCmdShow, 'int')
    UpdateWindow(hwnd) => DllCall('User32\UpdateWindow', 'ptr', hwnd, 'int')
    PostQuitMessage(nExitCode) => DllCall('User32\PostQuitMessage', 'int', nExitCode, 'int')

    ImGui_ImplWin32_Init(hwnd) => DllCall(Cimgui_dll.ImGui_ImplWin32_Init, "ptr", hwnd, "char")
    ImGui_ImplDX11_Init(device, device_context) => DllCall(Cimgui_dll.ImGui_ImplDX11_Init, "ptr", device, "ptr", device_context, 'char')

    simhei_font() => DllCall(Cimgui_dll.simhei_font, 'ptr')

    UnregisterClass(lpClassName, hInstance) => DllCall('User32\UnregisterClass', 'str', lpClassName, 'ptr', hInstance, 'int')
    ImGui_ImplWin32_WndProcHandler(hWnd, msg, wParam, lParam) => DllCall(Cimgui_dll.ImGui_ImplWin32_WndProcHandler, "ptr", hWnd, "uint", msg, 'ptr', wParam, 'ptr', lParam, 'ptr')
    GET_X_LPARAM(lParam)
    {
        x := lParam & 0xffff
        bf := Buffer(2)
        NumPut('ushort', x, bf)
        return NumGet(bf, 'short')
    }
    GET_Y_LPARAM(lParam)
    {
        y := (lParam >> 16) & 0xffff
        bf := Buffer(2)
        NumPut('ushort', y, bf)
        return NumGet(bf, 'short')
    }

    CreateWindowEx(dwExStyle, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, parent, hMenu, hInstance, lpParam) => DllCall('CreateWindowExW', 'uint', dwExStyle, 'str', lpClassName, 'str', lpWindowName, 'uint', dwStyle, 'int', x, 'int', y, 'int', nWidth, 'int', nHeight, 'ptr', parent, 'ptr', hMenu, 'ptr', hInstance, 'ptr', lpParam, 'ptr')


    WindowClass(pWndProc, cls := "", style := 0) 
    {
        ; The window class shares the name of this class.
        (cls == "") && cls := "cimgui-ahk"
        wc := Buffer(A_PtrSize = 4 ? 48:80) ; sizeof(WNDCLASSEX) = 48, 80

        ; Check if the window class is already registered.
        hInstance := DllCall("GetModuleHandle", "ptr", 0, "ptr")
        if DllCall("GetClassInfoEx", "ptr", hInstance, "str", cls, "ptr", wc)
            return cls

        ; Create window data.
        hCursor := DllCall("LoadCursor", "ptr", 0, "ptr", 32512, "ptr") ; IDC_ARROW
        hBrush := DllCall("GetStockObject", "int", 5, "ptr") ; Hollow_brush

        ; struct tagWNDCLASSEXA - https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-wndclassexa
        ; struct tagWNDCLASSEXW - https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-wndclassexw
        _ := (A_PtrSize = 4)
        NumPut(  "uint",     wc.size, wc,         0) ; cbSize
        NumPut(  "uint",       style, wc,         4) ; style
        NumPut(   "ptr",    pWndProc, wc,         8) ; lpfnWndProc
        NumPut(   "int",           0, wc, _ ? 12:16) ; cbClsExtra
        NumPut(   "int",          40, wc, _ ? 16:20) ; cbWndExtra
        NumPut(   "ptr",           0, wc, _ ? 20:24) ; hInstance
        NumPut(   "ptr",           0, wc, _ ? 24:32) ; hIcon
        NumPut(   "ptr",     hCursor, wc, _ ? 28:40) ; hCursor
        NumPut(   "ptr",      hBrush, wc, _ ? 32:48) ; hbrBackground
        NumPut(   "ptr",           0, wc, _ ? 36:56) ; lpszMenuName
        NumPut(   "ptr", StrPtr(cls), wc, _ ? 40:64) ; lpszClassName
        NumPut(   "ptr",           0, wc, _ ? 44:72) ; hIconSm

        ; Registers a window class for subsequent use in calls to the CreateWindow or CreateWindowEx function.
        rtn := DllCall("RegisterClassEx", "ptr", wc, "ushort")

        ; Return the class name as a string.
        return {class_name : cls, cls : wc}
    }
}