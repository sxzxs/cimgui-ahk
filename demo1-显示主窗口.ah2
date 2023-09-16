#Requires AutoHotkey v2.0
#include <cimgui>

main()
main()
{
    ;Register exited functions, Variables that need to be cleared for ctypes binding
    OnExit ExitFunc
    ui := Imgui()
    ui.enableviewports(false)
    hwnd := ui.gui_create("AHK ImGui", 500, 500, 0, 0, 0, 0,,, 'GetGlyphRangesDefault')
    WinShow(hwnd)

    io := ui.igGetIO()
    global g_io := ImGuiIO_AHK.from_ptr(io)
    imgui.ctype_bind_var.Push('g_io')

    is_open_demo := true
    is_open_main := true 
    bf := ui.tb('input')
    while(ui.peekmsg())
    {
        ui.beginframe()

        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)

        if(is_open_main)
        {
            ui.igBegin(ui.str('xxx'), &is_open_main)
            if(ui.igButton(ui.str('button'), ImVec2([100, 100])))
            {
                MsgBox('button')
            }
            ui.igInputText(ui.str('input'), bf, bf.Size)
            ui.igEnd()
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