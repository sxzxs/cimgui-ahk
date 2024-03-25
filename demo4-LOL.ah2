#Requires AutoHotkey v2.0
#include <cimgui>

main()
main()
{
    ui := Imgui()
    ui.enableviewports(false)
    ui.load_font_range(A_ScriptDir '/font/ImguiText.txt', &range_array := [], &length := 0, &raw_data)
    hwnd := ui.gui_create("AHK ImGui", 500, 500, 0, 0, 0, 0,,,, raw_data)
    change_window_icon(hwnd, A_ScriptDir "\images\main.ico")
    WinShow(hwnd)

    io := ui.igGetIO()
    global g_io := ImGuiIO_AHK.from_ptr(io) ;ctypes from_ptr 对象，需要主动释放

    is_open_demo := false
    is_open_main := true 
    while(ui.peekmsg())
    {
        ui.beginframe()
        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)

        if(is_open_main)
        {
            main_view_port := ui.igGetMainViewport()
            global g_main_view_port := ImGuiViewport.from_ptr(main_view_port)
            ui.igSetNextWindowPos(ImVec2([g_main_view_port.WorkPos.x, g_main_view_port.WorkPos.y]))
            ui.igSetNextWindowSize(ImVec2([g_main_view_port.WorkSize.x, g_main_view_port.WorkSize.y]))
            static flags := ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoSavedSettings
            static mode := '大乱斗'

            if(ui.igBegin(ui.str('main'), &is_open_main, flags))
            {
                if(ui.igBeginMenu(ui.str('main_menu')))
                {
                    static is_selected := true
                    ui.igMenuItem_BoolPtr(ui.str('selected'), 0, &is_selected)
                    static tb := ui.tb()
                    ui.igInputText(ui.str('inputtext'), tb, tb.size)
                    ui.igEndMenu()
                }
                static v := 1
                ui.igRadioButton_IntPtr(ui.str('大乱斗'), &v, 1), ui.igSameLine()
                ui.igRadioButton_IntPtr(ui.str('云顶匹配'), &v, 2), ui.igSameLine()
                ui.igRadioButton_IntPtr(ui.str('云顶排位'), &v, 3)

                static is_open := true
                ui.igCheckbox(ui.str('是否开启'), &is_open)
                static is_create_room := true
                ui.igCheckbox(ui.str('是否创建房间'), &is_create_room)
                static is_receive := true
                ui.igCheckbox(ui.str('是否接受对局'), &is_receive)
                static is_next_game := true
                ui.igCheckbox(ui.str('是否自动下一局'), &is_next_game)
            }
            ui.igEnd()
        }
        ui.endframe()
    }
    ui.ShutDown()
    ExitApp
}

change_window_icon(hwnd, ico_path)
{
    hIcon := DllCall( "LoadImage", 'UInt',0, 'Str', ico_path, 'uint',1, 'UInt',0, 'UInt',0, 'UInt',0x10 )
    SendMessage(0x80, 0, hIcon,, hwnd)
    SendMessage(0x80, 1, hIcon,, hwnd)
}