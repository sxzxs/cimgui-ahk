#Requires AutoHotkey v2.0
#include <cimgui>

main()
main()
{
    ui := Imgui()
    ui.enableviewports(true)
    hwnd := create_window(ui, "AHK ImGui", 500, 500, 0, 0)
    WinShow(hwnd)

    io := ui.igGetIO()
    ;调用from_ptr的对象，如果在函数退出之前还在堆栈中的，需要声明成global 或者，主动释放
    global g_io := ImGuiIO_AHK.from_ptr(io)

    is_open_demo := true
    is_open_main := true 
    bf := ui.tb('input')
    int4 := ctypes.array('int', 4)()

    while(ui.peekmsg() && is_open_main)
    {
        ui.beginframe()

        main_view_port := ui.igGetMainViewport()
        g_main_view_port := ImGuiViewport.from_ptr(main_view_port)

        bc_list := ui.igGetBackgroundDrawList_Nil()
        ;从 from_ptr获取的对象，在主函数一定要设置成global
        global bc_list := ImDrawList_AHK.from_ptr(bc_list)
        bc_list.AddRectFilled(ImVec2([0, 0]), ImVec2([g_main_view_port.WorkSize.x, g_main_view_port.WorkSize.y]), 0xcccccccc, 10)
        bc_list.AddRect(ImVec2([0, 0]), ImVec2([g_main_view_port.WorkSize.x, g_main_view_port.WorkSize.y]), 0xff000000,10,,5)

        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)

        if(is_open_main)
        {
            ui.igSetNextWindowPos(ImVec2([0, 0]))
            if(ui.igBegin(ui.str('xxx##test'), &is_open_main))
            {
                if(ui.igButton(ui.str('button##2'), ImVec2([100, 100])))
                {
                    MsgBox(bf.Text int4[0] int4[1] int4[2] int4[3])
                }
                ui.igInputText(ui.str('input##3'), bf, bf.Size)
                ui.igInputInt4(ui.str('int##int'), int4)
                static active := 0
                ui.toggle_button('tootle', &active)
            }
            ui.igEnd()
        }
        ui.endframe(0x00cccccc)
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
    ;io.ConfigFlags |= ImGuiConfigFlags_ViewportsEnable 
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable 

    io.ConfigViewportsNoTaskBarIcon := true
    io.ConfigDockingTransparentPayload := true

    ;Load font
    fontAtlas := ImFontAtlas_AHK.from_ptr(io.Fonts.ptr)
    fontAtlas.ClearFonts()
    ;GetGlyphRangesDefault
    ;GetGlyphRangesChineseFull
    glyphRange := fontAtlas.GetGlyphRangesDefault()

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

                    x := NumGet(pt, 0, 'int')
                    y := NumGet(pt, 4, 'int')

                    hit := DllCall("DefWindowProcW", "ptr", hwnd, "uint", msg, "ptr", wp, "ptr", lp, "ptr")
                    if(hit == 1) ;HTCLIENT
                    {
                        io := ImGuiIO.from_ptr(DllCall(Cimgui_dll.igGetIO, 'ptr'))
                        if ((io.WantCaptureMouse && y > 25) || (io.WantCaptureMouse && x < 25))
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
