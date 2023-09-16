#Requires AutoHotkey v2.0
#include <cimgui>
main()
main()
{
    ui := imgui()
    ui.enableviewports(true)
    hwnd := ui.guicreate_unbackground('test',,, 'GetGlyphRangesDefault')
    WinSetAlwaysOnTop(1, hwnd)

    image := ui.imageFromFile("E:\我的AHK程序\cherry-snippet-v2\icons\索隆.jpg")
    size := ui.ImageGetSize(image)

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
            ui.igImageButton(ui.str('imageButton'), image, ImVec2(size))
            ui.igEnd()
        }
        ui.endframe()
    }
    ExitApp
}