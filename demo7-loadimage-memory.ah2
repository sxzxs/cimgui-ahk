#Requires AutoHotkey v2.0
#include <wincapture>
#include <cimgui>
#DllLoad %A_ScriptDir%\libwebp.dll

wincapture.init()

pic := A_ScriptDir '\images\test.webp'
data := FileRead(pic, "RAW")
pBits := DllCall("libwebp\WebPDecodeBGRA", "uptr", data.ptr, "Int", data.size, "IntP", &pw := 0, "intP", &ph := 0, "Cdecl ptr")
bf := BitmapBuffer(pBits, ((pw * 32 + 31) & ~31) >> 3, pw, ph)
bf.show()
BMP := bf.BMP()

main()
main()
{
    ui := imgui()
    ui.enableviewports(true)
    hwnd := ui.guicreate_unbackground('test',,, 'GetGlyphRangesDefault')
    WinSetAlwaysOnTop(1, hwnd)

    ;使用这个方法，需要手动释放
    ui.LoadTextureFromMemory(BMP, BMP.size, &out_srv := 0, &out_width := 0, &out_height := 0)
    size := ui.ImageGetSize(out_srv)

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