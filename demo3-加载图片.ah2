#Requires AutoHotkey v2.0
#include <cimgui>
main()
main()
{
    ui := imgui()
    ui.enableviewports(true)
    hwnd := ui.guicreate_unbackground('test',,, 'GetGlyphRangesDefault')
    WinSetAlwaysOnTop(1, hwnd)

    image := ui.imageFromFile(A_ScriptDir '\images\long.png')
    size := ui.ImageGetSize(image)

    ;使用这个方法，需要手动释放
    ui.LoadTextureFromFile(A_ScriptDir '\images\long.png', &out_srv := 0, &out_width := 0, &out_height := 0)

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
            if(ui.igButton(ui.str('Button'), ImVec2([100, 100])))
            {
                MsgBox('ok')
            }
            ui.igImageButton(ui.str('imageButton1'), image, ImVec2(size))
            ui.igImageButton(ui.str('imageButton2'), out_srv, ImVec2(size))
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