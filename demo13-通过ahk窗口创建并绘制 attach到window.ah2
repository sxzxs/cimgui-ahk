#Requires AutoHotkey v2.0
#include <cimgui>
#Include <User32>
#include <log>
#Include <Kernel32>

main()
main()
{
    global g_is_first_run := true

    ;dpi 忽略
    LoadLibrary('Shcore.dll')
	DllCall('Shcore.dll\SetProcessDpiAwareness', 2)

    ui := Imgui()

    hwnd := create_window(ui, "AHK ImGui", 2560, 1080, 0, 0)
    ;hwnd := ui.gui_create("cimgui", 2560, 1080, 0, 0)

    WinShow(hwnd)
    ;ShowWindow(hwnd, 10)
    ;UpdateWindow(hwnd)

    ui.EnableAlphaCompositing(hwnd) ;透明窗口
    ;置顶,鼠标穿透 分层窗口
    WS_EX_TOPMOST := 0x00000008, WS_EX_LAYERED := 0x00080000, WS_POPUP := 0x80000000, WS_EX_TRANSPARENT := 0x00000020
    logger.info(DllCall('GetWindowLongPtr', 'ptr', hwnd, 'int', -20, 'int64'))
    DllCall("SetWindowLongPtr", "Ptr", hwnd, "Int", -20 ,"Int64", DllCall('GetWindowLongPtr', 'ptr', hwnd, 'int', -20, 'int64') | WS_EX_TRANSPARENT | WS_EX_LAYERED | WS_EX_TOPMOST)
    logger.info(DllCall('GetWindowLongPtr', 'ptr', hwnd, 'int', -20, 'int64'))
    ;SetWindowLong(hwnd, -20, GetWindowLong(hWnd, -20) | WS_EX_LAYERED | WS_EX_TRANSPARENT | WS_EX_TOPMOST)



    ;设置最高优先级，置顶，上面好像没用
    SWP_NOMOVE := 0x0002, SWP_NOSIZE := 0x0001
    SetWindowPos(hwnd, -1, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE)

	;DllCall("MoveWindow","Uptr",hwnd,"int", 100,"int",100,"int",2000,"int",2000,"char",1)

    io := ui.igGetIO()
    ;调用from_ptr的对象，如果在函数退出之前还在堆栈中的，需要声明成global 或者，主动释放
    global g_io := ImGuiIO_AHK.from_ptr(io)

    is_open_demo := false
    is_open_main := true 
    bf := ui.tb('input')
    int4 := ctypes.array('int', 4)()
	tBufferPtr := Buffer(4096,0)
    attachHWND := winexist("网易有道翻译")
    while(ui.peekmsg() && is_open_main)
    {
		if (!DllCall("GetWindowRect","Uptr", attachHWND,"ptr", tBufferPtr)) 
        {
            Sleep(10)
            continue
        }
        ;x := NumGet(tBufferPtr,0,"int")
        ;y := NumGet(tBufferPtr,4,"int")
        ;w := NumGet(tBufferPtr,8,"int")-x
        ;h := NumGet(tBufferPtr,12,"int")-y

        WinGetClientPos &x, &y, &w, &h, attachHWND ; Use the window found by WinExist.
        logger.info(x, y, w, h)


		DllCall("MoveWindow","Uptr",hwnd,"int",x,"int",y,"int",w,"int",h,"char",1)

        ui.beginframe()


        ptr := ui.igGetForegroundDrawList_Nil()
        draw_list := ImDrawList_AHK.from_ptr(ptr)
        draw_list.AddLine(ImVec2([500, 0]), ImVec2([500, 1000]), 0xcccccccc)
        ;draw_list.AddLine(ImVec2([0, 0]), ImVec2([1000, 1000]), 0xcccccccc)


        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)

        if(is_open_main)
        {
            if(g_is_first_run)
            {
                ;ui.igSetNextWindowPos(ImVec2([100, 100]))
                g_is_first_run := false
            }
            main_view_port := ui.igGetMainViewport()
            g_main_view_port := ImGuiViewport.from_ptr(main_view_port)
            ui.igSetNextWindowPos(ImVec2([g_main_view_port.WorkPos.x, g_main_view_port.WorkPos.y]))
            ui.igSetNextWindowSize(ImVec2([g_main_view_port.WorkSize.x, g_main_view_port.WorkSize.y]))
            if(ui.igBegin(ui.str('xxx##test'), &is_open_main, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize))
            {
                ui.igSetWindowSize_Vec2(ImVector_ImVec2([0, 0]), ImGuiCond_Once)
                ptr := ui.igGetForegroundDrawList_Nil()
                ptr := ui.igGetBackgroundDrawList_Nil()
                draw_list := ImDrawList_AHK.from_ptr(ptr)
                logger.info(x, y)
                draw_list.AddLine(ImVec2([x, y]), ImVec2([x + 500, y + 500]), 0xff0000ff, 2)
                draw_list.AddCircle(ImVec2([x + 500, y + 500]), 100, 0xffff0000,, 2) ;abgr
                draw_list.AddRect(ImVec2([x + 600, y + 600]), ImVec2([x + 800, y + 800]), 0xffff0000,,, 2)
            }
            ui.igEnd()

            noAutoMerge_class := ImGuiWindowClass()
            noAutoMerge_class.ViewportFlagsOverrideSet := ImGuiViewportFlags_NoAutoMerge
            ui.igSetNextWindowClass(noAutoMerge_class.ptr)
            ui.igSetNextWindowPos(ImVec2([x, y]))
            if(ui.igBegin(ui.str('控制窗口##test2'), &is_open_main))
            {
                ;ui.igSetWindowSize_Vec2(ImVector_ImVec2([500, 500]), ImGuiCond_Once)
                if(ui.igButton(ui.str('显示绘制##2'), ImVec2([100, 100])))
                    WinShow(hwnd)
                if(ui.igButton(ui.str('隐藏绘制##2'), ImVec2([100, 100])))
                    WinHide(hwnd)
                ui.igInputText(ui.str('input##3'), bf, bf.Size)
                ui.igInputInt4(ui.str('int##int'), int4)
                static active := 0
                ui.toggle_button('tootle', &active)
            }
            ui.igEnd()
            try
            {
                WinSetAlwaysOnTop(true, "控制窗口")
                WinSetAlwaysOnTop(true, hwnd)
            }
        }
        ui.endframe(0x0)
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
    WS_EX_TRANSPARENT := 0x00000020
    ui.hwnd := hwnd := ui.CreateWindowEx(0, class_name, 'cimgui-ahk', WS_POPUP, x, y, w, h, 0, 0, GetModuleHandle(0), 0)

    /*
    margins := Buffer(16,0)
    NumPut("int",-1,margins,0), NumPut("int",-1,margins,4), NumPut("int",-1,margins,8), NumPut("int",-1,margins,12)
    ext := DllCall("dwmapi\DwmExtendFrameIntoClientArea","Uptr",hwnd,"ptr",margins,"uint")
    if (ext != 0) 
    {
        ui.Err("Problem with DwmExtendFrameIntoClientArea","overlay will not function`n`nReloading the script usually fixes ui`n`nError: " DllCall("GetLastError","uint") " / " ext)
        return
    }
    DllCall("SetLayeredWindowAttributes","Uptr",hwnd,"Uint",0,"char",255,"uint",2)
    */

    if(!ui.CreateDeviceD3D(hwnd))
    {
        ui.CleanupDeviceD3D()
        ui.UnregisterClass(class_name, NumGet(cls.cls, 24, 'ptr'))
        return 0
    }

    ;ShowWindow(hwnd, 10)
    ;UpdateWindow(hwnd)

    ui.igCreateContext()
    io := ImGuiIO.from_ptr(ui.igGetIO())
    io.ConfigFlags |= ImGuiConfigFlags_ViewportsEnable 
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable 
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard 
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad 
    ;io.ConfigFlags |= ImGuiConfigFlags_DpiEnableScaleViewports

    ;io.ConfigViewportsNoAutoMerge := true
    ;io.ConfigViewportsNoTaskBarIcon := false
    ;io.ConfigDockingTransparentPayload := true

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
