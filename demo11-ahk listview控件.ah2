#Requires AutoHotkey v2.0
#include <cimgui>

main()
main()
{
    ui := Imgui()
    ui.enableviewports(true)
    hwnd := create_window_hase_title(ui, "AHK ImGui", 500, 500, 0, 0)
    ui.change_window_icon(A_ScriptDir "\images\main.ico")
    ui.SetDarkMode()
    ui.SetDarkTitle()
    ui.show()

    io := ui.igGetIO()
    ;调用from_ptr的对象，如果在函数退出之前还在堆栈中的，需要声明成global 或者，主动释放
    global g_io := ImGuiIO_AHK.from_ptr(io)

    is_open_demo := true
    is_open_main := true 
    bf := ui.tb('input')
    int4 := ctypes.array('int', 4)()
    while(ui.peekmsg())
    {
        ui.beginframe()
        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)

        if(is_open_main)
        {
            if(ui.igBegin(ui.str('IMGUi##test'), &is_open_main))
            {
                static flags := ImGuiTableFlags_Resizable | ImGuiTableFlags_Borders | ImGuiTableFlags_ContextMenuInBody | ImGuiTableFlags_Reorderable | ImGuiTableFlags_RowBg | ImGuiTableFlags_Sortable | ImGuiTableFlags_SortMulti
                if(ui.igBeginTable(ui.str('tab1'), 3, flags))
                {
                    ;Set header
                    ui.igTableSetupColumn(ui.str('one'))
                    ui.igTableSetupColumn(ui.str('two'))
                    ui.igTableSetupColumn(ui.str('tree'))
                    ui.igTableHeadersRow()

                    static table_datas := 
                    [
                        [11, 12, 53, 14],
                        [21, 22, 23, 24],
                        [31, 32, 103, 44],
                        [41, 42, 13, 44],
                    ]
                    ;Sort
                    global spec := ui.igTableGetSortSpecs()
                    spec := ImGuiTableSortSpecs.from_ptr(spec)
                    if(spec.SpecsDirty)
                    {
                        ;logger.info(spec.SpecsCount)
                        ;logger.info(spec.Specs[0].ColumnIndex)
                        ;logger.info(spec.Specs[0].SortOrder)
                        ;logger.info(spec.Specs[0].SortDirection)

                        id := spec.Specs[0].ColumnIndex + 1
                        direction := spec.Specs[0].SortDirection

                        ;Sort
                        size := table_datas.Length
                        loop(size - 1)
                        {
                            i := A_Index
                            loop(size - i)
                            {
                                j := A_Index
                                if(direction == 2)
                                {
                                    if(table_datas[j][id] < table_datas[j + 1][id])
                                    {
                                        tmp := table_datas[j + 1]
                                        table_datas[j + 1] := table_datas[j]
                                        table_datas[j] := tmp
                                    }
                                }
                                else
                                {
                                    if(table_datas[j][id] > table_datas[j + 1][id])
                                    {
                                        tmp := table_datas[j + 1]
                                        table_datas[j + 1] := table_datas[j]
                                        table_datas[j] := tmp
                                    }

                                }
                            }
                        }
                        spec.SpecsDirty := false
                    }

                    loop(4)
                    {
                        row := A_Index
                        ui.igTableNextRow()
                        loop(3)
                        {
                            colum := A_Index
                            ui.igTableSetColumnIndex(colum - 1)
                            {
                                ui.igTextUnformatted(ui.str(table_datas[row][colum]))
                            }
                        }
                    }
                    ui.igEndTable()
                }
            }
            ui.igEnd()
        }
        ui.endframe()
    }
    ui.shutdown_ahk()
    ExitApp
}




;创建一个带有标题栏的窗口
create_window_hase_title(ui, title, w, h, x := 0, y := 0)
{
    class_name := 'cimgui-ahk'
    ui.class_name := class_name
    ui.proc := CallbackCreate(WndProc)
    CS_DROPSHADOW := 0x00020000
    CS_CLASSDC := 0x0040
    ui.cls := cls := ui.WindowClass(ui.proc, class_name, CS_DROPSHADOW)

    WS_EX_TOPMOST := 0x00000008, WS_EX_LAYERED := 0x00080000, WS_POPUP := 0x80000000
    WS_OVERLAPPED := 0x00000000, WS_CAPTION := 0x00C00000, WS_SYSMENU := 0x00080000, WS_THICKFRAME := 0x00040000, WS_MINIMIZEBOX := 0x00020000, WS_MAXIMIZEBOX := 0x00010000
    WS_OVERLAPPEDWINDOW := WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX
    ui.hwnd := hwnd := ui.CreateWindowEx(WS_EX_TOPMOST, class_name, 'cimgui', WS_OVERLAPPEDWINDOW, x, y, w, h, 0, 0, 0, 0)

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
    glyphRange := fontAtlas.GetGlyphRangesDefault()

    config_words_ptr := ImFontConfig_AHK.ImFontConfig()
    ;xx := ImFontConfig_AHK.ImFontConfig()
    config_words := ImFontConfig_AHK.from_ptr(config_words_ptr)
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
        Critical
        if(g_is_running)
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