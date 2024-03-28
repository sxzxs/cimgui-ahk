#Requires AutoHotkey v2.0
#include <cimgui>

main()
main()
{
    global g_is_first_run := true
    ui := Imgui()
    hwnd := create_window(ui, "AHK ImGui", 0, 0, -5000, -5000)
    WinHide(hwnd)

    set_image := ui.imageFromFile(A_ScriptDir '\images\set.png')
    set_image_size := ui.ImageGetSize(set_image)

    usr_image := ui.imageFromFile(A_ScriptDir '\images\kz.png')
    usr_image_size := ui.ImageGetSize(usr_image)

    io := ui.igGetIO()
    ;调用from_ptr的对象，如果在函数退出之前还在堆栈中的，需要声明成global 或者，主动释放
    global g_io := ImGuiIO_AHK.from_ptr(io)

    load_styles(ui)

    is_open_demo := false
    is_open_main := true 
    bf := ui.tb('input')
    int4 := ctypes.array('int', 4)()
    while(ui.peekmsg() && is_open_main)
    {
        ui.beginframe()
        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)

        if(is_open_main)
        {
            if(g_is_first_run)
            {
                ui.igSetNextWindowPos(ImVec2([100, 100]))
                ui.igSetNextWindowSize(ImVec2([285, 380]))
                g_is_first_run := false
            }
            if(ui.igBegin(ui.str('xxx##test'), &is_open_main, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize))
            {
                ui.igSetCursorPos(ImVec2([10, 10]))
                ui.igTextDisabled(ui.str('微信'))

                ui.igSetCursorPos(ImVec2([215, 0]))
                static image_color := ImVec4([1, 1, 1, 1])
                ui.igImage(set_image, ImVec2(set_image_size),,, image_color)
                if(ui.igIsItemHovered())
                    image_color := ImVec4([0, 1, 0, 0.5])
                else
                    image_color := ImVec4([1, 1, 1, 1])
                if(ui.igIsItemClicked())
                    MsgBox('set')

                ui.igSetCursorPos(ImVec2([70, 77]))
                ui.igImage(usr_image, ImVec2(usr_image_size))


                ui.igSetCursorPos(ImVec2([256, 0]))
                static s_close_color := ImVec4([1, 1, 1, 1])
                ui.igPushStyleColor_Vec4(ImGuiCol_TextDisabled, s_close_color)
                ui.igTextDisabled(ui.str('x'))
                ui.igPopStyleColor()
                if(ui.igIsItemHovered())
                    s_close_color := ImVec4([1, 0, 0, 0.5])
                else
                    s_close_color := ImVec4([0, 0, 0, 0.5])
                
                if(ui.igIsItemClicked())
                    is_open_main := false

                ui.igSetCursorPos(ImVec2([50, 270]))
                ui.igPushStyleVar_Float(ImGuiStyleVar_FrameRounding, 15)
                ui.igButton(ui.str('登录'), ImVec2([180, 36]))
                ui.igPopStyleVar()

                ui.igPushStyleVar_Float(ImGuiStyleVar_FrameRounding, 15)
                ui.igPushStyleColor_Vec4(ImGuiCol_Button, ImVec4([1, 1, 1, 1]))
                ui.igPushStyleColor_Vec4(ImGuiCol_Text, imgui.color([102, 104, 185, 255]))
                ui.igPushStyleColor_Vec4(ImGuiCol_ButtonHovered, ImVec4([1, 1, 1, 1]))

                ui.igSetCursorPos(ImVec2([40, 330]))
                ui.igButton(ui.str('切换账号'), ImVec2([100, 36]))
                ui.igSetCursorPos(ImVec2([150, 330]))
                ui.igButton(ui.str('仅传输文件'), ImVec2([120, 36]))


                ui.igPopStyleColor(3)
                ui.igPopStyleVar()
            }
            ui.igEnd()
        }
        ui.endframe(0xcccccccc)
    }
    ui.shutdown_ahk()
    ExitApp

}

;创建一个透明背景的窗口
create_window(ui, title, w, h, x := 0, y := 0)
{
    class_name := 'cimgui-ahk'
    ui.cls := cls := ui.WindowClass(CallbackCreate(WndProc), class_name, CS_CLASSDC := 0x0040)

    WS_EX_TOPMOST := 0x00000008, WS_EX_LAYERED := 0x00080000, WS_POPUP := 0x80000000
    ui.hwnd := hwnd := ui.CreateWindowEx(WS_EX_TOPMOST | WS_EX_LAYERED, class_name, 'cimgui', WS_POPUP, x, y, w, h, 0, 0, 0, 0)

    margins := Buffer(16,0)
    NumPut("int",-1,margins,0), NumPut("int",-1,margins,4), NumPut("int",-1,margins,8), NumPut("int",-1,margins,12)
    ext := DllCall("dwmapi\DwmExtendFrameIntoClientArea","Uptr",hwnd,"ptr",margins,"uint")
    if (ext != 0) 
    {
        ui.Err("Problem with DwmExtendFrameIntoClientArea","overlay will not function`n`nReloading the script usually fixes ui`n`nError: " DllCall("GetLastError","uint") " / " ext)
        return
    }
    DllCall("SetLayeredWindowAttributes","Uptr",hwnd,"Uint",0,"char",255,"uint",2)

    if(!ui.CreateDeviceD3D(hwnd))
    {
        ui.CleanupDeviceD3D()
        ui.UnregisterClass(class_name, NumGet(cls.cls, 24, 'ptr'))
        return 0
    }

    ui.igCreateContext()
    io := ImGuiIO.from_ptr(ui.igGetIO())
    io.ConfigFlags |= ImGuiConfigFlags_ViewportsEnable 
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable 

    io.ConfigViewportsNoAutoMerge := true
    io.ConfigViewportsNoTaskBarIcon := false
    io.ConfigDockingTransparentPayload := true

    ;Load font
    fontAtlas := ImFontAtlas_AHK.from_ptr(io.Fonts.ptr)
    fontAtlas.ClearFonts()
    glyphRange := fontAtlas.GetGlyphRangesChineseFull()

    config_words_ptr := ImFontConfig_AHK.ImFontConfig()
    ;xx := ImFontConfig_AHK.ImFontConfig()
    config_words := ImFontConfig_AHK.from_ptr(config_words_ptr)
    ;一定要设置false,否则ahk context释放的时候，会报错
    config_words.FontDataOwnedByAtlas := false
    config_words.OversampleH := 2
    config_words.OversampleV := 1
    config_words.SizePixels := 20
    config_words.PixelSnapH := false

    fontAtlas.AddFontFromMemoryTTF(ui.simhei_font(), 9753388, 20, config_words, glyphRange)
    ImFontConfig_AHK.free(config_words_ptr)

    style := ImGuiStyle.from_ptr(ui.igGetStyle())
    if(io.ConfigFlags & ImGuiConfigFlags_ViewportsEnable)
    {
        style.WindowRounding := 0.0
        style.Colors[ImGuiCol_WindowBg].w := 1.0
    }

    ui.igStyleColorsDark()
    rtn := ui.ImGui_ImplWin32_Init(hwnd)
    g_pd3dDeviceContext := DllCall(Cimgui_dll.get_g_pd3dDeviceContext, 'ptr')
    g_pd3dDevice := DllCall(Cimgui_dll.get_g_pd3dDevice, 'ptr')
    ui.ImGui_ImplDX11_Init(g_pd3dDevice, g_pd3dDeviceContext)
    return hwnd

    static WndProc(hwnd, msg, wp, lp) 
    {
        try
        {
            if(DllCall(Cimgui_dll.ImGui_ImplWin32_WndProcHandler, "ptr", hWnd, "uint", msg, 'ptr', wp, 'ptr', lp, 'ptr'))
                return true
            switch msg 
            {
                case 0x0005: ;WM_SIZE
                {
                    if(wp == 1) ;SIZE_MINIMIZED
                    {
                        DllCall(Cimgui_dll.set_g_wndMinimized, 'char', true)
                        return 0
                    }
                    else
                        DllCall(Cimgui_dll.set_g_wndMinimized, 'char', false)

                    DllCall(Cimgui_dll.set_g_ResizeWidth, 'uint', lp & 0xffff)
                    DllCall(Cimgui_dll.set_g_ResizeHeight, 'uint', (lp >> 16) & 0xffff)
                    return 0
                }
                case 0x0112: ;WM_SYSCOMMAND:
                {
                    ;SC_KEYMENU
                    if ((wp & 0xfff0) == 0xF100) ; Disable ALT application menu
                        return 0
                }
                case 0x0010: ;WM_CLOSE
                {
                    DllCall(Cimgui_dll.set_msg_closed, 'char', true)
                    return 0
                }
                case 0x0002: ;WM_DESTROY
                {
                    DllCall('User32\PostQuitMessage', 'int', 0, 'int')
                    return 0
                }
                case 0x02E0: ;WM_DPICHANGED
                {

                }
                case 0x0084: ;WM_NCHITTEST
                {
                    pt := Buffer(8, 0)
                    NumPut('int', GET_X_LPARAM(lp), pt, 0)
                    NumPut('int', GET_Y_LPARAM(lp), pt, 4)

                    DllCall('ScreenToClient', 'ptr', hwnd, 'ptr', pt)

                    hit := DllCall("DefWindowProcW", "ptr", hwnd, "uint", msg, "ptr", wp, "ptr", lp, "ptr")
                    if(hit == 1) ;HTCLIENT
                    {
                        io := ImGuiIO.from_ptr(DllCall(Cimgui_dll.igGetIO, 'ptr'))
                        if (io.WantCaptureMouse)
                        {
                            ; Let imgui handle the mouse event
                            return hit
                        }
                        else
                        {
                            ; Let the window be moved by dragging any point
                            return 2 ;HTCAPTION
                        }
                    }
                    return hit
                }
            }
            return DllCall("DefWindowProcW", "ptr", hwnd, "uint", msg, "ptr", wp, "ptr", lp, "ptr")
        }

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

    }
}

load_styles(ui)
{
    style := ui.igGetStyle()
    style := ImGuiStyle.from_ptr(style)
    color := style.Colors
    color[ImGuiCol_WindowBg] := ImVec4([1, 1, 1, 1]) ;rgba

    ;color[ImGuiCol_FrameBg] := imgui.color([11, 11, 11, 255])

    color[ImGuiCol_Button] := imgui.color([7, 193, 96, 255])
    color[ImGuiCol_ButtonHovered] := imgui.color([56, 205, 127, 255])
    
    color[ImGuiCol_FrameBgHovered] := ImVec4([0.37, 0.37, 0.37, 1.00])
    color[ImGuiCol_Border] := ImVec4([0.37, 0.37, 0.37, 0.00])

    ;color[ImGuiCol_Text] := Imgui.color([0, 0, 0, 255])

    ;color[ImGuiCol_TextDisabled] := Imgui.color([0, 0, 0, 255])

    style.WindowPadding := ImVec2([4, 4])
    style.WindowBorderSize := 0
    style.WindowRounding := 10

    style.FramePadding := ImVec2([8, 6])
    style.FrameRounding := 10
    style.FrameBorderSize := 1
}