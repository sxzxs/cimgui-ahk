#Requires AutoHotkey v2.0
#include <cimgui>

main()
main()
{
    menu := Ui_menu()

    while(menu.ui.peekmsg())
    {
        menu.ui.beginframe()
        menu.render()
        menu.ui.endframe()
    }
    menu := ''
    ExitApp
}

class Ui_menu
{
    __New()
    {
        ui := this.ui := Imgui()
        ui.enableviewports(false)
        hwnd := ui.gui_create("AHK ImGui", 500, 500, 0, 0, 0, 0,, 18, 'GetGlyphRangesDefault')
        ui.change_window_icon(hwnd, A_ScriptDir "\image\main.ico")
        WinShow(hwnd)
        io := ui.igGetIO()

        this.selectedTab := 1

        ;调用from_ptr的对象，如果在函数退出之前还在堆栈中的，需要声明成global 或者，主动释放
        global g_io := ImGuiIO_AHK.from_ptr(io)
        this.item_color := Map(
            'winCol', imgui.color([0, 0, 0, 230]),
            'bgCol', imgui.color([31, 30, 31, 255]),
            'childCol', imgui.color([33, 34, 45, 255]),
            'childCol1', imgui.color([38, 39, 50, 255]),
            'notSelectedTextColor', imgui.color([140, 140, 140, 255]),
            'textCol', imgui.color([255, 255, 255, 255]),
            'btnActiveCol', imgui.color([239, 73, 88, 255]),
            'btnHoverCol', imgui.color([173, 55, 65, 255]),
            'frameCol', imgui.color([44, 43, 44, 255]),
            'hoverCol', imgui.color([37, 36, 37, 255]),
            'itemCol', imgui.color([240, 74, 88, 255]),
            'itemActiveCol', imgui.color([240, 50, 66, 255]),
            'resizeGripCol', imgui.color([220, 50, 66, 120]),
            'resizeGripHoverCol', imgui.color([250, 50, 66, 140]))
        this.load_theme()
        this.load_font()
        this.help := Imgui_helper(ui)
        this.style := ImGuiStyle.from_ptr(ui.igGetStyle())
    }
    __Delete()
    {
        this.style := ''
    }
    load_font()
    {
        this.big_font := this.ui.load_font(, 25, 'GetGlyphRangesDefault',, 3, 3)
    }
    render()
    {
        static is_open_demo := true
        ui := this.ui
        if(is_open_demo)
            ui.igShowDemoWindow(&is_open_demo)

        static is_open := 0
        ;ui.igSetNextWindowSize(ImVec2([800, 600]))

        main_view_port := ui.igGetMainViewport()
        g_main_view_port := ImGuiViewport.from_ptr(main_view_port)
        ui.igSetNextWindowPos(ImVec2([g_main_view_port.WorkPos.x, g_main_view_port.WorkPos.y]))
        ui.igSetNextWindowSize(ImVec2([g_main_view_port.WorkSize.x, g_main_view_port.WorkSize.y]))


        if(ui.igBegin(ui.str('MAIn'), &is_open, ImGuiWindowFlags_HorizontalScrollbar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoCollapse | ImGuiWindowFlags_NoTitleBar))
        {
            ui.igColumns(2)
            ui.igSetColumnOffset(1, 173)
            this.render_panel()
            {
                ui.igNextColumn()
                switch this.selectedTab
                {
                    case 1:
                        this.renderSubTab1()
                    default:
                }

            }
        }
        ui.igEnd()
    }
    renderSubTab1()
    {
        ui := this.ui
        static arr := ['AimAssist', 'TriggerBot', 'Other']
        static selectedSubTab1 := 1
        this.help.draw_Tab_Horizontally('subtab-1',  ImVec2([this.help.Get_Width(), 50]), arr, &selectedSubTab1)
        ui.igSpacing()

	    ui.igPushStyleColor_Vec4(ImGuiCol_ChildBg, ImVec4([0, 0, 0, 0]))
        this.ui.igGetContentRegionAvail(v2 := ImVec2())
	    ui.igBeginChild_Str(ui.str("modules-wrapper"), ImVec2([v2.x, v2.y]), false)
	    ui.igPopStyleColor()

        switch selectedSubTab1
        {
            case 1:
            {
		        ui.igColumns(2, 0, false)
		        ui.igSetColumnOffset(1, 300)
                ui.igBeginChild_Str(ui.str("aimassist"), ImVec2([this.help.Get_Width(), 300]), true)

                ui.igButton(ui.str('button'), ImVec2([100, 100]))
                ui.toggle_button('toggle', &is_active := 1)

                ui.igEndChild()

                ui.igSpacing()
                ui.igBeginChild_Str(ui.str("aimassist2"), ImVec2([this.help.Get_Width(), this.help.get_height()]), true)
                ui.igEndChild()

                ui.igNextColumn()

                ui.igBeginChild_Str(ui.str("aimassist3"), ImVec2([this.help.Get_Width(), this.help.get_height()]), true)
                ui.igEndChild()
            }
            default:
        }


        ui.igEndChild()
        
    }
    render_panel()
    {
        this.render_logo()
        this.ui.igSpacing()
        this.render_tabs()
        this.render_user()
    }
    render_logo()
    {
        ui := this.ui
        ui.igBeginGroup()
        {
            ui.igBeginChild_Str(ui.str('LOGO'), ImVec2([158, 50]), true)
            ui.igSetCursorPosY(11)
            ui.igPushStyleColor_Vec4(ImGuiCol_Text, this.item_color['btnActiveCol'])
            ui.igPushFont(this.big_font)
            ui.igTextUnformatted(ui.str(' Big Paste'))
            ui.igPopFont()
            ui.igPopStyleColor()
            ui.igEndChild()
        }
        ui.igEndGroup()
    }
    render_tabs()
    {
        ui := this.ui
        style := ui.igGetStyle()
        style := ImGuiStyle.from_ptr(style)
        ui.igBeginChild_Str(ui.str('tabs'), ImVec2([158, 220]), true)

        
        static bf := ui.tb('input')
        ui.igSetNextItemWidth(140)
        ui.igInputText(ui.str('##input'), bf, bf.Size)

        ui.igSpacing()

        static col := ImVec4([0, 0, 0, 0])
        ui.igPushStyleVar_Float(ImGuiStyleVar_FrameRounding, 10)
        static tab_names := [chr(0xf130) ' LegitBot', chr(0xf140) ' Visuals', chr(0xf150) ' Misc', chr(0xf160) ' Configs']
        loop(tab_names.Length)
        {
            name := tab_names[A_Index]
            ui.igPushStyleVar_Vec2(ImGuiStyleVar_ButtonTextAlign, ImVec2([0, 0.5]))
            ui.igPushStyleColor_Vec4(ImGuiCol_Button, this.selectedTab == A_Index ? style.Colors[ImGuiCol_ButtonActive] : col)
            ui.igPushStyleColor_Vec4(ImGuiCol_Text, this.selectedTab == A_Index ? style.Colors[ImGuiCol_Text] : this.item_color['notSelectedTextColor'])
		    if (ui.igButton(ui.str(name), ImVec2([140, 40]))) 
                this.selectedTab := A_Index

            ui.igPopStyleVar()
            ui.igPopStyleColor(2)
        }
        ui.igPopStyleVar()

        ui.igEndChild()
    }
    render_user()
    {
        height := 80
        this.ui.igGetContentRegionAvail(v2 := ImVec2())
	    this.ui.igDummy(ImVec2([0.0, v2.y - height - this.style.ItemSpacing.y]))
	    this.ui.igBeginChild_Str(this.ui.str('User'), ImVec2([158, height]), true)
	    this.ui.igEndChild()
    }
    load_theme()
    {
        ui := this.ui
        style := ui.igGetStyle()
        style := ImGuiStyle.from_ptr(style)
        style.WindowRounding := 6
        style.ChildRounding := 6
        style.FrameRounding := 2
        style.GrabRounding := 2
        style.PopupRounding := 2 ; Combobox

        style.ScrollbarSize := 9
        style.FramePadding := ImVec2([6, 3])
        style.ItemSpacing := ImVec2([4, 4])
        this.set_color()
    }
    set_color()
    {
        style := this.ui.igGetStyle()
        style := ImGuiStyle.from_ptr(style)
        color := this.item_color
        style.Colors[ImGuiCol_WindowBg] := color['winCol']
        style.Colors[ImGuiCol_Border] := ImVec4([0, 0, 0, 0])
        style.Colors[ImGuiCol_Button] := color['bgCol']
        style.Colors[ImGuiCol_ButtonActive] := color['btnActiveCol']
        style.Colors[ImGuiCol_ButtonHovered] := color['btnHoverCol']
        style.Colors[ImGuiCol_FrameBg] := color['bgCol']
        style.Colors[ImGuiCol_FrameBgActive] := color['frameCol']
        style.Colors[ImGuiCol_FrameBgHovered] := color['hoverCol']
        style.Colors[ImGuiCol_Text] := color['textCol']
        style.Colors[ImGuiCol_ChildBg] := color['childCol']
        style.Colors[ImGuiCol_CheckMark] := color['itemActiveCol']
        style.Colors[ImGuiCol_SliderGrab] := color['itemCol']
        style.Colors[ImGuiCol_SliderGrabActive] := color['itemActiveCol']
        style.Colors[ImGuiCol_Header] := color['itemActiveCol']
        style.Colors[ImGuiCol_HeaderHovered] := color['itemCol']
        style.Colors[ImGuiCol_HeaderActive] := color['itemActiveCol']
        style.Colors[ImGuiCol_ResizeGrip] := color['resizeGripCol']
        style.Colors[ImGuiCol_ResizeGripHovered] := color['resizeGripHoverCol']
        style.Colors[ImGuiCol_ResizeGripActive] := color['itemActiveCol']
        style.Colors[ImGuiCol_SeparatorHovered] := color['resizeGripHoverCol']
        style.Colors[ImGuiCol_SeparatorActive] := color['itemActiveCol']
        style.Colors[ImGuiCol_TitleBgActive] := color['itemActiveCol']
    }
}

class Imgui_helper
{
    __New(ui)
    {
        this.ui := ui
    }
    get_width()
    {
        this.ui.igGetContentRegionAvail(v2 := ImVec2())
        return v2.x
    }
    get_height()
    {
        this.ui.igGetContentRegionAvail(v2 := ImVec2())
        return v2.y
    }
    min(a, b)
    {
        if(a < b)
            return a
        else
            return b
    }
    max(a, b)
    {
        if(a > b)
            return a
        else
            return b
    }
    clamp(n, min, max)
    {
        a := max
        if(n < max)
            a := n
        if(min > a)
            return min
        else
            return a
    }
    draw_Tab_Horizontally(child_Name, child_Size, tab_Names, &selected_SubTab)
    {
        ui := this.ui
        min_str_length := 99999
        min_str_index := 1
        loop(tab_Names.Length)
        {
            if(StrLen(tab_Names[A_Index]) < min_str_length)
            {
                min_str_index := A_Index
                min_str_length := StrLen(tab_Names[A_Index])
            }
        }

        ui.igBeginChild_Str(ui.str('sub tab'), child_Size, true, ImGuiWindowFlags_HorizontalScrollbar)

        size := ImVec2()
        ui.igCalcTextSize(size, ui.str(tab_Names[min_str_index]))

        min_width := size.x
        max_width := 200

        style := ImGuiStyle.from_ptr(ui.igGetStyle())

	    btnWidth := (this.get_Width() - style.ItemSpacing.x * (tab_Names.Length)) / tab_Names.Length
	    btnHeight := this.clamp(this.get_height(), 20, 60)
	    btnWidth := this.max(min_width, this.min(btnWidth, max_width))

        ui.igSetCursorPosX((child_Size.x - btnWidth * tab_Names.Length - style.ItemSpacing.x) / 2)

        ui.igPushStyleVar_Float(ImGuiStyleVar_FrameRounding, 5)
        loop(tab_Names.Length)
        {
            ui.igPushStyleColor_Vec4(ImGuiCol_Button, selected_SubTab == A_Index ? style.Colors[ImGuiCol_ButtonActive] : style.Colors[ImGuiCol_Button])
            ui.igPushStyleColor_Vec4(ImGuiCol_Text, selected_SubTab == A_Index ? style.Colors[ImGuiCol_Text] : imgui.color([140, 140, 140, 255]))

		    if (ui.igButton(ui.str(tab_Names[A_Index]), ImVec2([btnWidth, btnHeight]))) 
                selected_SubTab := A_Index

            ui.igSameLine()
            ui.igPopStyleColor(2)
        }
        ui.igPopStyleVar()
        ui.igEndChild()
    }
}