#Requires AutoHotkey v2.0
#include <cimgui>
main()
main()
{
    ui := imgui()
    ui.enableviewports(true)
    hwnd := ui.guicreate_unbackground('test',,, 'GetGlyphRangesDefault')
    WinSetAlwaysOnTop(1, hwnd)
    OnExit ExitFunc

    io := ui.igGetIO()
    global g_io := ImGuiIO_AHK.from_ptr(io)
    imgui.ctype_bind_var.Push('g_io')
    g_io.ConfigViewportsNoTaskBarIcon := false

    is_open := true
    is_open_demo := true
    text := 'hi imgui'
    while(ui.peekmsg())
    {
        ui.beginframe()
        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)
        if(is_open)
        {
            ui.igBegin(ui.str('main##main'), &is_open, 0)
            ui.igButton(ui.str('Button##1'), ImVec2([100, 100]))
            ui.igEnd()
        }
        else
        {
            ExitApp
        }
        ui.endframe()
    }
    ExitApp
}

ExitFunc(ExitReason, ExitCode)
{
    global
    for k,v in imgui.ctype_bind_var
    {
        %v% := ''
    }
}