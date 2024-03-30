#Requires AutoHotkey v2.0
#include <cimgui>

main()
main()
{
    global g_is_first_run := true
    ui := Imgui()
    hwnd := create_window(ui, "AHK ImGui", 0, 0, -5000, -5000)
    WinHide(hwnd)

    tim := ui.imageFromFile(A_ScriptDir '\images\tim.png')
    tim_image_size := ui.ImageGetSize(tim)

    set_image := ui.imageFromFile(A_ScriptDir '\images\set.png')
    set_image_size := ui.ImageGetSize(set_image)

    usr_image := ui.imageFromFile(A_ScriptDir '\images\kz.png')
    usr_image_size := ui.ImageGetSize(usr_image)

    qq_image := ui.imageFromFile(A_ScriptDir '\images\qq.png')
    qq_image_size := ui.ImageGetSize(qq_image)

    wechat_image := ui.imageFromFile(A_ScriptDir '\images\微信登录.png')
    wechat_image_size := ui.ImageGetSize(wechat_image)

    down_image := ui.imageFromFile(A_ScriptDir '\images\down.png')
    down_iamge_size := ui.ImageGetSize(down_image)

    right_image := ui.imageFromFile(A_ScriptDir '\images\right.png')
    right_iamge_size := ui.ImageGetSize(right_image)

    qr_code := ui.imageFromFile(A_ScriptDir '\images\二维码.png')
    qr_code_size := ui.ImageGetSize(qr_code)

    qq_set := ui.imageFromFile(A_ScriptDir '\images\qq_set.png')
    qq_set_size := ui.ImageGetSize(qq_set)

    qq_close := ui.imageFromFile(A_ScriptDir '\images\qq_close.png')
    qq_close_size := ui.ImageGetSize(qq_close)

    io := ui.igGetIO()
    ;调用from_ptr的对象，如果在函数退出之前还在堆栈中的，需要声明成global 或者，主动释放
    global g_io := ImGuiIO_AHK.from_ptr(io)

    ;load_styles(ui)

    is_open_demo := false
    ;is_open_demo := true
    is_open_main := true 
    bf := ui.tb('input')
    int4 := ctypes.array('int', 4)()

    ui.load_style_from_file(A_ScriptDir '/Style/style1.ini')
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
                ui.igSetNextWindowSize(ImVec2([855, 655]))
                g_is_first_run := false
            }
            if(ui.igBegin(ui.str('xxx##test'), &is_open_main, ImGuiWindowFlags_NoTitleBar 
                | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoScrollWithMouse))
            {
                ui.igSetCursorPos(ImVec2([0, 0]))

                ui.igBeginChild_Str(ui.str('child'), ImVec2([500, 655]),, ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoScrollWithMouse)

                ui.igPushStyleVar_Float(ImGuiStyleVar_FrameRounding, 15)
                ui.igImage(tim, ImVec2([500, 655]),,, ImVec4([ 1, 1, 1, 0.8]))
                ;ui.igImageButton(ui.str('back'), tim, ImVec2([500, 655]))
                ui.igPopStyleVar()

                ui.igEndChild()
                
                /*
                ui.igSameLine()
                if(ui.igButton(ui.str('save style##1'), ImVec2([150, 20])))
                    ui.save_style_to_file(A_ScriptDir '/style/style1.ini')
                ui.igSameLine()
                if(ui.igButton(ui.str('load style##2'), ImVec2([150, 20])))
                    ui.load_style_from_file(A_ScriptDir '/Style/style1.ini')
                */

                ui.igPushStyleColor_Vec4(ImGuiCol_Button, ImVec4([255, 255, 255, 255]))
                ui.igPushStyleColor_Vec4(ImGuiCol_ButtonHovered, ImVec4([255, 255, 255, 255]))
                ui.igPushStyleColor_Vec4(ImGuiCol_ButtonActive, ImVec4([255, 255, 255, 255]))

                ui.igSetCursorPos(ImVec2([745, 15]))
                ui.igImageButton(ui.str('qq_set'), qq_set, ImVec2(qq_set_size))

                ui.igSetCursorPos(ImVec2([800, 18]))
                if(ui.igImageButton(ui.str('qq_close'), qq_close, ImVec2(qq_close_size)))
                    is_open_main := false


                ui.igSetCursorPos(ImVec2([570, 110]))
                ui.igImageButton(ui.str('image'), qq_image, ImVec2([100, 100]))

                ui.igSetCursorPos(ImVec2([670, 110]))
                ui.igImageButton(ui.str('image'), wechat_image, ImVec2([100, 100]))

                ui.igSetCursorPos(ImVec2([765, 350]))
                ui.igImageButton(ui.str('right'), right_image, ImVec2(right_iamge_size))

                ui.igSetCursorPos(ImVec2([770, 300]))
                ui.igImageButton(ui.str('right'), down_image, ImVec2(down_iamge_size))

                ui.igSetCursorPos(ImVec2([790, 400]))
                ui.igImageButton(ui.str('qr'), qr_code, ImVec2(qr_code_size))

                ui.igPopStyleColor(3)


                ui.igPushItemWidth(220)
                ui.igPushStyleColor_Vec4(ImGuiCol_FrameBg, ImVec4([1, 1, 1, 1]))
                ui.igSetCursorPos(ImVec2([550, 300]))
                static user_name := ui.tb('Enter your username')
                ui.igInputText(ui.str('##Username'), user_name, user_name.Size)

                current_window_pos := ImVec2()
                ui.igGetWindowPos(current_window_pos)
                
                static draw_list := ui.igGetWindowDrawList()
                dl := ImDrawList_AHK.from_ptr(draw_list)
                dl.AddLine(ImVec2([current_window_pos.x + 540, current_window_pos.y + 340]), ImVec2([current_window_pos.x + 815, current_window_pos.y + 340]), 0xffe0e0e0e0, 1)

                ui.igSetCursorPos(ImVec2([550, 360]))
                static pass_word := ui.tb('')
                ui.igInputText(ui.str('##password'), pass_word, pass_word.Size, ImGuiInputTextFlags_Password)
                dl.AddLine(ImVec2([current_window_pos.x + 540, current_window_pos.y + 400]), ImVec2([current_window_pos.x + 815, current_window_pos.y + 400]), 0xffe0e0e0e0, 1)

                ui.igPopItemWidth()
                ui.igPopStyleColor()

                ui.igPushStyleColor_Vec4(ImGuiCol_Text, Imgui.color([153, 153, 153, 255]))
                ui.igSetCursorPos(ImVec2([538, 555]))
                static v1 := true
                ui.igCheckbox(ui.str('记住密码'), &v1)
                ui.igSetCursorPos(ImVec2([732, 555]))
                ui.igCheckbox(ui.str('找回账号'), &v1)
                ui.igSetCursorPos(ImVec2([538, 600]))
                ui.igCheckbox(ui.str('自动登录'), &v1)
                ui.igSetCursorPos(ImVec2([732, 600]))
                ui.igCheckbox(ui.str('注册账号'), &v1)
                ui.igPopStyleColor()

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
    
    color[ImGuiCol_FrameBg] := Imgui.color([30, 111, 255, 255])
    color[ImGuiCol_FrameBgHovered] := Imgui.color([83, 145, 255])

    color[ImGuiCol_Border] := ImVec4([0.37, 0.37, 0.37, 0.00])

    color[ImGuiCol_Text] := Imgui.color([0, 0, 0, 255])

    ;color[ImGuiCol_TextDisabled] := Imgui.color([0, 0, 0, 255])

    style.WindowPadding := ImVec2([4, 4])
    style.WindowBorderSize := 0
    style.WindowRounding := 10

    style.FramePadding := ImVec2([8, 6])
    style.FrameRounding := 10
    style.FrameBorderSize := 1
}