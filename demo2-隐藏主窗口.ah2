#Requires AutoHotkey v2.0
#include <cimgui>
main()
main()
{
    ui := imgui()
    ui.enableviewports(true)
    hwnd := ui.guicreate_unbackground('test',,, 'GetGlyphRangesDefault')
    WinSetAlwaysOnTop(1, hwnd)

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
            ui.igBegin(ui.str('main'), &is_open, 0)
            ui.igButton(ui.str('Button'), ImVec2([100, 100]))
            ui.igEnd()
        }
        ui.endframe()
    }
    ExitApp
}