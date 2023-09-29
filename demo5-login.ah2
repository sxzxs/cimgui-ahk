#Requires AutoHotkey v2.0
#include <cimgui>

main()
main()
{
    ui := Imgui()
    ui.enableviewports(true)
    hwnd := ui.guicreate_unbackground('test',, 12, 'GetGlyphRangesDefault')
    WinSetAlwaysOnTop(1, hwnd)

    io := ui.igGetIO()
    global g_io := ImGuiIO.from_ptr(io)
    load_styles(ui)

    is_open_demo := false
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
            if(!IsSet(is_once))
                ui.igSetNextWindowPos(ImVec2([200, 200])), is_once := true
            ui.igSetNextWindowSize(ImVec2([740, 460]))
            if(ui.igBegin(ui.str('loader'), &is_open_main, ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoCollapse | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoTitleBar))
            {
                ui.igSetCursorPos(ImVec2([726, 5]))
                ui.igTextDisabled(ui.str('X'))
                if(ui.igIsItemClicked())
                    exitapp

                ui.igPushStyleColor_Vec4(ImGuiCol_ChildBg, ImVec4([0.054, 0.054, 0.054, 1]))
                ui.igPushStyleColor_Vec4(ImGuiCol_Border, ImVec4([0.082, 0.078, 0.078, 1]))
                ui.igPushStyleVar_Float(ImGuiStyleVar_ChildRounding, 3)
                {
                    ui.igSetCursorPos(ImVec2([222, 83]))
                    ui.igBeginChild_Str(ui.str('##MainPanel'), ImVec2([300, 276]), true)
                    {
                        ui.igSetCursorPos(ImVec2([118, 20]))
                        ui.igTextDisabled(ui.str('Welcome Back'))

                        ui.igSetCursorPos(ImVec2([97, 35]))
                        ui.igText(ui.str("Log into your account"))

                        ui.igPushItemWidth(260)
                        {
                            ui.igSetCursorPos(ImVec2([22, 79]))
                            ui.igTextDisabled(ui.str('Username'))

                            ui.igSetCursorPos(ImVec2([20, 95]))
                            static user_name := ui.tb('Enter your username')
                            ui.igInputText(ui.str('##Username'), user_name, user_name.Size)
                        }
                        ui.igPopItemWidth()

                        ui.igPushItemWidth(260)
                        {
                            ui.igSetCursorPos(ImVec2([22, 130]))
                            ui.igTextDisabled(ui.str('Password'))

                            ui.igSetCursorPos(ImVec2([188, 130]))
                            ui.igTextDisabled(ui.str('Forgot password?'))

                            ui.igSetCursorPos(ImVec2([20, 146]))
                            static pass_word := ui.tb('Enter your passworld')
                            ui.igInputText(ui.str('##Passowrd'), pass_word, pass_word.Size)
                        }
                        ui.igPopItemWidth()

                        ui.igSetCursorPos(ImVec2([22, 190]))
                        ui.igPushStyleVar_Float(ImGuiStyleVar_FrameRounding, 3)
                        if(ui.igButton(ui.str('Login'), ImVec2([260, 30])))
                        {
                        }
                        ui.igPopStyleVar()
                        ui.igSetCursorPos(ImVec2([22, 240]))
                        ui.igTextDisabled(ui.str('Don`'t have an account? Sign up!'))
                    }
                    ui.igEndChild()
                }
                ui.igPopStyleColor(2)
                ui.igPopStyleVar(1)
            }
            ui.igEnd()
        }
        ui.endframe()
    }
    ui.ShutDown()
    ExitApp
}

load_styles(ui)
{
    style := ui.igGetStyle()
    style := ImGuiStyle.from_ptr(style)
    color := style.Colors
    color[ImGuiCol_WindowBg] := ImVec4([0.06, 0.06, 0.06, 1.00]) ;rgba

    color[ImGuiCol_FrameBg] := imgui.color([11, 11, 11, 255])
    color[ImGuiCol_FrameBgHovered] := imgui.color([11, 11, 11, 255])

    color[ImGuiCol_Button] := imgui.color([255, 0, 46, 200])
    color[ImGuiCol_FrameBgHovered] := imgui.color([255, 0, 46, 255])
    color[ImGuiCol_FrameBgHovered] := imgui.color([255, 0, 46, 255])
    
    color[ImGuiCol_FrameBgHovered] := ImVec4([0.37, 0.37, 0.37, 1.00])

    style.WindowPadding := ImVec2([4, 4])
    style.WindowBorderSize := 0

    style.FramePadding := ImVec2([8, 6])
    style.FrameRounding := 3
    style.FrameBorderSize := 1
}