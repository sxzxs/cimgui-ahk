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
    int4 := ctypes.array('int', 4)()
    while(ui.peekmsg())
    {
        ui.beginframe()
        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)

        if(is_open_main)
        {
            if(ui.igBegin(ui.str('xxx##test'), &is_open_main))
            {
                if(ui.igButton(ui.str('button##2'), ImVec2([100, 100])))
                {
                    MsgBox(bf.Text int4[0] int4[1] int4[2] int4[3])
                }
                ui.igInputText(ui.str('input##3'), bf, bf.Size)
                ui.igInputInt4(ui.str('int##int'), int4)
            }
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