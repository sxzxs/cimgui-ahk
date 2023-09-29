class Cimgui_AHK
{
	ImColor_HSV(pOut, h, s, v, a := 1.0)
	{
		;void ImColor_HSV(ImColor *pOut, float h, float s, float v, float a)
	    dll_rtn := DllCall(Cimgui_dll.ImColor_HSV, "ptr", pOut, "float", h, "float", s, "float", v, "float", a)
	    return dll_rtn
	}
	
	ImGuiListClipperRange_FromIndices(min, max)
	{
		;ImGuiListClipperRange ImGuiListClipperRange_FromIndices(int min, int max)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipperRange_FromIndices, "int", min, "int", max, "ptr")
	    return dll_rtn
	}
	
	ImGuiListClipperRange_FromPositions(y1, y2, off_min, off_max)
	{
		;ImGuiListClipperRange ImGuiListClipperRange_FromPositions(float y1, float y2, int off_min, int off_max)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipperRange_FromPositions, "float", y1, "float", y2, "int", off_min, "int", off_max, "ptr")
	    return dll_rtn
	}
	
	igAcceptDragDropPayload(type, flags := 0)
	{
		;const ImGuiPayload* igAcceptDragDropPayload(const char* type, ImGuiDragDropFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igAcceptDragDropPayload, "ptr", type, "int", flags, "ptr")
	    return dll_rtn
	}
	
	igActivateItemByID(id)
	{
		;void igActivateItemByID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igActivateItemByID, "uint", id)
	    return dll_rtn
	}
	
	igAddContextHook(context, hook)
	{
		;ImGuiID igAddContextHook(ImGuiContext* context, const ImGuiContextHook* hook)
	    dll_rtn := DllCall(Cimgui_dll.igAddContextHook, "ptr", context, "ptr", hook, "uint")
	    return dll_rtn
	}
	
	igAddDrawListToDrawDataEx(draw_data, out_list, draw_list)
	{
		;void igAddDrawListToDrawDataEx(ImDrawData* draw_data, ImVector_ImDrawListPtr* out_list, ImDrawList* draw_list)
	    dll_rtn := DllCall(Cimgui_dll.igAddDrawListToDrawDataEx, "ptr", draw_data, "ptr", out_list, "ptr", draw_list)
	    return dll_rtn
	}
	
	igAddSettingsHandler(handler)
	{
		;void igAddSettingsHandler(const ImGuiSettingsHandler* handler)
	    dll_rtn := DllCall(Cimgui_dll.igAddSettingsHandler, "ptr", handler)
	    return dll_rtn
	}
	
	igAlignTextToFramePadding()
	{
		;void igAlignTextToFramePadding()
	    dll_rtn := DllCall(Cimgui_dll.igAlignTextToFramePadding)
	    return dll_rtn
	}
	
	igArrowButton(str_id, dir)
	{
		;bool igArrowButton(const char* str_id, ImGuiDir dir)
	    dll_rtn := DllCall(Cimgui_dll.igArrowButton, "ptr", str_id, "int", dir, "char")
	    return dll_rtn
	}
	
	igArrowButtonEx(str_id, dir, size_arg, flags := 0)
	{
		;bool igArrowButtonEx(const char* str_id, ImGuiDir dir, ImVec2 size_arg, ImGuiButtonFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igArrowButtonEx, "ptr", str_id, "int", dir, "int64", NumGet(size_arg, "int64"), "int", flags, "char")
	    return dll_rtn
	}
	
	igBegin(name, &p_open := 0, flags := 0)
	{
		;bool igBegin(const char* name, bool* p_open, ImGuiWindowFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBegin, "ptr", name, "char*", &p_open, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginChild_Str(str_id, size := ImVec2([0, 0]), border := false, flags := 0)
	{
		;bool igBeginChild_Str(const char* str_id, const ImVec2 size, bool border, ImGuiWindowFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginChild_Str, "ptr", str_id, "int64", NumGet(size, "int64"), "char", border, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginChild_ID(id, size := ImVec2([0, 0]), border := false, flags := 0)
	{
		;bool igBeginChild_ID(ImGuiID id, const ImVec2 size, bool border, ImGuiWindowFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginChild_ID, "uint", id, "int64", NumGet(size, "int64"), "char", border, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginChildEx(name, id, size_arg, border, flags)
	{
		;bool igBeginChildEx(const char* name, ImGuiID id, const ImVec2 size_arg, bool border, ImGuiWindowFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginChildEx, "ptr", name, "uint", id, "int64", NumGet(size_arg, "int64"), "char", border, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginChildFrame(id, size, flags := 0)
	{
		;bool igBeginChildFrame(ImGuiID id, const ImVec2 size, ImGuiWindowFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginChildFrame, "uint", id, "int64", NumGet(size, "int64"), "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginColumns(str_id, count, flags := 0)
	{
		;void igBeginColumns(const char* str_id, int count, ImGuiOldColumnFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginColumns, "ptr", str_id, "int", count, "int", flags)
	    return dll_rtn
	}
	
	igBeginCombo(label, preview_value, flags := 0)
	{
		;bool igBeginCombo(const char* label, const char* preview_value, ImGuiComboFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginCombo, "ptr", label, "ptr", preview_value, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginComboPopup(popup_id, bb, flags)
	{
		;bool igBeginComboPopup(ImGuiID popup_id, const ImRect bb, ImGuiComboFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginComboPopup, "uint", popup_id, "ptr", bb, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginComboPreview()
	{
		;bool igBeginComboPreview()
	    dll_rtn := DllCall(Cimgui_dll.igBeginComboPreview, "char")
	    return dll_rtn
	}
	
	igBeginDisabled(disabled := true)
	{
		;void igBeginDisabled(bool disabled)
	    dll_rtn := DllCall(Cimgui_dll.igBeginDisabled, "char", disabled)
	    return dll_rtn
	}
	
	igBeginDockableDragDropSource(window)
	{
		;void igBeginDockableDragDropSource(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igBeginDockableDragDropSource, "ptr", window)
	    return dll_rtn
	}
	
	igBeginDockableDragDropTarget(window)
	{
		;void igBeginDockableDragDropTarget(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igBeginDockableDragDropTarget, "ptr", window)
	    return dll_rtn
	}
	
	igBeginDocked(window, &p_open)
	{
		;void igBeginDocked(ImGuiWindow* window, bool* p_open)
	    dll_rtn := DllCall(Cimgui_dll.igBeginDocked, "ptr", window, "char*", &p_open)
	    return dll_rtn
	}
	
	igBeginDragDropSource(flags := 0)
	{
		;bool igBeginDragDropSource(ImGuiDragDropFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginDragDropSource, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginDragDropTarget()
	{
		;bool igBeginDragDropTarget()
	    dll_rtn := DllCall(Cimgui_dll.igBeginDragDropTarget, "char")
	    return dll_rtn
	}
	
	igBeginDragDropTargetCustom(bb, id)
	{
		;bool igBeginDragDropTargetCustom(const ImRect bb, ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igBeginDragDropTargetCustom, "ptr", bb, "uint", id, "char")
	    return dll_rtn
	}
	
	igBeginGroup()
	{
		;void igBeginGroup()
	    dll_rtn := DllCall(Cimgui_dll.igBeginGroup)
	    return dll_rtn
	}
	
	igBeginItemTooltip()
	{
		;bool igBeginItemTooltip()
	    dll_rtn := DllCall(Cimgui_dll.igBeginItemTooltip, "char")
	    return dll_rtn
	}
	
	igBeginListBox(label, size := ImVec2([0, 0]))
	{
		;bool igBeginListBox(const char* label, const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igBeginListBox, "ptr", label, "int64", NumGet(size, "int64"), "char")
	    return dll_rtn
	}
	
	igBeginMainMenuBar()
	{
		;bool igBeginMainMenuBar()
	    dll_rtn := DllCall(Cimgui_dll.igBeginMainMenuBar, "char")
	    return dll_rtn
	}
	
	igBeginMenu(label, enabled := true)
	{
		;bool igBeginMenu(const char* label, bool enabled)
	    dll_rtn := DllCall(Cimgui_dll.igBeginMenu, "ptr", label, "char", enabled, "char")
	    return dll_rtn
	}
	
	igBeginMenuBar()
	{
		;bool igBeginMenuBar()
	    dll_rtn := DllCall(Cimgui_dll.igBeginMenuBar, "char")
	    return dll_rtn
	}
	
	igBeginMenuEx(label, icon, enabled := true)
	{
		;bool igBeginMenuEx(const char* label, const char* icon, bool enabled)
	    dll_rtn := DllCall(Cimgui_dll.igBeginMenuEx, "ptr", label, "ptr", icon, "char", enabled, "char")
	    return dll_rtn
	}
	
	igBeginPopup(str_id, flags := 0)
	{
		;bool igBeginPopup(const char* str_id, ImGuiWindowFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginPopup, "ptr", str_id, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginPopupContextItem(str_id := 0, popup_flags := 1)
	{
		;bool igBeginPopupContextItem(const char* str_id, ImGuiPopupFlags popup_flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginPopupContextItem, "ptr", str_id, "int", popup_flags, "char")
	    return dll_rtn
	}
	
	igBeginPopupContextVoid(str_id := 0, popup_flags := 1)
	{
		;bool igBeginPopupContextVoid(const char* str_id, ImGuiPopupFlags popup_flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginPopupContextVoid, "ptr", str_id, "int", popup_flags, "char")
	    return dll_rtn
	}
	
	igBeginPopupContextWindow(str_id := 0, popup_flags := 1)
	{
		;bool igBeginPopupContextWindow(const char* str_id, ImGuiPopupFlags popup_flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginPopupContextWindow, "ptr", str_id, "int", popup_flags, "char")
	    return dll_rtn
	}
	
	igBeginPopupEx(id, extra_flags)
	{
		;bool igBeginPopupEx(ImGuiID id, ImGuiWindowFlags extra_flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginPopupEx, "uint", id, "int", extra_flags, "char")
	    return dll_rtn
	}
	
	igBeginPopupModal(name, &p_open := 0, flags := 0)
	{
		;bool igBeginPopupModal(const char* name, bool* p_open, ImGuiWindowFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginPopupModal, "ptr", name, "char*", &p_open, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginTabBar(str_id, flags := 0)
	{
		;bool igBeginTabBar(const char* str_id, ImGuiTabBarFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginTabBar, "ptr", str_id, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginTabBarEx(tab_bar, bb, flags, dock_node)
	{
		;bool igBeginTabBarEx(ImGuiTabBar* tab_bar, const ImRect bb, ImGuiTabBarFlags flags, ImGuiDockNode* dock_node)
	    dll_rtn := DllCall(Cimgui_dll.igBeginTabBarEx, "ptr", tab_bar, "ptr", bb, "int", flags, "ptr", dock_node, "char")
	    return dll_rtn
	}
	
	igBeginTabItem(label, &p_open := 0, flags := 0)
	{
		;bool igBeginTabItem(const char* label, bool* p_open, ImGuiTabItemFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginTabItem, "ptr", label, "char*", &p_open, "int", flags, "char")
	    return dll_rtn
	}
	
	igBeginTable(str_id, column, flags := 0, outer_size := ImVec2([0.0f, 0.0f]), inner_width := 0.0)
	{
		;bool igBeginTable(const char* str_id, int column, ImGuiTableFlags flags, const ImVec2 outer_size, float inner_width)
	    dll_rtn := DllCall(Cimgui_dll.igBeginTable, "ptr", str_id, "int", column, "int", flags, "int64", NumGet(outer_size, "int64"), "float", inner_width, "char")
	    return dll_rtn
	}
	
	igBeginTableEx(name, id, columns_count, flags := 0, outer_size := ImVec2([0, 0]), inner_width := 0.0)
	{
		;bool igBeginTableEx(const char* name, ImGuiID id, int columns_count, ImGuiTableFlags flags, const ImVec2 outer_size, float inner_width)
	    dll_rtn := DllCall(Cimgui_dll.igBeginTableEx, "ptr", name, "uint", id, "int", columns_count, "int", flags, "int64", NumGet(outer_size, "int64"), "float", inner_width, "char")
	    return dll_rtn
	}
	
	igBeginTooltip()
	{
		;bool igBeginTooltip()
	    dll_rtn := DllCall(Cimgui_dll.igBeginTooltip, "char")
	    return dll_rtn
	}
	
	igBeginTooltipEx(tooltip_flags, extra_window_flags)
	{
		;bool igBeginTooltipEx(ImGuiTooltipFlags tooltip_flags, ImGuiWindowFlags extra_window_flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginTooltipEx, "int", tooltip_flags, "int", extra_window_flags, "char")
	    return dll_rtn
	}
	
	igBeginViewportSideBar(name, viewport, dir, size, window_flags)
	{
		;bool igBeginViewportSideBar(const char* name, ImGuiViewport* viewport, ImGuiDir dir, float size, ImGuiWindowFlags window_flags)
	    dll_rtn := DllCall(Cimgui_dll.igBeginViewportSideBar, "ptr", name, "ptr", viewport, "int", dir, "float", size, "int", window_flags, "char")
	    return dll_rtn
	}
	
	igBringWindowToDisplayBack(window)
	{
		;void igBringWindowToDisplayBack(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igBringWindowToDisplayBack, "ptr", window)
	    return dll_rtn
	}
	
	igBringWindowToDisplayBehind(window, above_window)
	{
		;void igBringWindowToDisplayBehind(ImGuiWindow* window, ImGuiWindow* above_window)
	    dll_rtn := DllCall(Cimgui_dll.igBringWindowToDisplayBehind, "ptr", window, "ptr", above_window)
	    return dll_rtn
	}
	
	igBringWindowToDisplayFront(window)
	{
		;void igBringWindowToDisplayFront(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igBringWindowToDisplayFront, "ptr", window)
	    return dll_rtn
	}
	
	igBringWindowToFocusFront(window)
	{
		;void igBringWindowToFocusFront(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igBringWindowToFocusFront, "ptr", window)
	    return dll_rtn
	}
	
	igBullet()
	{
		;void igBullet()
	    dll_rtn := DllCall(Cimgui_dll.igBullet)
	    return dll_rtn
	}
	
	igBulletText(fmt, p*)
	{
		;void igBulletText(const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igBulletText, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igBulletTextV(fmt, args)
	{
		;void igBulletTextV(const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igBulletTextV, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igButton(label, size := ImVec2([0, 0]))
	{
		;bool igButton(const char* label, const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igButton, "ptr", label, "int64", NumGet(size, "int64"), "char")
	    return dll_rtn
	}
	
	igButtonBehavior(bb, id, &out_hovered, &out_held, flags := 0)
	{
		;bool igButtonBehavior(const ImRect bb, ImGuiID id, bool* out_hovered, bool* out_held, ImGuiButtonFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igButtonBehavior, "ptr", bb, "uint", id, "char*", &out_hovered, "char*", &out_held, "int", flags, "char")
	    return dll_rtn
	}
	
	igButtonEx(label, size_arg := ImVec2([0, 0]), flags := 0)
	{
		;bool igButtonEx(const char* label, const ImVec2 size_arg, ImGuiButtonFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igButtonEx, "ptr", label, "int64", NumGet(size_arg, "int64"), "int", flags, "char")
	    return dll_rtn
	}
	
	igCalcItemSize(pOut, size, default_w, default_h)
	{
		;void igCalcItemSize(ImVec2 *pOut, ImVec2 size, float default_w, float default_h)
	    dll_rtn := DllCall(Cimgui_dll.igCalcItemSize, "ptr", pOut, "int64", NumGet(size, "int64"), "float", default_w, "float", default_h)
	    return dll_rtn
	}
	
	igCalcItemWidth()
	{
		;float igCalcItemWidth()
	    dll_rtn := DllCall(Cimgui_dll.igCalcItemWidth, "float")
	    return dll_rtn
	}
	
	igCalcRoundingFlagsForRectInRect(r_in, r_outer, threshold)
	{
		;ImDrawFlags igCalcRoundingFlagsForRectInRect(const ImRect r_in, const ImRect r_outer, float threshold)
	    dll_rtn := DllCall(Cimgui_dll.igCalcRoundingFlagsForRectInRect, "ptr", r_in, "ptr", r_outer, "float", threshold, "int")
	    return dll_rtn
	}
	
	igCalcTextSize(pOut, text, text_end := 0, hide_text_after_double_hash := false, wrap_width := -1.0)
	{
		;void igCalcTextSize(ImVec2 *pOut, const char* text, const char* text_end, bool hide_text_after_double_hash, float wrap_width)
	    dll_rtn := DllCall(Cimgui_dll.igCalcTextSize, "ptr", pOut, "ptr", text, "ptr", text_end, "char", hide_text_after_double_hash, "float", wrap_width)
	    return dll_rtn
	}
	
	igCalcTypematicRepeatAmount(t0, t1, repeat_delay, repeat_rate)
	{
		;int igCalcTypematicRepeatAmount(float t0, float t1, float repeat_delay, float repeat_rate)
	    dll_rtn := DllCall(Cimgui_dll.igCalcTypematicRepeatAmount, "float", t0, "float", t1, "float", repeat_delay, "float", repeat_rate, "int")
	    return dll_rtn
	}
	
	igCalcWindowNextAutoFitSize(pOut, window)
	{
		;void igCalcWindowNextAutoFitSize(ImVec2 *pOut, ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igCalcWindowNextAutoFitSize, "ptr", pOut, "ptr", window)
	    return dll_rtn
	}
	
	igCalcWrapWidthForPos(pos, wrap_pos_x)
	{
		;float igCalcWrapWidthForPos(const ImVec2 pos, float wrap_pos_x)
	    dll_rtn := DllCall(Cimgui_dll.igCalcWrapWidthForPos, "int64", NumGet(pos, "int64"), "float", wrap_pos_x, "float")
	    return dll_rtn
	}
	
	igCallContextHooks(context, type)
	{
		;void igCallContextHooks(ImGuiContext* context, ImGuiContextHookType type)
	    dll_rtn := DllCall(Cimgui_dll.igCallContextHooks, "ptr", context, "int", type)
	    return dll_rtn
	}
	
	igCheckbox(label, &v)
	{
		;bool igCheckbox(const char* label, bool* v)
	    dll_rtn := DllCall(Cimgui_dll.igCheckbox, "ptr", label, "char*", &v, "char")
	    return dll_rtn
	}
	
	igCheckboxFlags_IntPtr(label, &flags, flags_value)
	{
		;bool igCheckboxFlags_IntPtr(const char* label, int* flags, int flags_value)
	    dll_rtn := DllCall(Cimgui_dll.igCheckboxFlags_IntPtr, "ptr", label, "int*", &flags, "int", flags_value, "char")
	    return dll_rtn
	}
	
	igCheckboxFlags_UintPtr(label, &flags, flags_value)
	{
		;bool igCheckboxFlags_UintPtr(const char* label, unsigned int* flags, unsigned int flags_value)
	    dll_rtn := DllCall(Cimgui_dll.igCheckboxFlags_UintPtr, "ptr", label, "uint*", &flags, "uint", flags_value, "char")
	    return dll_rtn
	}
	
	igCheckboxFlags_S64Ptr(label, &flags, flags_value)
	{
		;bool igCheckboxFlags_S64Ptr(const char* label, ImS64* flags, ImS64 flags_value)
	    dll_rtn := DllCall(Cimgui_dll.igCheckboxFlags_S64Ptr, "ptr", label, "int64*", &flags, "int64", flags_value, "char")
	    return dll_rtn
	}
	
	igCheckboxFlags_U64Ptr(label, &flags, flags_value)
	{
		;bool igCheckboxFlags_U64Ptr(const char* label, ImU64* flags, ImU64 flags_value)
	    dll_rtn := DllCall(Cimgui_dll.igCheckboxFlags_U64Ptr, "ptr", label, "uint64*", &flags, "uint64", flags_value, "char")
	    return dll_rtn
	}
	
	igClearActiveID()
	{
		;void igClearActiveID()
	    dll_rtn := DllCall(Cimgui_dll.igClearActiveID)
	    return dll_rtn
	}
	
	igClearDragDrop()
	{
		;void igClearDragDrop()
	    dll_rtn := DllCall(Cimgui_dll.igClearDragDrop)
	    return dll_rtn
	}
	
	igClearIniSettings()
	{
		;void igClearIniSettings()
	    dll_rtn := DllCall(Cimgui_dll.igClearIniSettings)
	    return dll_rtn
	}
	
	igClearWindowSettings(name)
	{
		;void igClearWindowSettings(const char* name)
	    dll_rtn := DllCall(Cimgui_dll.igClearWindowSettings, "ptr", name)
	    return dll_rtn
	}
	
	igCloseButton(id, pos)
	{
		;bool igCloseButton(ImGuiID id, const ImVec2 pos)
	    dll_rtn := DllCall(Cimgui_dll.igCloseButton, "uint", id, "int64", NumGet(pos, "int64"), "char")
	    return dll_rtn
	}
	
	igCloseCurrentPopup()
	{
		;void igCloseCurrentPopup()
	    dll_rtn := DllCall(Cimgui_dll.igCloseCurrentPopup)
	    return dll_rtn
	}
	
	igClosePopupToLevel(remaining, restore_focus_to_window_under_popup)
	{
		;void igClosePopupToLevel(int remaining, bool restore_focus_to_window_under_popup)
	    dll_rtn := DllCall(Cimgui_dll.igClosePopupToLevel, "int", remaining, "char", restore_focus_to_window_under_popup)
	    return dll_rtn
	}
	
	igClosePopupsExceptModals()
	{
		;void igClosePopupsExceptModals()
	    dll_rtn := DllCall(Cimgui_dll.igClosePopupsExceptModals)
	    return dll_rtn
	}
	
	igClosePopupsOverWindow(ref_window, restore_focus_to_window_under_popup)
	{
		;void igClosePopupsOverWindow(ImGuiWindow* ref_window, bool restore_focus_to_window_under_popup)
	    dll_rtn := DllCall(Cimgui_dll.igClosePopupsOverWindow, "ptr", ref_window, "char", restore_focus_to_window_under_popup)
	    return dll_rtn
	}
	
	igCollapseButton(id, pos, dock_node)
	{
		;bool igCollapseButton(ImGuiID id, const ImVec2 pos, ImGuiDockNode* dock_node)
	    dll_rtn := DllCall(Cimgui_dll.igCollapseButton, "uint", id, "int64", NumGet(pos, "int64"), "ptr", dock_node, "char")
	    return dll_rtn
	}
	
	igCollapsingHeader_TreeNodeFlags(label, flags := 0)
	{
		;bool igCollapsingHeader_TreeNodeFlags(const char* label, ImGuiTreeNodeFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igCollapsingHeader_TreeNodeFlags, "ptr", label, "int", flags, "char")
	    return dll_rtn
	}
	
	igCollapsingHeader_BoolPtr(label, &p_visible, flags := 0)
	{
		;bool igCollapsingHeader_BoolPtr(const char* label, bool* p_visible, ImGuiTreeNodeFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igCollapsingHeader_BoolPtr, "ptr", label, "char*", &p_visible, "int", flags, "char")
	    return dll_rtn
	}
	
	igColorButton(desc_id, col, flags := 0, size := ImVec2([0, 0]))
	{
		;bool igColorButton(const char* desc_id, const ImVec4 col, ImGuiColorEditFlags flags, const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igColorButton, "ptr", desc_id, "ptr", col, "int", flags, "int64", NumGet(size, "int64"), "char")
	    return dll_rtn
	}
	
	igColorConvertFloat4ToU32(in_)
	{
		;ImU32 igColorConvertFloat4ToU32(const ImVec4 in_)
	    dll_rtn := DllCall(Cimgui_dll.igColorConvertFloat4ToU32, "ptr", in_, "uint")
	    return dll_rtn
	}
	
	igColorConvertHSVtoRGB(h, s, v, &out_r, &out_g, &out_b)
	{
		;void igColorConvertHSVtoRGB(float h, float s, float v, float* out_r, float* out_g, float* out_b)
	    dll_rtn := DllCall(Cimgui_dll.igColorConvertHSVtoRGB, "float", h, "float", s, "float", v, "float*", &out_r, "float*", &out_g, "float*", &out_b)
	    return dll_rtn
	}
	
	igColorConvertRGBtoHSV(r, g, b, &out_h, &out_s, &out_v)
	{
		;void igColorConvertRGBtoHSV(float r, float g, float b, float* out_h, float* out_s, float* out_v)
	    dll_rtn := DllCall(Cimgui_dll.igColorConvertRGBtoHSV, "float", r, "float", g, "float", b, "float*", &out_h, "float*", &out_s, "float*", &out_v)
	    return dll_rtn
	}
	
	igColorConvertU32ToFloat4(pOut, in_)
	{
		;void igColorConvertU32ToFloat4(ImVec4 *pOut, ImU32 in_)
	    dll_rtn := DllCall(Cimgui_dll.igColorConvertU32ToFloat4, "ptr", pOut, "uint", in_)
	    return dll_rtn
	}
	
	igColorEdit3(label, col, flags := 0)
	{
		;bool igColorEdit3(const char* label, float col[3], ImGuiColorEditFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igColorEdit3, "ptr", label, "ptr", col, "int", flags, "char")
	    return dll_rtn
	}
	
	igColorEdit4(label, col, flags := 0)
	{
		;bool igColorEdit4(const char* label, float col[4], ImGuiColorEditFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igColorEdit4, "ptr", label, "ptr", col, "int", flags, "char")
	    return dll_rtn
	}
	
	igColorEditOptionsPopup(&col, flags)
	{
		;void igColorEditOptionsPopup(const float* col, ImGuiColorEditFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igColorEditOptionsPopup, "float*", &col, "int", flags)
	    return dll_rtn
	}
	
	igColorPicker3(label, col, flags := 0)
	{
		;bool igColorPicker3(const char* label, float col[3], ImGuiColorEditFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igColorPicker3, "ptr", label, "ptr", col, "int", flags, "char")
	    return dll_rtn
	}
	
	igColorPicker4(label, col, flags := 0, &ref_col := 0)
	{
		;bool igColorPicker4(const char* label, float col[4], ImGuiColorEditFlags flags, const float* ref_col)
	    dll_rtn := DllCall(Cimgui_dll.igColorPicker4, "ptr", label, "ptr", col, "int", flags, "float*", &ref_col, "char")
	    return dll_rtn
	}
	
	igColorPickerOptionsPopup(&ref_col, flags)
	{
		;void igColorPickerOptionsPopup(const float* ref_col, ImGuiColorEditFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igColorPickerOptionsPopup, "float*", &ref_col, "int", flags)
	    return dll_rtn
	}
	
	igColorTooltip(text, &col, flags)
	{
		;void igColorTooltip(const char* text, const float* col, ImGuiColorEditFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igColorTooltip, "ptr", text, "float*", &col, "int", flags)
	    return dll_rtn
	}
	
	igColumns(count := 1, id := 0, border := true)
	{
		;void igColumns(int count, const char* id, bool border)
	    dll_rtn := DllCall(Cimgui_dll.igColumns, "int", count, "ptr", id, "char", border)
	    return dll_rtn
	}
	
	igCombo_Str_arr(label, &current_item, items, items_count, popup_max_height_in_items := -1)
	{
		;bool igCombo_Str_arr(const char* label, int* current_item, const char* const items[], int items_count, int popup_max_height_in_items)
	    dll_rtn := DllCall(Cimgui_dll.igCombo_Str_arr, "ptr", label, "int*", &current_item, "ptr", items, "int", items_count, "int", popup_max_height_in_items, "char")
	    return dll_rtn
	}
	
	igCombo_Str(label, &current_item, items_separated_by_zeros, popup_max_height_in_items := -1)
	{
		;bool igCombo_Str(const char* label, int* current_item, const char* items_separated_by_zeros, int popup_max_height_in_items)
	    dll_rtn := DllCall(Cimgui_dll.igCombo_Str, "ptr", label, "int*", &current_item, "ptr", items_separated_by_zeros, "int", popup_max_height_in_items, "char")
	    return dll_rtn
	}
	
	igCombo_FnBoolPtr(label, &current_item, items_getter, data, items_count, popup_max_height_in_items := -1)
	{
		;bool igCombo_FnBoolPtr(const char* label, int* current_item, bool(*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int popup_max_height_in_items)
	    dll_rtn := DllCall(Cimgui_dll.igCombo_FnBoolPtr, "ptr", label, "int*", &current_item, "ptr", items_getter, "ptr", data, "int", items_count, "int", popup_max_height_in_items, "char")
	    return dll_rtn
	}
	
	igConvertShortcutMod(key_chord)
	{
		;ImGuiKeyChord igConvertShortcutMod(ImGuiKeyChord key_chord)
	    dll_rtn := DllCall(Cimgui_dll.igConvertShortcutMod, "int", key_chord, "int")
	    return dll_rtn
	}
	
	igConvertSingleModFlagToKey(ctx, key)
	{
		;ImGuiKey igConvertSingleModFlagToKey(ImGuiContext* ctx, ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igConvertSingleModFlagToKey, "ptr", ctx, "int", key, "int")
	    return dll_rtn
	}
	
	igCreateContext(shared_font_atlas := 0)
	{
		;ImGuiContext* igCreateContext(ImFontAtlas* shared_font_atlas)
	    dll_rtn := DllCall(Cimgui_dll.igCreateContext, "ptr", shared_font_atlas, "ptr")
	    return dll_rtn
	}
	
	igCreateNewWindowSettings(name)
	{
		;ImGuiWindowSettings* igCreateNewWindowSettings(const char* name)
	    dll_rtn := DllCall(Cimgui_dll.igCreateNewWindowSettings, "ptr", name, "ptr")
	    return dll_rtn
	}
	
	igDataTypeApplyFromText(buf, data_type, p_data, format)
	{
		;bool igDataTypeApplyFromText(const char* buf, ImGuiDataType data_type, void* p_data, const char* format)
	    dll_rtn := DllCall(Cimgui_dll.igDataTypeApplyFromText, "ptr", buf, "int", data_type, "ptr", p_data, "ptr", format, "char")
	    return dll_rtn
	}
	
	igDataTypeApplyOp(data_type, op, output, arg_1, arg_2)
	{
		;void igDataTypeApplyOp(ImGuiDataType data_type, int op, void* output, const void* arg_1, const void* arg_2)
	    dll_rtn := DllCall(Cimgui_dll.igDataTypeApplyOp, "int", data_type, "int", op, "ptr", output, "ptr", arg_1, "ptr", arg_2)
	    return dll_rtn
	}
	
	igDataTypeClamp(data_type, p_data, p_min, p_max)
	{
		;bool igDataTypeClamp(ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max)
	    dll_rtn := DllCall(Cimgui_dll.igDataTypeClamp, "int", data_type, "ptr", p_data, "ptr", p_min, "ptr", p_max, "char")
	    return dll_rtn
	}
	
	igDataTypeCompare(data_type, arg_1, arg_2)
	{
		;int igDataTypeCompare(ImGuiDataType data_type, const void* arg_1, const void* arg_2)
	    dll_rtn := DllCall(Cimgui_dll.igDataTypeCompare, "int", data_type, "ptr", arg_1, "ptr", arg_2, "int")
	    return dll_rtn
	}
	
	igDataTypeFormatString(buf, buf_size, data_type, p_data, format)
	{
		;int igDataTypeFormatString(char* buf, int buf_size, ImGuiDataType data_type, const void* p_data, const char* format)
	    dll_rtn := DllCall(Cimgui_dll.igDataTypeFormatString, "ptr", buf, "int", buf_size, "int", data_type, "ptr", p_data, "ptr", format, "int")
	    return dll_rtn
	}
	
	igDataTypeGetInfo(data_type)
	{
		;const ImGuiDataTypeInfo* igDataTypeGetInfo(ImGuiDataType data_type)
	    dll_rtn := DllCall(Cimgui_dll.igDataTypeGetInfo, "int", data_type, "ptr")
	    return dll_rtn
	}
	
	igDebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx)
	{
		;bool igDebugCheckVersionAndDataLayout(const char* version_str, size_t sz_io, size_t sz_style, size_t sz_vec2, size_t sz_vec4, size_t sz_drawvert, size_t sz_drawidx)
	    dll_rtn := DllCall(Cimgui_dll.igDebugCheckVersionAndDataLayout, "ptr", version_str, "uptr", sz_io, "uptr", sz_style, "uptr", sz_vec2, "uptr", sz_vec4, "uptr", sz_drawvert, "uptr", sz_drawidx, "char")
	    return dll_rtn
	}
	
	igDebugDrawCursorPos(col := 4278190335)
	{
		;void igDebugDrawCursorPos(ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igDebugDrawCursorPos, "uint", col)
	    return dll_rtn
	}
	
	igDebugDrawItemRect(col := 4278190335)
	{
		;void igDebugDrawItemRect(ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igDebugDrawItemRect, "uint", col)
	    return dll_rtn
	}
	
	igDebugDrawLineExtents(col := 4278190335)
	{
		;void igDebugDrawLineExtents(ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igDebugDrawLineExtents, "uint", col)
	    return dll_rtn
	}
	
	igDebugHookIdInfo(id, data_type, data_id, data_id_end)
	{
		;void igDebugHookIdInfo(ImGuiID id, ImGuiDataType data_type, const void* data_id, const void* data_id_end)
	    dll_rtn := DllCall(Cimgui_dll.igDebugHookIdInfo, "uint", id, "int", data_type, "ptr", data_id, "ptr", data_id_end)
	    return dll_rtn
	}
	
	igDebugLocateItem(target_id)
	{
		;void igDebugLocateItem(ImGuiID target_id)
	    dll_rtn := DllCall(Cimgui_dll.igDebugLocateItem, "uint", target_id)
	    return dll_rtn
	}
	
	igDebugLocateItemOnHover(target_id)
	{
		;void igDebugLocateItemOnHover(ImGuiID target_id)
	    dll_rtn := DllCall(Cimgui_dll.igDebugLocateItemOnHover, "uint", target_id)
	    return dll_rtn
	}
	
	igDebugLocateItemResolveWithLastItem()
	{
		;void igDebugLocateItemResolveWithLastItem()
	    dll_rtn := DllCall(Cimgui_dll.igDebugLocateItemResolveWithLastItem)
	    return dll_rtn
	}
	
	igDebugLog(fmt, p*)
	{
		;void igDebugLog(const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igDebugLog, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igDebugLogV(fmt, args)
	{
		;void igDebugLogV(const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igDebugLogV, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igDebugNodeColumns(columns)
	{
		;void igDebugNodeColumns(ImGuiOldColumns* columns)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeColumns, "ptr", columns)
	    return dll_rtn
	}
	
	igDebugNodeDockNode(node, label)
	{
		;void igDebugNodeDockNode(ImGuiDockNode* node, const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeDockNode, "ptr", node, "ptr", label)
	    return dll_rtn
	}
	
	igDebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list, draw_list, draw_cmd, show_mesh, show_aabb)
	{
		;void igDebugNodeDrawCmdShowMeshAndBoundingBox(ImDrawList* out_draw_list, const ImDrawList* draw_list, const ImDrawCmd* draw_cmd, bool show_mesh, bool show_aabb)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeDrawCmdShowMeshAndBoundingBox, "ptr", out_draw_list, "ptr", draw_list, "ptr", draw_cmd, "char", show_mesh, "char", show_aabb)
	    return dll_rtn
	}
	
	igDebugNodeDrawList(window, viewport, draw_list, label)
	{
		;void igDebugNodeDrawList(ImGuiWindow* window, ImGuiViewportP* viewport, const ImDrawList* draw_list, const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeDrawList, "ptr", window, "ptr", viewport, "ptr", draw_list, "ptr", label)
	    return dll_rtn
	}
	
	igDebugNodeFont(font)
	{
		;void igDebugNodeFont(ImFont* font)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeFont, "ptr", font)
	    return dll_rtn
	}
	
	igDebugNodeFontGlyph(font, glyph)
	{
		;void igDebugNodeFontGlyph(ImFont* font, const ImFontGlyph* glyph)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeFontGlyph, "ptr", font, "ptr", glyph)
	    return dll_rtn
	}
	
	igDebugNodeInputTextState(state)
	{
		;void igDebugNodeInputTextState(ImGuiInputTextState* state)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeInputTextState, "ptr", state)
	    return dll_rtn
	}
	
	igDebugNodeStorage(storage, label)
	{
		;void igDebugNodeStorage(ImGuiStorage* storage, const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeStorage, "ptr", storage, "ptr", label)
	    return dll_rtn
	}
	
	igDebugNodeTabBar(tab_bar, label)
	{
		;void igDebugNodeTabBar(ImGuiTabBar* tab_bar, const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeTabBar, "ptr", tab_bar, "ptr", label)
	    return dll_rtn
	}
	
	igDebugNodeTable(table)
	{
		;void igDebugNodeTable(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeTable, "ptr", table)
	    return dll_rtn
	}
	
	igDebugNodeTableSettings(settings)
	{
		;void igDebugNodeTableSettings(ImGuiTableSettings* settings)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeTableSettings, "ptr", settings)
	    return dll_rtn
	}
	
	igDebugNodeViewport(viewport)
	{
		;void igDebugNodeViewport(ImGuiViewportP* viewport)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeViewport, "ptr", viewport)
	    return dll_rtn
	}
	
	igDebugNodeWindow(window, label)
	{
		;void igDebugNodeWindow(ImGuiWindow* window, const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeWindow, "ptr", window, "ptr", label)
	    return dll_rtn
	}
	
	igDebugNodeWindowSettings(settings)
	{
		;void igDebugNodeWindowSettings(ImGuiWindowSettings* settings)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeWindowSettings, "ptr", settings)
	    return dll_rtn
	}
	
	igDebugNodeWindowsList(windows, label)
	{
		;void igDebugNodeWindowsList(ImVector_ImGuiWindowPtr* windows, const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeWindowsList, "ptr", windows, "ptr", label)
	    return dll_rtn
	}
	
	igDebugNodeWindowsListByBeginStackParent(windows, windows_size, parent_in_begin_stack)
	{
		;void igDebugNodeWindowsListByBeginStackParent(ImGuiWindow** windows, int windows_size, ImGuiWindow* parent_in_begin_stack)
	    dll_rtn := DllCall(Cimgui_dll.igDebugNodeWindowsListByBeginStackParent, "ptr", windows, "int", windows_size, "ptr", parent_in_begin_stack)
	    return dll_rtn
	}
	
	igDebugRenderKeyboardPreview(draw_list)
	{
		;void igDebugRenderKeyboardPreview(ImDrawList* draw_list)
	    dll_rtn := DllCall(Cimgui_dll.igDebugRenderKeyboardPreview, "ptr", draw_list)
	    return dll_rtn
	}
	
	igDebugRenderViewportThumbnail(draw_list, viewport, bb)
	{
		;void igDebugRenderViewportThumbnail(ImDrawList* draw_list, ImGuiViewportP* viewport, const ImRect bb)
	    dll_rtn := DllCall(Cimgui_dll.igDebugRenderViewportThumbnail, "ptr", draw_list, "ptr", viewport, "ptr", bb)
	    return dll_rtn
	}
	
	igDebugStartItemPicker()
	{
		;void igDebugStartItemPicker()
	    dll_rtn := DllCall(Cimgui_dll.igDebugStartItemPicker)
	    return dll_rtn
	}
	
	igDebugTextEncoding(text)
	{
		;void igDebugTextEncoding(const char* text)
	    dll_rtn := DllCall(Cimgui_dll.igDebugTextEncoding, "ptr", text)
	    return dll_rtn
	}
	
	igDestroyContext(ctx := 0)
	{
		;void igDestroyContext(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igDestroyContext, "ptr", ctx)
	    return dll_rtn
	}
	
	igDestroyPlatformWindow(viewport)
	{
		;void igDestroyPlatformWindow(ImGuiViewportP* viewport)
	    dll_rtn := DllCall(Cimgui_dll.igDestroyPlatformWindow, "ptr", viewport)
	    return dll_rtn
	}
	
	igDestroyPlatformWindows()
	{
		;void igDestroyPlatformWindows()
	    dll_rtn := DllCall(Cimgui_dll.igDestroyPlatformWindows)
	    return dll_rtn
	}
	
	igDockBuilderAddNode(node_id := 0, flags := 0)
	{
		;ImGuiID igDockBuilderAddNode(ImGuiID node_id, ImGuiDockNodeFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderAddNode, "uint", node_id, "int", flags, "uint")
	    return dll_rtn
	}
	
	igDockBuilderCopyDockSpace(src_dockspace_id, dst_dockspace_id, in_window_remap_pairs)
	{
		;void igDockBuilderCopyDockSpace(ImGuiID src_dockspace_id, ImGuiID dst_dockspace_id, ImVector_const_charPtr* in_window_remap_pairs)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderCopyDockSpace, "uint", src_dockspace_id, "uint", dst_dockspace_id, "ptr", in_window_remap_pairs)
	    return dll_rtn
	}
	
	igDockBuilderCopyNode(src_node_id, dst_node_id, out_node_remap_pairs)
	{
		;void igDockBuilderCopyNode(ImGuiID src_node_id, ImGuiID dst_node_id, ImVector_ImGuiID* out_node_remap_pairs)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderCopyNode, "uint", src_node_id, "uint", dst_node_id, "ptr", out_node_remap_pairs)
	    return dll_rtn
	}
	
	igDockBuilderCopyWindowSettings(src_name, dst_name)
	{
		;void igDockBuilderCopyWindowSettings(const char* src_name, const char* dst_name)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderCopyWindowSettings, "ptr", src_name, "ptr", dst_name)
	    return dll_rtn
	}
	
	igDockBuilderDockWindow(window_name, node_id)
	{
		;void igDockBuilderDockWindow(const char* window_name, ImGuiID node_id)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderDockWindow, "ptr", window_name, "uint", node_id)
	    return dll_rtn
	}
	
	igDockBuilderFinish(node_id)
	{
		;void igDockBuilderFinish(ImGuiID node_id)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderFinish, "uint", node_id)
	    return dll_rtn
	}
	
	igDockBuilderGetCentralNode(node_id)
	{
		;ImGuiDockNode* igDockBuilderGetCentralNode(ImGuiID node_id)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderGetCentralNode, "uint", node_id, "ptr")
	    return dll_rtn
	}
	
	igDockBuilderGetNode(node_id)
	{
		;ImGuiDockNode* igDockBuilderGetNode(ImGuiID node_id)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderGetNode, "uint", node_id, "ptr")
	    return dll_rtn
	}
	
	igDockBuilderRemoveNode(node_id)
	{
		;void igDockBuilderRemoveNode(ImGuiID node_id)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderRemoveNode, "uint", node_id)
	    return dll_rtn
	}
	
	igDockBuilderRemoveNodeChildNodes(node_id)
	{
		;void igDockBuilderRemoveNodeChildNodes(ImGuiID node_id)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderRemoveNodeChildNodes, "uint", node_id)
	    return dll_rtn
	}
	
	igDockBuilderRemoveNodeDockedWindows(node_id, clear_settings_refs := true)
	{
		;void igDockBuilderRemoveNodeDockedWindows(ImGuiID node_id, bool clear_settings_refs)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderRemoveNodeDockedWindows, "uint", node_id, "char", clear_settings_refs)
	    return dll_rtn
	}
	
	igDockBuilderSetNodePos(node_id, pos)
	{
		;void igDockBuilderSetNodePos(ImGuiID node_id, ImVec2 pos)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderSetNodePos, "uint", node_id, "int64", NumGet(pos, "int64"))
	    return dll_rtn
	}
	
	igDockBuilderSetNodeSize(node_id, size)
	{
		;void igDockBuilderSetNodeSize(ImGuiID node_id, ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderSetNodeSize, "uint", node_id, "int64", NumGet(size, "int64"))
	    return dll_rtn
	}
	
	igDockBuilderSplitNode(node_id, split_dir, size_ratio_for_node_at_dir, &out_id_at_dir, &out_id_at_opposite_dir)
	{
		;ImGuiID igDockBuilderSplitNode(ImGuiID node_id, ImGuiDir split_dir, float size_ratio_for_node_at_dir, ImGuiID* out_id_at_dir, ImGuiID* out_id_at_opposite_dir)
	    dll_rtn := DllCall(Cimgui_dll.igDockBuilderSplitNode, "uint", node_id, "int", split_dir, "float", size_ratio_for_node_at_dir, "uint*", &out_id_at_dir, "uint*", &out_id_at_opposite_dir, "uint")
	    return dll_rtn
	}
	
	igDockContextCalcDropPosForDocking(target, target_node, payload_window, payload_node, split_dir, split_outer, out_pos)
	{
		;bool igDockContextCalcDropPosForDocking(ImGuiWindow* target, ImGuiDockNode* target_node, ImGuiWindow* payload_window, ImGuiDockNode* payload_node, ImGuiDir split_dir, bool split_outer, ImVec2* out_pos)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextCalcDropPosForDocking, "ptr", target, "ptr", target_node, "ptr", payload_window, "ptr", payload_node, "int", split_dir, "char", split_outer, "ptr", out_pos, "char")
	    return dll_rtn
	}
	
	igDockContextClearNodes(ctx, root_id, clear_settings_refs)
	{
		;void igDockContextClearNodes(ImGuiContext* ctx, ImGuiID root_id, bool clear_settings_refs)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextClearNodes, "ptr", ctx, "uint", root_id, "char", clear_settings_refs)
	    return dll_rtn
	}
	
	igDockContextEndFrame(ctx)
	{
		;void igDockContextEndFrame(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextEndFrame, "ptr", ctx)
	    return dll_rtn
	}
	
	igDockContextFindNodeByID(ctx, id)
	{
		;ImGuiDockNode* igDockContextFindNodeByID(ImGuiContext* ctx, ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextFindNodeByID, "ptr", ctx, "uint", id, "ptr")
	    return dll_rtn
	}
	
	igDockContextGenNodeID(ctx)
	{
		;ImGuiID igDockContextGenNodeID(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextGenNodeID, "ptr", ctx, "uint")
	    return dll_rtn
	}
	
	igDockContextInitialize(ctx)
	{
		;void igDockContextInitialize(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextInitialize, "ptr", ctx)
	    return dll_rtn
	}
	
	igDockContextNewFrameUpdateDocking(ctx)
	{
		;void igDockContextNewFrameUpdateDocking(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextNewFrameUpdateDocking, "ptr", ctx)
	    return dll_rtn
	}
	
	igDockContextNewFrameUpdateUndocking(ctx)
	{
		;void igDockContextNewFrameUpdateUndocking(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextNewFrameUpdateUndocking, "ptr", ctx)
	    return dll_rtn
	}
	
	igDockContextProcessUndockNode(ctx, node)
	{
		;void igDockContextProcessUndockNode(ImGuiContext* ctx, ImGuiDockNode* node)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextProcessUndockNode, "ptr", ctx, "ptr", node)
	    return dll_rtn
	}
	
	igDockContextProcessUndockWindow(ctx, window, clear_persistent_docking_ref := true)
	{
		;void igDockContextProcessUndockWindow(ImGuiContext* ctx, ImGuiWindow* window, bool clear_persistent_docking_ref)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextProcessUndockWindow, "ptr", ctx, "ptr", window, "char", clear_persistent_docking_ref)
	    return dll_rtn
	}
	
	igDockContextQueueDock(ctx, target, target_node, payload, split_dir, split_ratio, split_outer)
	{
		;void igDockContextQueueDock(ImGuiContext* ctx, ImGuiWindow* target, ImGuiDockNode* target_node, ImGuiWindow* payload, ImGuiDir split_dir, float split_ratio, bool split_outer)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextQueueDock, "ptr", ctx, "ptr", target, "ptr", target_node, "ptr", payload, "int", split_dir, "float", split_ratio, "char", split_outer)
	    return dll_rtn
	}
	
	igDockContextQueueUndockNode(ctx, node)
	{
		;void igDockContextQueueUndockNode(ImGuiContext* ctx, ImGuiDockNode* node)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextQueueUndockNode, "ptr", ctx, "ptr", node)
	    return dll_rtn
	}
	
	igDockContextQueueUndockWindow(ctx, window)
	{
		;void igDockContextQueueUndockWindow(ImGuiContext* ctx, ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextQueueUndockWindow, "ptr", ctx, "ptr", window)
	    return dll_rtn
	}
	
	igDockContextRebuildNodes(ctx)
	{
		;void igDockContextRebuildNodes(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextRebuildNodes, "ptr", ctx)
	    return dll_rtn
	}
	
	igDockContextShutdown(ctx)
	{
		;void igDockContextShutdown(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igDockContextShutdown, "ptr", ctx)
	    return dll_rtn
	}
	
	igDockNodeBeginAmendTabBar(node)
	{
		;bool igDockNodeBeginAmendTabBar(ImGuiDockNode* node)
	    dll_rtn := DllCall(Cimgui_dll.igDockNodeBeginAmendTabBar, "ptr", node, "char")
	    return dll_rtn
	}
	
	igDockNodeEndAmendTabBar()
	{
		;void igDockNodeEndAmendTabBar()
	    dll_rtn := DllCall(Cimgui_dll.igDockNodeEndAmendTabBar)
	    return dll_rtn
	}
	
	igDockNodeGetDepth(node)
	{
		;int igDockNodeGetDepth(const ImGuiDockNode* node)
	    dll_rtn := DllCall(Cimgui_dll.igDockNodeGetDepth, "ptr", node, "int")
	    return dll_rtn
	}
	
	igDockNodeGetRootNode(node)
	{
		;ImGuiDockNode* igDockNodeGetRootNode(ImGuiDockNode* node)
	    dll_rtn := DllCall(Cimgui_dll.igDockNodeGetRootNode, "ptr", node, "ptr")
	    return dll_rtn
	}
	
	igDockNodeGetWindowMenuButtonId(node)
	{
		;ImGuiID igDockNodeGetWindowMenuButtonId(const ImGuiDockNode* node)
	    dll_rtn := DllCall(Cimgui_dll.igDockNodeGetWindowMenuButtonId, "ptr", node, "uint")
	    return dll_rtn
	}
	
	igDockNodeIsInHierarchyOf(node, parent)
	{
		;bool igDockNodeIsInHierarchyOf(ImGuiDockNode* node, ImGuiDockNode* parent)
	    dll_rtn := DllCall(Cimgui_dll.igDockNodeIsInHierarchyOf, "ptr", node, "ptr", parent, "char")
	    return dll_rtn
	}
	
	igDockNodeWindowMenuHandler_Default(ctx, node, tab_bar)
	{
		;void igDockNodeWindowMenuHandler_Default(ImGuiContext* ctx, ImGuiDockNode* node, ImGuiTabBar* tab_bar)
	    dll_rtn := DllCall(Cimgui_dll.igDockNodeWindowMenuHandler_Default, "ptr", ctx, "ptr", node, "ptr", tab_bar)
	    return dll_rtn
	}
	
	igDockSpace(id, size := ImVec2([0, 0]), flags := 0, window_class := 0)
	{
		;ImGuiID igDockSpace(ImGuiID id, const ImVec2 size, ImGuiDockNodeFlags flags, const ImGuiWindowClass* window_class)
	    dll_rtn := DllCall(Cimgui_dll.igDockSpace, "uint", id, "int64", NumGet(size, "int64"), "int", flags, "ptr", window_class, "uint")
	    return dll_rtn
	}
	
	igDockSpaceOverViewport(viewport := 0, flags := 0, window_class := 0)
	{
		;ImGuiID igDockSpaceOverViewport(const ImGuiViewport* viewport, ImGuiDockNodeFlags flags, const ImGuiWindowClass* window_class)
	    dll_rtn := DllCall(Cimgui_dll.igDockSpaceOverViewport, "ptr", viewport, "int", flags, "ptr", window_class, "uint")
	    return dll_rtn
	}
	
	igDragBehavior(id, data_type, p_v, v_speed, p_min, p_max, format, flags)
	{
		;bool igDragBehavior(ImGuiID id, ImGuiDataType data_type, void* p_v, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragBehavior, "uint", id, "int", data_type, "ptr", p_v, "float", v_speed, "ptr", p_min, "ptr", p_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragFloat(label, &v, v_speed := 1.0, v_min := 0.0, v_max := 0.0, format := "%.3f", flags := 0)
	{
		;bool igDragFloat(const char* label, float* v, float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragFloat, "ptr", label, "float*", &v, "float", v_speed, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragFloat2(label, v, v_speed := 1.0, v_min := 0.0, v_max := 0.0, format := "%.3f", flags := 0)
	{
		;bool igDragFloat2(const char* label, float v[2], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragFloat2, "ptr", label, "ptr", v, "float", v_speed, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragFloat3(label, v, v_speed := 1.0, v_min := 0.0, v_max := 0.0, format := "%.3f", flags := 0)
	{
		;bool igDragFloat3(const char* label, float v[3], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragFloat3, "ptr", label, "ptr", v, "float", v_speed, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragFloat4(label, v, v_speed := 1.0, v_min := 0.0, v_max := 0.0, format := "%.3f", flags := 0)
	{
		;bool igDragFloat4(const char* label, float v[4], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragFloat4, "ptr", label, "ptr", v, "float", v_speed, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragFloatRange2(label, &v_current_min, &v_current_max, v_speed := 1.0, v_min := 0.0, v_max := 0.0, format := "%.3f", format_max := 0, flags := 0)
	{
		;bool igDragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed, float v_min, float v_max, const char* format, const char* format_max, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragFloatRange2, "ptr", label, "float*", &v_current_min, "float*", &v_current_max, "float", v_speed, "float", v_min, "float", v_max, "ptr", format, "ptr", format_max, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragInt(label, &v, v_speed := 1.0, v_min := 0, v_max := 0, format := "%d", flags := 0)
	{
		;bool igDragInt(const char* label, int* v, float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragInt, "ptr", label, "int*", &v, "float", v_speed, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragInt2(label, v, v_speed := 1.0, v_min := 0, v_max := 0, format := "%d", flags := 0)
	{
		;bool igDragInt2(const char* label, int v[2], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragInt2, "ptr", label, "ptr", v, "float", v_speed, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragInt3(label, v, v_speed := 1.0, v_min := 0, v_max := 0, format := "%d", flags := 0)
	{
		;bool igDragInt3(const char* label, int v[3], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragInt3, "ptr", label, "ptr", v, "float", v_speed, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragInt4(label, v, v_speed := 1.0, v_min := 0, v_max := 0, format := "%d", flags := 0)
	{
		;bool igDragInt4(const char* label, int v[4], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragInt4, "ptr", label, "ptr", v, "float", v_speed, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragIntRange2(label, &v_current_min, &v_current_max, v_speed := 1.0, v_min := 0, v_max := 0, format := "%d", format_max := 0, flags := 0)
	{
		;bool igDragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed, int v_min, int v_max, const char* format, const char* format_max, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragIntRange2, "ptr", label, "int*", &v_current_min, "int*", &v_current_max, "float", v_speed, "int", v_min, "int", v_max, "ptr", format, "ptr", format_max, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragScalar(label, data_type, p_data, v_speed := 1.0, p_min := 0, p_max := 0, format := 0, flags := 0)
	{
		;bool igDragScalar(const char* label, ImGuiDataType data_type, void* p_data, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragScalar, "ptr", label, "int", data_type, "ptr", p_data, "float", v_speed, "ptr", p_min, "ptr", p_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDragScalarN(label, data_type, p_data, components, v_speed := 1.0, p_min := 0, p_max := 0, format := 0, flags := 0)
	{
		;bool igDragScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igDragScalarN, "ptr", label, "int", data_type, "ptr", p_data, "int", components, "float", v_speed, "ptr", p_min, "ptr", p_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igDummy(size)
	{
		;void igDummy(const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igDummy, "int64", NumGet(size, "int64"))
	    return dll_rtn
	}
	
	igEnd()
	{
		;void igEnd()
	    dll_rtn := DllCall(Cimgui_dll.igEnd)
	    return dll_rtn
	}
	
	igEndChild()
	{
		;void igEndChild()
	    dll_rtn := DllCall(Cimgui_dll.igEndChild)
	    return dll_rtn
	}
	
	igEndChildFrame()
	{
		;void igEndChildFrame()
	    dll_rtn := DllCall(Cimgui_dll.igEndChildFrame)
	    return dll_rtn
	}
	
	igEndColumns()
	{
		;void igEndColumns()
	    dll_rtn := DllCall(Cimgui_dll.igEndColumns)
	    return dll_rtn
	}
	
	igEndCombo()
	{
		;void igEndCombo()
	    dll_rtn := DllCall(Cimgui_dll.igEndCombo)
	    return dll_rtn
	}
	
	igEndComboPreview()
	{
		;void igEndComboPreview()
	    dll_rtn := DllCall(Cimgui_dll.igEndComboPreview)
	    return dll_rtn
	}
	
	igEndDisabled()
	{
		;void igEndDisabled()
	    dll_rtn := DllCall(Cimgui_dll.igEndDisabled)
	    return dll_rtn
	}
	
	igEndDragDropSource()
	{
		;void igEndDragDropSource()
	    dll_rtn := DllCall(Cimgui_dll.igEndDragDropSource)
	    return dll_rtn
	}
	
	igEndDragDropTarget()
	{
		;void igEndDragDropTarget()
	    dll_rtn := DllCall(Cimgui_dll.igEndDragDropTarget)
	    return dll_rtn
	}
	
	igEndFrame()
	{
		;void igEndFrame()
	    dll_rtn := DllCall(Cimgui_dll.igEndFrame)
	    return dll_rtn
	}
	
	igEndGroup()
	{
		;void igEndGroup()
	    dll_rtn := DllCall(Cimgui_dll.igEndGroup)
	    return dll_rtn
	}
	
	igEndListBox()
	{
		;void igEndListBox()
	    dll_rtn := DllCall(Cimgui_dll.igEndListBox)
	    return dll_rtn
	}
	
	igEndMainMenuBar()
	{
		;void igEndMainMenuBar()
	    dll_rtn := DllCall(Cimgui_dll.igEndMainMenuBar)
	    return dll_rtn
	}
	
	igEndMenu()
	{
		;void igEndMenu()
	    dll_rtn := DllCall(Cimgui_dll.igEndMenu)
	    return dll_rtn
	}
	
	igEndMenuBar()
	{
		;void igEndMenuBar()
	    dll_rtn := DllCall(Cimgui_dll.igEndMenuBar)
	    return dll_rtn
	}
	
	igEndPopup()
	{
		;void igEndPopup()
	    dll_rtn := DllCall(Cimgui_dll.igEndPopup)
	    return dll_rtn
	}
	
	igEndTabBar()
	{
		;void igEndTabBar()
	    dll_rtn := DllCall(Cimgui_dll.igEndTabBar)
	    return dll_rtn
	}
	
	igEndTabItem()
	{
		;void igEndTabItem()
	    dll_rtn := DllCall(Cimgui_dll.igEndTabItem)
	    return dll_rtn
	}
	
	igEndTable()
	{
		;void igEndTable()
	    dll_rtn := DllCall(Cimgui_dll.igEndTable)
	    return dll_rtn
	}
	
	igEndTooltip()
	{
		;void igEndTooltip()
	    dll_rtn := DllCall(Cimgui_dll.igEndTooltip)
	    return dll_rtn
	}
	
	igErrorCheckEndFrameRecover(log_callback, user_data := 0)
	{
		;void igErrorCheckEndFrameRecover(ImGuiErrorLogCallback log_callback, void* user_data)
	    dll_rtn := DllCall(Cimgui_dll.igErrorCheckEndFrameRecover, "ptr", log_callback, "ptr", user_data)
	    return dll_rtn
	}
	
	igErrorCheckEndWindowRecover(log_callback, user_data := 0)
	{
		;void igErrorCheckEndWindowRecover(ImGuiErrorLogCallback log_callback, void* user_data)
	    dll_rtn := DllCall(Cimgui_dll.igErrorCheckEndWindowRecover, "ptr", log_callback, "ptr", user_data)
	    return dll_rtn
	}
	
	igErrorCheckUsingSetCursorPosToExtendParentBoundaries()
	{
		;void igErrorCheckUsingSetCursorPosToExtendParentBoundaries()
	    dll_rtn := DllCall(Cimgui_dll.igErrorCheckUsingSetCursorPosToExtendParentBoundaries)
	    return dll_rtn
	}
	
	igFindBestWindowPosForPopup(pOut, window)
	{
		;void igFindBestWindowPosForPopup(ImVec2 *pOut, ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igFindBestWindowPosForPopup, "ptr", pOut, "ptr", window)
	    return dll_rtn
	}
	
	igFindBestWindowPosForPopupEx(pOut, ref_pos, size, &last_dir, r_outer, r_avoid, policy)
	{
		;void igFindBestWindowPosForPopupEx(ImVec2 *pOut, const ImVec2 ref_pos, const ImVec2 size, ImGuiDir* last_dir, const ImRect r_outer, const ImRect r_avoid, ImGuiPopupPositionPolicy policy)
	    dll_rtn := DllCall(Cimgui_dll.igFindBestWindowPosForPopupEx, "ptr", pOut, "int64", NumGet(ref_pos, "int64"), "int64", NumGet(size, "int64"), "int*", &last_dir, "ptr", r_outer, "ptr", r_avoid, "int", policy)
	    return dll_rtn
	}
	
	igFindBlockingModal(window)
	{
		;ImGuiWindow* igFindBlockingModal(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igFindBlockingModal, "ptr", window, "ptr")
	    return dll_rtn
	}
	
	igFindBottomMostVisibleWindowWithinBeginStack(window)
	{
		;ImGuiWindow* igFindBottomMostVisibleWindowWithinBeginStack(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igFindBottomMostVisibleWindowWithinBeginStack, "ptr", window, "ptr")
	    return dll_rtn
	}
	
	igFindHoveredViewportFromPlatformWindowStack(mouse_platform_pos)
	{
		;ImGuiViewportP* igFindHoveredViewportFromPlatformWindowStack(const ImVec2 mouse_platform_pos)
	    dll_rtn := DllCall(Cimgui_dll.igFindHoveredViewportFromPlatformWindowStack, "int64", NumGet(mouse_platform_pos, "int64"), "ptr")
	    return dll_rtn
	}
	
	igFindOrCreateColumns(window, id)
	{
		;ImGuiOldColumns* igFindOrCreateColumns(ImGuiWindow* window, ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igFindOrCreateColumns, "ptr", window, "uint", id, "ptr")
	    return dll_rtn
	}
	
	igFindRenderedTextEnd(text, text_end := 0)
	{
		;const char* igFindRenderedTextEnd(const char* text, const char* text_end)
	    dll_rtn := DllCall(Cimgui_dll.igFindRenderedTextEnd, "ptr", text, "ptr", text_end, "ptr")
	    return dll_rtn
	}
	
	igFindSettingsHandler(type_name)
	{
		;ImGuiSettingsHandler* igFindSettingsHandler(const char* type_name)
	    dll_rtn := DllCall(Cimgui_dll.igFindSettingsHandler, "ptr", type_name, "ptr")
	    return dll_rtn
	}
	
	igFindViewportByID(id)
	{
		;ImGuiViewport* igFindViewportByID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igFindViewportByID, "uint", id, "ptr")
	    return dll_rtn
	}
	
	igFindViewportByPlatformHandle(platform_handle)
	{
		;ImGuiViewport* igFindViewportByPlatformHandle(void* platform_handle)
	    dll_rtn := DllCall(Cimgui_dll.igFindViewportByPlatformHandle, "ptr", platform_handle, "ptr")
	    return dll_rtn
	}
	
	igFindWindowByID(id)
	{
		;ImGuiWindow* igFindWindowByID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igFindWindowByID, "uint", id, "ptr")
	    return dll_rtn
	}
	
	igFindWindowByName(name)
	{
		;ImGuiWindow* igFindWindowByName(const char* name)
	    dll_rtn := DllCall(Cimgui_dll.igFindWindowByName, "ptr", name, "ptr")
	    return dll_rtn
	}
	
	igFindWindowDisplayIndex(window)
	{
		;int igFindWindowDisplayIndex(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igFindWindowDisplayIndex, "ptr", window, "int")
	    return dll_rtn
	}
	
	igFindWindowSettingsByID(id)
	{
		;ImGuiWindowSettings* igFindWindowSettingsByID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igFindWindowSettingsByID, "uint", id, "ptr")
	    return dll_rtn
	}
	
	igFindWindowSettingsByWindow(window)
	{
		;ImGuiWindowSettings* igFindWindowSettingsByWindow(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igFindWindowSettingsByWindow, "ptr", window, "ptr")
	    return dll_rtn
	}
	
	igFocusItem()
	{
		;void igFocusItem()
	    dll_rtn := DllCall(Cimgui_dll.igFocusItem)
	    return dll_rtn
	}
	
	igFocusTopMostWindowUnderOne(under_this_window, ignore_window, filter_viewport, flags)
	{
		;void igFocusTopMostWindowUnderOne(ImGuiWindow* under_this_window, ImGuiWindow* ignore_window, ImGuiViewport* filter_viewport, ImGuiFocusRequestFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igFocusTopMostWindowUnderOne, "ptr", under_this_window, "ptr", ignore_window, "ptr", filter_viewport, "int", flags)
	    return dll_rtn
	}
	
	igFocusWindow(window, flags := 0)
	{
		;void igFocusWindow(ImGuiWindow* window, ImGuiFocusRequestFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igFocusWindow, "ptr", window, "int", flags)
	    return dll_rtn
	}
	
	igGcAwakeTransientWindowBuffers(window)
	{
		;void igGcAwakeTransientWindowBuffers(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igGcAwakeTransientWindowBuffers, "ptr", window)
	    return dll_rtn
	}
	
	igGcCompactTransientMiscBuffers()
	{
		;void igGcCompactTransientMiscBuffers()
	    dll_rtn := DllCall(Cimgui_dll.igGcCompactTransientMiscBuffers)
	    return dll_rtn
	}
	
	igGcCompactTransientWindowBuffers(window)
	{
		;void igGcCompactTransientWindowBuffers(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igGcCompactTransientWindowBuffers, "ptr", window)
	    return dll_rtn
	}
	
	igGetActiveID()
	{
		;ImGuiID igGetActiveID()
	    dll_rtn := DllCall(Cimgui_dll.igGetActiveID, "uint")
	    return dll_rtn
	}
	
	igGetAllocatorFunctions(&p_alloc_func, &p_free_func, &p_user_data)
	{
		;void igGetAllocatorFunctions(ImGuiMemAllocFunc* p_alloc_func, ImGuiMemFreeFunc* p_free_func, void** p_user_data)
	    dll_rtn := DllCall(Cimgui_dll.igGetAllocatorFunctions, "ptr*", &p_alloc_func, "ptr*", &p_free_func, "ptr*", &p_user_data)
	    return dll_rtn
	}
	
	igGetBackgroundDrawList_Nil()
	{
		;ImDrawList* igGetBackgroundDrawList_Nil()
	    dll_rtn := DllCall(Cimgui_dll.igGetBackgroundDrawList_Nil, "ptr")
	    return dll_rtn
	}
	
	igGetBackgroundDrawList_ViewportPtr(viewport)
	{
		;ImDrawList* igGetBackgroundDrawList_ViewportPtr(ImGuiViewport* viewport)
	    dll_rtn := DllCall(Cimgui_dll.igGetBackgroundDrawList_ViewportPtr, "ptr", viewport, "ptr")
	    return dll_rtn
	}
	
	igGetClipboardText()
	{
		;const char* igGetClipboardText()
	    dll_rtn := DllCall(Cimgui_dll.igGetClipboardText, "ptr")
	    return dll_rtn
	}
	
	igGetColorU32_Col(idx, alpha_mul := 1.0)
	{
		;ImU32 igGetColorU32_Col(ImGuiCol idx, float alpha_mul)
	    dll_rtn := DllCall(Cimgui_dll.igGetColorU32_Col, "int", idx, "float", alpha_mul, "uint")
	    return dll_rtn
	}
	
	igGetColorU32_Vec4(col)
	{
		;ImU32 igGetColorU32_Vec4(const ImVec4 col)
	    dll_rtn := DllCall(Cimgui_dll.igGetColorU32_Vec4, "ptr", col, "uint")
	    return dll_rtn
	}
	
	igGetColorU32_U32(col)
	{
		;ImU32 igGetColorU32_U32(ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igGetColorU32_U32, "uint", col, "uint")
	    return dll_rtn
	}
	
	igGetColumnIndex()
	{
		;int igGetColumnIndex()
	    dll_rtn := DllCall(Cimgui_dll.igGetColumnIndex, "int")
	    return dll_rtn
	}
	
	igGetColumnNormFromOffset(columns, offset)
	{
		;float igGetColumnNormFromOffset(const ImGuiOldColumns* columns, float offset)
	    dll_rtn := DllCall(Cimgui_dll.igGetColumnNormFromOffset, "ptr", columns, "float", offset, "float")
	    return dll_rtn
	}
	
	igGetColumnOffset(column_index := -1)
	{
		;float igGetColumnOffset(int column_index)
	    dll_rtn := DllCall(Cimgui_dll.igGetColumnOffset, "int", column_index, "float")
	    return dll_rtn
	}
	
	igGetColumnOffsetFromNorm(columns, offset_norm)
	{
		;float igGetColumnOffsetFromNorm(const ImGuiOldColumns* columns, float offset_norm)
	    dll_rtn := DllCall(Cimgui_dll.igGetColumnOffsetFromNorm, "ptr", columns, "float", offset_norm, "float")
	    return dll_rtn
	}
	
	igGetColumnWidth(column_index := -1)
	{
		;float igGetColumnWidth(int column_index)
	    dll_rtn := DllCall(Cimgui_dll.igGetColumnWidth, "int", column_index, "float")
	    return dll_rtn
	}
	
	igGetColumnsCount()
	{
		;int igGetColumnsCount()
	    dll_rtn := DllCall(Cimgui_dll.igGetColumnsCount, "int")
	    return dll_rtn
	}
	
	igGetColumnsID(str_id, count)
	{
		;ImGuiID igGetColumnsID(const char* str_id, int count)
	    dll_rtn := DllCall(Cimgui_dll.igGetColumnsID, "ptr", str_id, "int", count, "uint")
	    return dll_rtn
	}
	
	igGetContentRegionAvail(pOut)
	{
		;void igGetContentRegionAvail(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetContentRegionAvail, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetContentRegionMax(pOut)
	{
		;void igGetContentRegionMax(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetContentRegionMax, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetContentRegionMaxAbs(pOut)
	{
		;void igGetContentRegionMaxAbs(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetContentRegionMaxAbs, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetCurrentContext()
	{
		;ImGuiContext* igGetCurrentContext()
	    dll_rtn := DllCall(Cimgui_dll.igGetCurrentContext, "ptr")
	    return dll_rtn
	}
	
	igGetCurrentFocusScope()
	{
		;ImGuiID igGetCurrentFocusScope()
	    dll_rtn := DllCall(Cimgui_dll.igGetCurrentFocusScope, "uint")
	    return dll_rtn
	}
	
	igGetCurrentTabBar()
	{
		;ImGuiTabBar* igGetCurrentTabBar()
	    dll_rtn := DllCall(Cimgui_dll.igGetCurrentTabBar, "ptr")
	    return dll_rtn
	}
	
	igGetCurrentTable()
	{
		;ImGuiTable* igGetCurrentTable()
	    dll_rtn := DllCall(Cimgui_dll.igGetCurrentTable, "ptr")
	    return dll_rtn
	}
	
	igGetCurrentWindow()
	{
		;ImGuiWindow* igGetCurrentWindow()
	    dll_rtn := DllCall(Cimgui_dll.igGetCurrentWindow, "ptr")
	    return dll_rtn
	}
	
	igGetCurrentWindowRead()
	{
		;ImGuiWindow* igGetCurrentWindowRead()
	    dll_rtn := DllCall(Cimgui_dll.igGetCurrentWindowRead, "ptr")
	    return dll_rtn
	}
	
	igGetCursorPos(pOut)
	{
		;void igGetCursorPos(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetCursorPos, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetCursorPosX()
	{
		;float igGetCursorPosX()
	    dll_rtn := DllCall(Cimgui_dll.igGetCursorPosX, "float")
	    return dll_rtn
	}
	
	igGetCursorPosY()
	{
		;float igGetCursorPosY()
	    dll_rtn := DllCall(Cimgui_dll.igGetCursorPosY, "float")
	    return dll_rtn
	}
	
	igGetCursorScreenPos(pOut)
	{
		;void igGetCursorScreenPos(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetCursorScreenPos, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetCursorStartPos(pOut)
	{
		;void igGetCursorStartPos(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetCursorStartPos, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetDefaultFont()
	{
		;ImFont* igGetDefaultFont()
	    dll_rtn := DllCall(Cimgui_dll.igGetDefaultFont, "ptr")
	    return dll_rtn
	}
	
	igGetDragDropPayload()
	{
		;const ImGuiPayload* igGetDragDropPayload()
	    dll_rtn := DllCall(Cimgui_dll.igGetDragDropPayload, "ptr")
	    return dll_rtn
	}
	
	igGetDrawData()
	{
		;ImDrawData* igGetDrawData()
	    dll_rtn := DllCall(Cimgui_dll.igGetDrawData, "ptr")
	    return dll_rtn
	}
	
	igGetDrawListSharedData()
	{
		;ImDrawListSharedData* igGetDrawListSharedData()
	    dll_rtn := DllCall(Cimgui_dll.igGetDrawListSharedData, "ptr")
	    return dll_rtn
	}
	
	igGetFocusID()
	{
		;ImGuiID igGetFocusID()
	    dll_rtn := DllCall(Cimgui_dll.igGetFocusID, "uint")
	    return dll_rtn
	}
	
	igGetFont()
	{
		;ImFont* igGetFont()
	    dll_rtn := DllCall(Cimgui_dll.igGetFont, "ptr")
	    return dll_rtn
	}
	
	igGetFontSize()
	{
		;float igGetFontSize()
	    dll_rtn := DllCall(Cimgui_dll.igGetFontSize, "float")
	    return dll_rtn
	}
	
	igGetFontTexUvWhitePixel(pOut)
	{
		;void igGetFontTexUvWhitePixel(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetFontTexUvWhitePixel, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetForegroundDrawList_Nil()
	{
		;ImDrawList* igGetForegroundDrawList_Nil()
	    dll_rtn := DllCall(Cimgui_dll.igGetForegroundDrawList_Nil, "ptr")
	    return dll_rtn
	}
	
	igGetForegroundDrawList_ViewportPtr(viewport)
	{
		;ImDrawList* igGetForegroundDrawList_ViewportPtr(ImGuiViewport* viewport)
	    dll_rtn := DllCall(Cimgui_dll.igGetForegroundDrawList_ViewportPtr, "ptr", viewport, "ptr")
	    return dll_rtn
	}
	
	igGetForegroundDrawList_WindowPtr(window)
	{
		;ImDrawList* igGetForegroundDrawList_WindowPtr(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igGetForegroundDrawList_WindowPtr, "ptr", window, "ptr")
	    return dll_rtn
	}
	
	igGetFrameCount()
	{
		;int igGetFrameCount()
	    dll_rtn := DllCall(Cimgui_dll.igGetFrameCount, "int")
	    return dll_rtn
	}
	
	igGetFrameHeight()
	{
		;float igGetFrameHeight()
	    dll_rtn := DllCall(Cimgui_dll.igGetFrameHeight, "float")
	    return dll_rtn
	}
	
	igGetFrameHeightWithSpacing()
	{
		;float igGetFrameHeightWithSpacing()
	    dll_rtn := DllCall(Cimgui_dll.igGetFrameHeightWithSpacing, "float")
	    return dll_rtn
	}
	
	igGetHoveredID()
	{
		;ImGuiID igGetHoveredID()
	    dll_rtn := DllCall(Cimgui_dll.igGetHoveredID, "uint")
	    return dll_rtn
	}
	
	igGetID_Str(str_id)
	{
		;ImGuiID igGetID_Str(const char* str_id)
	    dll_rtn := DllCall(Cimgui_dll.igGetID_Str, "ptr", str_id, "uint")
	    return dll_rtn
	}
	
	igGetID_StrStr(str_id_begin, str_id_end)
	{
		;ImGuiID igGetID_StrStr(const char* str_id_begin, const char* str_id_end)
	    dll_rtn := DllCall(Cimgui_dll.igGetID_StrStr, "ptr", str_id_begin, "ptr", str_id_end, "uint")
	    return dll_rtn
	}
	
	igGetID_Ptr(ptr_id)
	{
		;ImGuiID igGetID_Ptr(const void* ptr_id)
	    dll_rtn := DllCall(Cimgui_dll.igGetID_Ptr, "ptr", ptr_id, "uint")
	    return dll_rtn
	}
	
	igGetIDWithSeed_Str(str_id_begin, str_id_end, seed)
	{
		;ImGuiID igGetIDWithSeed_Str(const char* str_id_begin, const char* str_id_end, ImGuiID seed)
	    dll_rtn := DllCall(Cimgui_dll.igGetIDWithSeed_Str, "ptr", str_id_begin, "ptr", str_id_end, "uint", seed, "uint")
	    return dll_rtn
	}
	
	igGetIDWithSeed_Int(n, seed)
	{
		;ImGuiID igGetIDWithSeed_Int(int n, ImGuiID seed)
	    dll_rtn := DllCall(Cimgui_dll.igGetIDWithSeed_Int, "int", n, "uint", seed, "uint")
	    return dll_rtn
	}
	
	igGetIO()
	{
		;ImGuiIO* igGetIO()
	    dll_rtn := DllCall(Cimgui_dll.igGetIO, "ptr")
	    return dll_rtn
	}
	
	igGetInputTextState(id)
	{
		;ImGuiInputTextState* igGetInputTextState(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igGetInputTextState, "uint", id, "ptr")
	    return dll_rtn
	}
	
	igGetItemFlags()
	{
		;ImGuiItemFlags igGetItemFlags()
	    dll_rtn := DllCall(Cimgui_dll.igGetItemFlags, "int")
	    return dll_rtn
	}
	
	igGetItemID()
	{
		;ImGuiID igGetItemID()
	    dll_rtn := DllCall(Cimgui_dll.igGetItemID, "uint")
	    return dll_rtn
	}
	
	igGetItemRectMax(pOut)
	{
		;void igGetItemRectMax(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetItemRectMax, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetItemRectMin(pOut)
	{
		;void igGetItemRectMin(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetItemRectMin, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetItemRectSize(pOut)
	{
		;void igGetItemRectSize(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetItemRectSize, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetItemStatusFlags()
	{
		;ImGuiItemStatusFlags igGetItemStatusFlags()
	    dll_rtn := DllCall(Cimgui_dll.igGetItemStatusFlags, "int")
	    return dll_rtn
	}
	
	igGetKeyChordName(key_chord, out_buf, out_buf_size)
	{
		;void igGetKeyChordName(ImGuiKeyChord key_chord, char* out_buf, int out_buf_size)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyChordName, "int", key_chord, "ptr", out_buf, "int", out_buf_size)
	    return dll_rtn
	}
	
	igGetKeyData_ContextPtr(ctx, key)
	{
		;ImGuiKeyData* igGetKeyData_ContextPtr(ImGuiContext* ctx, ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyData_ContextPtr, "ptr", ctx, "int", key, "ptr")
	    return dll_rtn
	}
	
	igGetKeyData_Key(key)
	{
		;ImGuiKeyData* igGetKeyData_Key(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyData_Key, "int", key, "ptr")
	    return dll_rtn
	}
	
	igGetKeyIndex(key)
	{
		;ImGuiKey igGetKeyIndex(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyIndex, "int", key, "int")
	    return dll_rtn
	}
	
	igGetKeyMagnitude2d(pOut, key_left, key_right, key_up, key_down)
	{
		;void igGetKeyMagnitude2d(ImVec2 *pOut, ImGuiKey key_left, ImGuiKey key_right, ImGuiKey key_up, ImGuiKey key_down)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyMagnitude2d, "ptr", pOut, "int", key_left, "int", key_right, "int", key_up, "int", key_down)
	    return dll_rtn
	}
	
	igGetKeyName(key)
	{
		;const char* igGetKeyName(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyName, "int", key, "ptr")
	    return dll_rtn
	}
	
	igGetKeyOwner(key)
	{
		;ImGuiID igGetKeyOwner(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyOwner, "int", key, "uint")
	    return dll_rtn
	}
	
	igGetKeyOwnerData(ctx, key)
	{
		;ImGuiKeyOwnerData* igGetKeyOwnerData(ImGuiContext* ctx, ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyOwnerData, "ptr", ctx, "int", key, "ptr")
	    return dll_rtn
	}
	
	igGetKeyPressedAmount(key, repeat_delay, rate)
	{
		;int igGetKeyPressedAmount(ImGuiKey key, float repeat_delay, float rate)
	    dll_rtn := DllCall(Cimgui_dll.igGetKeyPressedAmount, "int", key, "float", repeat_delay, "float", rate, "int")
	    return dll_rtn
	}
	
	igGetMainViewport()
	{
		;ImGuiViewport* igGetMainViewport()
	    dll_rtn := DllCall(Cimgui_dll.igGetMainViewport, "ptr")
	    return dll_rtn
	}
	
	igGetMouseClickedCount(button)
	{
		;int igGetMouseClickedCount(ImGuiMouseButton button)
	    dll_rtn := DllCall(Cimgui_dll.igGetMouseClickedCount, "int", button, "int")
	    return dll_rtn
	}
	
	igGetMouseCursor()
	{
		;ImGuiMouseCursor igGetMouseCursor()
	    dll_rtn := DllCall(Cimgui_dll.igGetMouseCursor, "int")
	    return dll_rtn
	}
	
	igGetMouseDragDelta(pOut, button := 0, lock_threshold := -1.0)
	{
		;void igGetMouseDragDelta(ImVec2 *pOut, ImGuiMouseButton button, float lock_threshold)
	    dll_rtn := DllCall(Cimgui_dll.igGetMouseDragDelta, "ptr", pOut, "int", button, "float", lock_threshold)
	    return dll_rtn
	}
	
	igGetMousePos(pOut)
	{
		;void igGetMousePos(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetMousePos, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetMousePosOnOpeningCurrentPopup(pOut)
	{
		;void igGetMousePosOnOpeningCurrentPopup(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetMousePosOnOpeningCurrentPopup, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetNavTweakPressedAmount(axis)
	{
		;float igGetNavTweakPressedAmount(ImGuiAxis axis)
	    dll_rtn := DllCall(Cimgui_dll.igGetNavTweakPressedAmount, "int", axis, "float")
	    return dll_rtn
	}
	
	igGetPlatformIO()
	{
		;ImGuiPlatformIO* igGetPlatformIO()
	    dll_rtn := DllCall(Cimgui_dll.igGetPlatformIO, "ptr")
	    return dll_rtn
	}
	
	igGetPopupAllowedExtentRect(pOut, window)
	{
		;void igGetPopupAllowedExtentRect(ImRect *pOut, ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igGetPopupAllowedExtentRect, "ptr", pOut, "ptr", window)
	    return dll_rtn
	}
	
	igGetScrollMaxX()
	{
		;float igGetScrollMaxX()
	    dll_rtn := DllCall(Cimgui_dll.igGetScrollMaxX, "float")
	    return dll_rtn
	}
	
	igGetScrollMaxY()
	{
		;float igGetScrollMaxY()
	    dll_rtn := DllCall(Cimgui_dll.igGetScrollMaxY, "float")
	    return dll_rtn
	}
	
	igGetScrollX()
	{
		;float igGetScrollX()
	    dll_rtn := DllCall(Cimgui_dll.igGetScrollX, "float")
	    return dll_rtn
	}
	
	igGetScrollY()
	{
		;float igGetScrollY()
	    dll_rtn := DllCall(Cimgui_dll.igGetScrollY, "float")
	    return dll_rtn
	}
	
	igGetShortcutRoutingData(key_chord)
	{
		;ImGuiKeyRoutingData* igGetShortcutRoutingData(ImGuiKeyChord key_chord)
	    dll_rtn := DllCall(Cimgui_dll.igGetShortcutRoutingData, "int", key_chord, "ptr")
	    return dll_rtn
	}
	
	igGetStateStorage()
	{
		;ImGuiStorage* igGetStateStorage()
	    dll_rtn := DllCall(Cimgui_dll.igGetStateStorage, "ptr")
	    return dll_rtn
	}
	
	igGetStyle()
	{
		;ImGuiStyle* igGetStyle()
	    dll_rtn := DllCall(Cimgui_dll.igGetStyle, "ptr")
	    return dll_rtn
	}
	
	igGetStyleColorName(idx)
	{
		;const char* igGetStyleColorName(ImGuiCol idx)
	    dll_rtn := DllCall(Cimgui_dll.igGetStyleColorName, "int", idx, "ptr")
	    return dll_rtn
	}
	
	igGetStyleColorVec4(idx)
	{
		;const ImVec4* igGetStyleColorVec4(ImGuiCol idx)
	    dll_rtn := DllCall(Cimgui_dll.igGetStyleColorVec4, "int", idx, "ptr")
	    return dll_rtn
	}
	
	igGetStyleVarInfo(idx)
	{
		;const ImGuiDataVarInfo* igGetStyleVarInfo(ImGuiStyleVar idx)
	    dll_rtn := DllCall(Cimgui_dll.igGetStyleVarInfo, "int", idx, "ptr")
	    return dll_rtn
	}
	
	igGetTextLineHeight()
	{
		;float igGetTextLineHeight()
	    dll_rtn := DllCall(Cimgui_dll.igGetTextLineHeight, "float")
	    return dll_rtn
	}
	
	igGetTextLineHeightWithSpacing()
	{
		;float igGetTextLineHeightWithSpacing()
	    dll_rtn := DllCall(Cimgui_dll.igGetTextLineHeightWithSpacing, "float")
	    return dll_rtn
	}
	
	igGetTime()
	{
		;double igGetTime()
	    dll_rtn := DllCall(Cimgui_dll.igGetTime, "double")
	    return dll_rtn
	}
	
	igGetTopMostAndVisiblePopupModal()
	{
		;ImGuiWindow* igGetTopMostAndVisiblePopupModal()
	    dll_rtn := DllCall(Cimgui_dll.igGetTopMostAndVisiblePopupModal, "ptr")
	    return dll_rtn
	}
	
	igGetTopMostPopupModal()
	{
		;ImGuiWindow* igGetTopMostPopupModal()
	    dll_rtn := DllCall(Cimgui_dll.igGetTopMostPopupModal, "ptr")
	    return dll_rtn
	}
	
	igGetTreeNodeToLabelSpacing()
	{
		;float igGetTreeNodeToLabelSpacing()
	    dll_rtn := DllCall(Cimgui_dll.igGetTreeNodeToLabelSpacing, "float")
	    return dll_rtn
	}
	
	igGetTypematicRepeatRate(flags, &repeat_delay, &repeat_rate)
	{
		;void igGetTypematicRepeatRate(ImGuiInputFlags flags, float* repeat_delay, float* repeat_rate)
	    dll_rtn := DllCall(Cimgui_dll.igGetTypematicRepeatRate, "int", flags, "float*", &repeat_delay, "float*", &repeat_rate)
	    return dll_rtn
	}
	
	igGetVersion()
	{
		;const char* igGetVersion()
	    dll_rtn := DllCall(Cimgui_dll.igGetVersion, "ptr")
	    return dll_rtn
	}
	
	igGetViewportPlatformMonitor(viewport)
	{
		;const ImGuiPlatformMonitor* igGetViewportPlatformMonitor(ImGuiViewport* viewport)
	    dll_rtn := DllCall(Cimgui_dll.igGetViewportPlatformMonitor, "ptr", viewport, "ptr")
	    return dll_rtn
	}
	
	igGetWindowAlwaysWantOwnTabBar(window)
	{
		;bool igGetWindowAlwaysWantOwnTabBar(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowAlwaysWantOwnTabBar, "ptr", window, "char")
	    return dll_rtn
	}
	
	igGetWindowContentRegionMax(pOut)
	{
		;void igGetWindowContentRegionMax(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowContentRegionMax, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetWindowContentRegionMin(pOut)
	{
		;void igGetWindowContentRegionMin(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowContentRegionMin, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetWindowDockID()
	{
		;ImGuiID igGetWindowDockID()
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowDockID, "uint")
	    return dll_rtn
	}
	
	igGetWindowDockNode()
	{
		;ImGuiDockNode* igGetWindowDockNode()
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowDockNode, "ptr")
	    return dll_rtn
	}
	
	igGetWindowDpiScale()
	{
		;float igGetWindowDpiScale()
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowDpiScale, "float")
	    return dll_rtn
	}
	
	igGetWindowDrawList()
	{
		;ImDrawList* igGetWindowDrawList()
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowDrawList, "ptr")
	    return dll_rtn
	}
	
	igGetWindowHeight()
	{
		;float igGetWindowHeight()
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowHeight, "float")
	    return dll_rtn
	}
	
	igGetWindowPos(pOut)
	{
		;void igGetWindowPos(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowPos, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetWindowResizeBorderID(window, dir)
	{
		;ImGuiID igGetWindowResizeBorderID(ImGuiWindow* window, ImGuiDir dir)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowResizeBorderID, "ptr", window, "int", dir, "uint")
	    return dll_rtn
	}
	
	igGetWindowResizeCornerID(window, n)
	{
		;ImGuiID igGetWindowResizeCornerID(ImGuiWindow* window, int n)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowResizeCornerID, "ptr", window, "int", n, "uint")
	    return dll_rtn
	}
	
	igGetWindowScrollbarID(window, axis)
	{
		;ImGuiID igGetWindowScrollbarID(ImGuiWindow* window, ImGuiAxis axis)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowScrollbarID, "ptr", window, "int", axis, "uint")
	    return dll_rtn
	}
	
	igGetWindowScrollbarRect(pOut, window, axis)
	{
		;void igGetWindowScrollbarRect(ImRect *pOut, ImGuiWindow* window, ImGuiAxis axis)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowScrollbarRect, "ptr", pOut, "ptr", window, "int", axis)
	    return dll_rtn
	}
	
	igGetWindowSize(pOut)
	{
		;void igGetWindowSize(ImVec2 *pOut)
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowSize, "ptr", pOut)
	    return dll_rtn
	}
	
	igGetWindowViewport()
	{
		;ImGuiViewport* igGetWindowViewport()
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowViewport, "ptr")
	    return dll_rtn
	}
	
	igGetWindowWidth()
	{
		;float igGetWindowWidth()
	    dll_rtn := DllCall(Cimgui_dll.igGetWindowWidth, "float")
	    return dll_rtn
	}
	
	igImAbs_Int(x)
	{
		;int igImAbs_Int(int x)
	    dll_rtn := DllCall(Cimgui_dll.igImAbs_Int, "int", x, "int")
	    return dll_rtn
	}
	
	igImAbs_Float(x)
	{
		;float igImAbs_Float(float x)
	    dll_rtn := DllCall(Cimgui_dll.igImAbs_Float, "float", x, "float")
	    return dll_rtn
	}
	
	igImAbs_double(x)
	{
		;double igImAbs_double(double x)
	    dll_rtn := DllCall(Cimgui_dll.igImAbs_double, "double", x, "double")
	    return dll_rtn
	}
	
	igImAlphaBlendColors(col_a, col_b)
	{
		;ImU32 igImAlphaBlendColors(ImU32 col_a, ImU32 col_b)
	    dll_rtn := DllCall(Cimgui_dll.igImAlphaBlendColors, "uint", col_a, "uint", col_b, "uint")
	    return dll_rtn
	}
	
	igImBezierCubicCalc(pOut, p1, p2, p3, p4, t)
	{
		;void igImBezierCubicCalc(ImVec2 *pOut, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, const ImVec2 p4, float t)
	    dll_rtn := DllCall(Cimgui_dll.igImBezierCubicCalc, "ptr", pOut, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int64", NumGet(p4, "int64"), "float", t)
	    return dll_rtn
	}
	
	igImBezierCubicClosestPoint(pOut, p1, p2, p3, p4, p, num_segments)
	{
		;void igImBezierCubicClosestPoint(ImVec2 *pOut, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, const ImVec2 p4, const ImVec2 p, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.igImBezierCubicClosestPoint, "ptr", pOut, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int64", NumGet(p4, "int64"), "int64", NumGet(p, "int64"), "int", num_segments)
	    return dll_rtn
	}
	
	igImBezierCubicClosestPointCasteljau(pOut, p1, p2, p3, p4, p, tess_tol)
	{
		;void igImBezierCubicClosestPointCasteljau(ImVec2 *pOut, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, const ImVec2 p4, const ImVec2 p, float tess_tol)
	    dll_rtn := DllCall(Cimgui_dll.igImBezierCubicClosestPointCasteljau, "ptr", pOut, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int64", NumGet(p4, "int64"), "int64", NumGet(p, "int64"), "float", tess_tol)
	    return dll_rtn
	}
	
	igImBezierQuadraticCalc(pOut, p1, p2, p3, t)
	{
		;void igImBezierQuadraticCalc(ImVec2 *pOut, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, float t)
	    dll_rtn := DllCall(Cimgui_dll.igImBezierQuadraticCalc, "ptr", pOut, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "float", t)
	    return dll_rtn
	}
	
	igImBitArrayClearAllBits(&arr, bitcount)
	{
		;void igImBitArrayClearAllBits(ImU32* arr, int bitcount)
	    dll_rtn := DllCall(Cimgui_dll.igImBitArrayClearAllBits, "uint*", &arr, "int", bitcount)
	    return dll_rtn
	}
	
	igImBitArrayClearBit(&arr, n)
	{
		;void igImBitArrayClearBit(ImU32* arr, int n)
	    dll_rtn := DllCall(Cimgui_dll.igImBitArrayClearBit, "uint*", &arr, "int", n)
	    return dll_rtn
	}
	
	igImBitArrayGetStorageSizeInBytes(bitcount)
	{
		;size_t igImBitArrayGetStorageSizeInBytes(int bitcount)
	    dll_rtn := DllCall(Cimgui_dll.igImBitArrayGetStorageSizeInBytes, "int", bitcount, "uptr")
	    return dll_rtn
	}
	
	igImBitArraySetBit(&arr, n)
	{
		;void igImBitArraySetBit(ImU32* arr, int n)
	    dll_rtn := DllCall(Cimgui_dll.igImBitArraySetBit, "uint*", &arr, "int", n)
	    return dll_rtn
	}
	
	igImBitArraySetBitRange(&arr, n, n2)
	{
		;void igImBitArraySetBitRange(ImU32* arr, int n, int n2)
	    dll_rtn := DllCall(Cimgui_dll.igImBitArraySetBitRange, "uint*", &arr, "int", n, "int", n2)
	    return dll_rtn
	}
	
	igImBitArrayTestBit(&arr, n)
	{
		;bool igImBitArrayTestBit(const ImU32* arr, int n)
	    dll_rtn := DllCall(Cimgui_dll.igImBitArrayTestBit, "uint*", &arr, "int", n, "char")
	    return dll_rtn
	}
	
	igImCharIsBlankA(c)
	{
		;bool igImCharIsBlankA(char c)
	    dll_rtn := DllCall(Cimgui_dll.igImCharIsBlankA, "char", c, "char")
	    return dll_rtn
	}
	
	igImCharIsBlankW(c)
	{
		;bool igImCharIsBlankW(unsigned int c)
	    dll_rtn := DllCall(Cimgui_dll.igImCharIsBlankW, "uint", c, "char")
	    return dll_rtn
	}
	
	igImClamp(pOut, v, mn, mx)
	{
		;void igImClamp(ImVec2 *pOut, const ImVec2 v, const ImVec2 mn, ImVec2 mx)
	    dll_rtn := DllCall(Cimgui_dll.igImClamp, "ptr", pOut, "int64", NumGet(v, "int64"), "int64", NumGet(mn, "int64"), "int64", NumGet(mx, "int64"))
	    return dll_rtn
	}
	
	igImDot(a, b)
	{
		;float igImDot(const ImVec2 a, const ImVec2 b)
	    dll_rtn := DllCall(Cimgui_dll.igImDot, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "float")
	    return dll_rtn
	}
	
	igImExponentialMovingAverage(avg, sample, n)
	{
		;float igImExponentialMovingAverage(float avg, float sample, int n)
	    dll_rtn := DllCall(Cimgui_dll.igImExponentialMovingAverage, "float", avg, "float", sample, "int", n, "float")
	    return dll_rtn
	}
	
	igImFileClose(file)
	{
		;bool igImFileClose(ImFileHandle file)
	    dll_rtn := DllCall(Cimgui_dll.igImFileClose, "ptr", file, "char")
	    return dll_rtn
	}
	
	igImFileGetSize(file)
	{
		;ImU64 igImFileGetSize(ImFileHandle file)
	    dll_rtn := DllCall(Cimgui_dll.igImFileGetSize, "ptr", file, "uint64")
	    return dll_rtn
	}
	
	igImFileLoadToMemory(filename, mode, &out_file_size := 0, padding_bytes := 0)
	{
		;void* igImFileLoadToMemory(const char* filename, const char* mode, size_t* out_file_size, int padding_bytes)
	    dll_rtn := DllCall(Cimgui_dll.igImFileLoadToMemory, "ptr", filename, "ptr", mode, "uptr*", &out_file_size, "int", padding_bytes, "ptr")
	    return dll_rtn
	}
	
	igImFileOpen(filename, mode)
	{
		;ImFileHandle igImFileOpen(const char* filename, const char* mode)
	    dll_rtn := DllCall(Cimgui_dll.igImFileOpen, "ptr", filename, "ptr", mode, "ptr")
	    return dll_rtn
	}
	
	igImFileRead(data, size, count, file)
	{
		;ImU64 igImFileRead(void* data, ImU64 size, ImU64 count, ImFileHandle file)
	    dll_rtn := DllCall(Cimgui_dll.igImFileRead, "ptr", data, "uint64", size, "uint64", count, "ptr", file, "uint64")
	    return dll_rtn
	}
	
	igImFileWrite(data, size, count, file)
	{
		;ImU64 igImFileWrite(const void* data, ImU64 size, ImU64 count, ImFileHandle file)
	    dll_rtn := DllCall(Cimgui_dll.igImFileWrite, "ptr", data, "uint64", size, "uint64", count, "ptr", file, "uint64")
	    return dll_rtn
	}
	
	igImFloor_Float(f)
	{
		;float igImFloor_Float(float f)
	    dll_rtn := DllCall(Cimgui_dll.igImFloor_Float, "float", f, "float")
	    return dll_rtn
	}
	
	igImFloor_Vec2(pOut, v)
	{
		;void igImFloor_Vec2(ImVec2 *pOut, const ImVec2 v)
	    dll_rtn := DllCall(Cimgui_dll.igImFloor_Vec2, "ptr", pOut, "int64", NumGet(v, "int64"))
	    return dll_rtn
	}
	
	igImFloorSigned_Float(f)
	{
		;float igImFloorSigned_Float(float f)
	    dll_rtn := DllCall(Cimgui_dll.igImFloorSigned_Float, "float", f, "float")
	    return dll_rtn
	}
	
	igImFloorSigned_Vec2(pOut, v)
	{
		;void igImFloorSigned_Vec2(ImVec2 *pOut, const ImVec2 v)
	    dll_rtn := DllCall(Cimgui_dll.igImFloorSigned_Vec2, "ptr", pOut, "int64", NumGet(v, "int64"))
	    return dll_rtn
	}
	
	igImFontAtlasBuildFinish(atlas)
	{
		;void igImFontAtlasBuildFinish(ImFontAtlas* atlas)
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasBuildFinish, "ptr", atlas)
	    return dll_rtn
	}
	
	igImFontAtlasBuildInit(atlas)
	{
		;void igImFontAtlasBuildInit(ImFontAtlas* atlas)
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasBuildInit, "ptr", atlas)
	    return dll_rtn
	}
	
	igImFontAtlasBuildMultiplyCalcLookupTable(out_table, in_multiply_factor)
	{
		;void igImFontAtlasBuildMultiplyCalcLookupTable(unsigned char out_table[256], float in_multiply_factor)
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasBuildMultiplyCalcLookupTable, "ptr", out_table, "float", in_multiply_factor)
	    return dll_rtn
	}
	
	igImFontAtlasBuildMultiplyRectAlpha8(table, &pixels, x, y, w, h, stride)
	{
		;void igImFontAtlasBuildMultiplyRectAlpha8(const unsigned char table[256], unsigned char* pixels, int x, int y, int w, int h, int stride)
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasBuildMultiplyRectAlpha8, "ptr", table, "uchar*", &pixels, "int", x, "int", y, "int", w, "int", h, "int", stride)
	    return dll_rtn
	}
	
	igImFontAtlasBuildPackCustomRects(atlas, stbrp_context_opaque)
	{
		;void igImFontAtlasBuildPackCustomRects(ImFontAtlas* atlas, void* stbrp_context_opaque)
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasBuildPackCustomRects, "ptr", atlas, "ptr", stbrp_context_opaque)
	    return dll_rtn
	}
	
	igImFontAtlasBuildRender32bppRectFromString(atlas, x, y, w, h, in_str, in_marker_char, in_marker_pixel_value)
	{
		;void igImFontAtlasBuildRender32bppRectFromString(ImFontAtlas* atlas, int x, int y, int w, int h, const char* in_str, char in_marker_char, unsigned int in_marker_pixel_value)
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasBuildRender32bppRectFromString, "ptr", atlas, "int", x, "int", y, "int", w, "int", h, "ptr", in_str, "char", in_marker_char, "uint", in_marker_pixel_value)
	    return dll_rtn
	}
	
	igImFontAtlasBuildRender8bppRectFromString(atlas, x, y, w, h, in_str, in_marker_char, in_marker_pixel_value)
	{
		;void igImFontAtlasBuildRender8bppRectFromString(ImFontAtlas* atlas, int x, int y, int w, int h, const char* in_str, char in_marker_char, unsigned char in_marker_pixel_value)
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasBuildRender8bppRectFromString, "ptr", atlas, "int", x, "int", y, "int", w, "int", h, "ptr", in_str, "char", in_marker_char, "uchar", in_marker_pixel_value)
	    return dll_rtn
	}
	
	igImFontAtlasBuildSetupFont(atlas, font, font_config, ascent, descent)
	{
		;void igImFontAtlasBuildSetupFont(ImFontAtlas* atlas, ImFont* font, ImFontConfig* font_config, float ascent, float descent)
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasBuildSetupFont, "ptr", atlas, "ptr", font, "ptr", font_config, "float", ascent, "float", descent)
	    return dll_rtn
	}
	
	igImFontAtlasGetBuilderForStbTruetype()
	{
		;const ImFontBuilderIO* igImFontAtlasGetBuilderForStbTruetype()
	    dll_rtn := DllCall(Cimgui_dll.igImFontAtlasGetBuilderForStbTruetype, "ptr")
	    return dll_rtn
	}
	
	igImFormatString(buf, buf_size, fmt, p*)
	{
		;int igImFormatString(char* buf, size_t buf_size, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igImFormatString, "ptr", buf, "uptr", buf_size, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igImFormatStringToTempBuffer(out_buf, out_buf_end, fmt, p*)
	{
		;void igImFormatStringToTempBuffer(const char** out_buf, const char** out_buf_end, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igImFormatStringToTempBuffer, "ptr", out_buf, "ptr", out_buf_end, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igImFormatStringToTempBufferV(out_buf, out_buf_end, fmt, args)
	{
		;void igImFormatStringToTempBufferV(const char** out_buf, const char** out_buf_end, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igImFormatStringToTempBufferV, "ptr", out_buf, "ptr", out_buf_end, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igImFormatStringV(buf, buf_size, fmt, args)
	{
		;int igImFormatStringV(char* buf, size_t buf_size, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igImFormatStringV, "ptr", buf, "uptr", buf_size, "ptr", fmt, "ptr", args, "int")
	    return dll_rtn
	}
	
	igImHashData(data, data_size, seed := 0)
	{
		;ImGuiID igImHashData(const void* data, size_t data_size, ImGuiID seed)
	    dll_rtn := DllCall(Cimgui_dll.igImHashData, "ptr", data, "uptr", data_size, "uint", seed, "uint")
	    return dll_rtn
	}
	
	igImHashStr(data, data_size := 0, seed := 0)
	{
		;ImGuiID igImHashStr(const char* data, size_t data_size, ImGuiID seed)
	    dll_rtn := DllCall(Cimgui_dll.igImHashStr, "ptr", data, "uptr", data_size, "uint", seed, "uint")
	    return dll_rtn
	}
	
	igImInvLength(lhs, fail_value)
	{
		;float igImInvLength(const ImVec2 lhs, float fail_value)
	    dll_rtn := DllCall(Cimgui_dll.igImInvLength, "int64", NumGet(lhs, "int64"), "float", fail_value, "float")
	    return dll_rtn
	}
	
	igImIsFloatAboveGuaranteedIntegerPrecision(f)
	{
		;bool igImIsFloatAboveGuaranteedIntegerPrecision(float f)
	    dll_rtn := DllCall(Cimgui_dll.igImIsFloatAboveGuaranteedIntegerPrecision, "float", f, "char")
	    return dll_rtn
	}
	
	igImIsPowerOfTwo_Int(v)
	{
		;bool igImIsPowerOfTwo_Int(int v)
	    dll_rtn := DllCall(Cimgui_dll.igImIsPowerOfTwo_Int, "int", v, "char")
	    return dll_rtn
	}
	
	igImIsPowerOfTwo_U64(v)
	{
		;bool igImIsPowerOfTwo_U64(ImU64 v)
	    dll_rtn := DllCall(Cimgui_dll.igImIsPowerOfTwo_U64, "uint64", v, "char")
	    return dll_rtn
	}
	
	igImLengthSqr_Vec2(lhs)
	{
		;float igImLengthSqr_Vec2(const ImVec2 lhs)
	    dll_rtn := DllCall(Cimgui_dll.igImLengthSqr_Vec2, "int64", NumGet(lhs, "int64"), "float")
	    return dll_rtn
	}
	
	igImLengthSqr_Vec4(lhs)
	{
		;float igImLengthSqr_Vec4(const ImVec4 lhs)
	    dll_rtn := DllCall(Cimgui_dll.igImLengthSqr_Vec4, "ptr", lhs, "float")
	    return dll_rtn
	}
	
	igImLerp_Vec2Float(pOut, a, b, t)
	{
		;void igImLerp_Vec2Float(ImVec2 *pOut, const ImVec2 a, const ImVec2 b, float t)
	    dll_rtn := DllCall(Cimgui_dll.igImLerp_Vec2Float, "ptr", pOut, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "float", t)
	    return dll_rtn
	}
	
	igImLerp_Vec2Vec2(pOut, a, b, t)
	{
		;void igImLerp_Vec2Vec2(ImVec2 *pOut, const ImVec2 a, const ImVec2 b, const ImVec2 t)
	    dll_rtn := DllCall(Cimgui_dll.igImLerp_Vec2Vec2, "ptr", pOut, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(t, "int64"))
	    return dll_rtn
	}
	
	igImLerp_Vec4(pOut, a, b, t)
	{
		;void igImLerp_Vec4(ImVec4 *pOut, const ImVec4 a, const ImVec4 b, float t)
	    dll_rtn := DllCall(Cimgui_dll.igImLerp_Vec4, "ptr", pOut, "ptr", a, "ptr", b, "float", t)
	    return dll_rtn
	}
	
	igImLineClosestPoint(pOut, a, b, p)
	{
		;void igImLineClosestPoint(ImVec2 *pOut, const ImVec2 a, const ImVec2 b, const ImVec2 p)
	    dll_rtn := DllCall(Cimgui_dll.igImLineClosestPoint, "ptr", pOut, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(p, "int64"))
	    return dll_rtn
	}
	
	igImLinearSweep(current, target, speed)
	{
		;float igImLinearSweep(float current, float target, float speed)
	    dll_rtn := DllCall(Cimgui_dll.igImLinearSweep, "float", current, "float", target, "float", speed, "float")
	    return dll_rtn
	}
	
	igImLog_Float(x)
	{
		;float igImLog_Float(float x)
	    dll_rtn := DllCall(Cimgui_dll.igImLog_Float, "float", x, "float")
	    return dll_rtn
	}
	
	igImLog_double(x)
	{
		;double igImLog_double(double x)
	    dll_rtn := DllCall(Cimgui_dll.igImLog_double, "double", x, "double")
	    return dll_rtn
	}
	
	igImMax(pOut, lhs, rhs)
	{
		;void igImMax(ImVec2 *pOut, const ImVec2 lhs, const ImVec2 rhs)
	    dll_rtn := DllCall(Cimgui_dll.igImMax, "ptr", pOut, "int64", NumGet(lhs, "int64"), "int64", NumGet(rhs, "int64"))
	    return dll_rtn
	}
	
	igImMin(pOut, lhs, rhs)
	{
		;void igImMin(ImVec2 *pOut, const ImVec2 lhs, const ImVec2 rhs)
	    dll_rtn := DllCall(Cimgui_dll.igImMin, "ptr", pOut, "int64", NumGet(lhs, "int64"), "int64", NumGet(rhs, "int64"))
	    return dll_rtn
	}
	
	igImModPositive(a, b)
	{
		;int igImModPositive(int a, int b)
	    dll_rtn := DllCall(Cimgui_dll.igImModPositive, "int", a, "int", b, "int")
	    return dll_rtn
	}
	
	igImMul(pOut, lhs, rhs)
	{
		;void igImMul(ImVec2 *pOut, const ImVec2 lhs, const ImVec2 rhs)
	    dll_rtn := DllCall(Cimgui_dll.igImMul, "ptr", pOut, "int64", NumGet(lhs, "int64"), "int64", NumGet(rhs, "int64"))
	    return dll_rtn
	}
	
	igImParseFormatFindEnd(format)
	{
		;const char* igImParseFormatFindEnd(const char* format)
	    dll_rtn := DllCall(Cimgui_dll.igImParseFormatFindEnd, "ptr", format, "ptr")
	    return dll_rtn
	}
	
	igImParseFormatFindStart(format)
	{
		;const char* igImParseFormatFindStart(const char* format)
	    dll_rtn := DllCall(Cimgui_dll.igImParseFormatFindStart, "ptr", format, "ptr")
	    return dll_rtn
	}
	
	igImParseFormatPrecision(format, default_value)
	{
		;int igImParseFormatPrecision(const char* format, int default_value)
	    dll_rtn := DllCall(Cimgui_dll.igImParseFormatPrecision, "ptr", format, "int", default_value, "int")
	    return dll_rtn
	}
	
	igImParseFormatSanitizeForPrinting(fmt_in, fmt_out, fmt_out_size)
	{
		;void igImParseFormatSanitizeForPrinting(const char* fmt_in, char* fmt_out, size_t fmt_out_size)
	    dll_rtn := DllCall(Cimgui_dll.igImParseFormatSanitizeForPrinting, "ptr", fmt_in, "ptr", fmt_out, "uptr", fmt_out_size)
	    return dll_rtn
	}
	
	igImParseFormatSanitizeForScanning(fmt_in, fmt_out, fmt_out_size)
	{
		;const char* igImParseFormatSanitizeForScanning(const char* fmt_in, char* fmt_out, size_t fmt_out_size)
	    dll_rtn := DllCall(Cimgui_dll.igImParseFormatSanitizeForScanning, "ptr", fmt_in, "ptr", fmt_out, "uptr", fmt_out_size, "ptr")
	    return dll_rtn
	}
	
	igImParseFormatTrimDecorations(format, buf, buf_size)
	{
		;const char* igImParseFormatTrimDecorations(const char* format, char* buf, size_t buf_size)
	    dll_rtn := DllCall(Cimgui_dll.igImParseFormatTrimDecorations, "ptr", format, "ptr", buf, "uptr", buf_size, "ptr")
	    return dll_rtn
	}
	
	igImPow_Float(x, y)
	{
		;float igImPow_Float(float x, float y)
	    dll_rtn := DllCall(Cimgui_dll.igImPow_Float, "float", x, "float", y, "float")
	    return dll_rtn
	}
	
	igImPow_double(x, y)
	{
		;double igImPow_double(double x, double y)
	    dll_rtn := DllCall(Cimgui_dll.igImPow_double, "double", x, "double", y, "double")
	    return dll_rtn
	}
	
	igImQsort(base, count, size_of_element, compare_func)
	{
		;void igImQsort(void* base, size_t count, size_t size_of_element, int(*compare_func)(void const*, void const*))
	    dll_rtn := DllCall(Cimgui_dll.igImQsort, "ptr", base, "uptr", count, "uptr", size_of_element, "ptr", compare_func)
	    return dll_rtn
	}
	
	igImRotate(pOut, v, cos_a, sin_a)
	{
		;void igImRotate(ImVec2 *pOut, const ImVec2 v, float cos_a, float sin_a)
	    dll_rtn := DllCall(Cimgui_dll.igImRotate, "ptr", pOut, "int64", NumGet(v, "int64"), "float", cos_a, "float", sin_a)
	    return dll_rtn
	}
	
	igImRsqrt_Float(x)
	{
		;float igImRsqrt_Float(float x)
	    dll_rtn := DllCall(Cimgui_dll.igImRsqrt_Float, "float", x, "float")
	    return dll_rtn
	}
	
	igImRsqrt_double(x)
	{
		;double igImRsqrt_double(double x)
	    dll_rtn := DllCall(Cimgui_dll.igImRsqrt_double, "double", x, "double")
	    return dll_rtn
	}
	
	igImSaturate(f)
	{
		;float igImSaturate(float f)
	    dll_rtn := DllCall(Cimgui_dll.igImSaturate, "float", f, "float")
	    return dll_rtn
	}
	
	igImSign_Float(x)
	{
		;float igImSign_Float(float x)
	    dll_rtn := DllCall(Cimgui_dll.igImSign_Float, "float", x, "float")
	    return dll_rtn
	}
	
	igImSign_double(x)
	{
		;double igImSign_double(double x)
	    dll_rtn := DllCall(Cimgui_dll.igImSign_double, "double", x, "double")
	    return dll_rtn
	}
	
	igImStrSkipBlank(str)
	{
		;const char* igImStrSkipBlank(const char* str)
	    dll_rtn := DllCall(Cimgui_dll.igImStrSkipBlank, "ptr", str, "ptr")
	    return dll_rtn
	}
	
	igImStrTrimBlanks(str)
	{
		;void igImStrTrimBlanks(char* str)
	    dll_rtn := DllCall(Cimgui_dll.igImStrTrimBlanks, "ptr", str)
	    return dll_rtn
	}
	
	igImStrbolW(&buf_mid_line, &buf_begin)
	{
		;const ImWchar* igImStrbolW(const ImWchar* buf_mid_line, const ImWchar* buf_begin)
	    dll_rtn := DllCall(Cimgui_dll.igImStrbolW, "ushort*", &buf_mid_line, "ushort*", &buf_begin, "ptr")
	    return dll_rtn
	}
	
	igImStrchrRange(str_begin, str_end, c)
	{
		;const char* igImStrchrRange(const char* str_begin, const char* str_end, char c)
	    dll_rtn := DllCall(Cimgui_dll.igImStrchrRange, "ptr", str_begin, "ptr", str_end, "char", c, "ptr")
	    return dll_rtn
	}
	
	igImStrdup(str)
	{
		;char* igImStrdup(const char* str)
	    dll_rtn := DllCall(Cimgui_dll.igImStrdup, "ptr", str, "ptr")
	    return dll_rtn
	}
	
	igImStrdupcpy(dst, &p_dst_size, str)
	{
		;char* igImStrdupcpy(char* dst, size_t* p_dst_size, const char* str)
	    dll_rtn := DllCall(Cimgui_dll.igImStrdupcpy, "ptr", dst, "uptr*", &p_dst_size, "ptr", str, "ptr")
	    return dll_rtn
	}
	
	igImStreolRange(str, str_end)
	{
		;const char* igImStreolRange(const char* str, const char* str_end)
	    dll_rtn := DllCall(Cimgui_dll.igImStreolRange, "ptr", str, "ptr", str_end, "ptr")
	    return dll_rtn
	}
	
	igImStricmp(str1, str2)
	{
		;int igImStricmp(const char* str1, const char* str2)
	    dll_rtn := DllCall(Cimgui_dll.igImStricmp, "ptr", str1, "ptr", str2, "int")
	    return dll_rtn
	}
	
	igImStristr(haystack, haystack_end, needle, needle_end)
	{
		;const char* igImStristr(const char* haystack, const char* haystack_end, const char* needle, const char* needle_end)
	    dll_rtn := DllCall(Cimgui_dll.igImStristr, "ptr", haystack, "ptr", haystack_end, "ptr", needle, "ptr", needle_end, "ptr")
	    return dll_rtn
	}
	
	igImStrlenW(&str)
	{
		;int igImStrlenW(const ImWchar* str)
	    dll_rtn := DllCall(Cimgui_dll.igImStrlenW, "ushort*", &str, "int")
	    return dll_rtn
	}
	
	igImStrncpy(dst, src, count)
	{
		;void igImStrncpy(char* dst, const char* src, size_t count)
	    dll_rtn := DllCall(Cimgui_dll.igImStrncpy, "ptr", dst, "ptr", src, "uptr", count)
	    return dll_rtn
	}
	
	igImStrnicmp(str1, str2, count)
	{
		;int igImStrnicmp(const char* str1, const char* str2, size_t count)
	    dll_rtn := DllCall(Cimgui_dll.igImStrnicmp, "ptr", str1, "ptr", str2, "uptr", count, "int")
	    return dll_rtn
	}
	
	igImTextCharFromUtf8(&out_char, in_text, in_text_end)
	{
		;int igImTextCharFromUtf8(unsigned int* out_char, const char* in_text, const char* in_text_end)
	    dll_rtn := DllCall(Cimgui_dll.igImTextCharFromUtf8, "uint*", &out_char, "ptr", in_text, "ptr", in_text_end, "int")
	    return dll_rtn
	}
	
	igImTextCharToUtf8(out_buf, c)
	{
		;const char* igImTextCharToUtf8(char out_buf[5], unsigned int c)
	    dll_rtn := DllCall(Cimgui_dll.igImTextCharToUtf8, "ptr", out_buf, "uint", c, "ptr")
	    return dll_rtn
	}
	
	igImTextCountCharsFromUtf8(in_text, in_text_end)
	{
		;int igImTextCountCharsFromUtf8(const char* in_text, const char* in_text_end)
	    dll_rtn := DllCall(Cimgui_dll.igImTextCountCharsFromUtf8, "ptr", in_text, "ptr", in_text_end, "int")
	    return dll_rtn
	}
	
	igImTextCountUtf8BytesFromChar(in_text, in_text_end)
	{
		;int igImTextCountUtf8BytesFromChar(const char* in_text, const char* in_text_end)
	    dll_rtn := DllCall(Cimgui_dll.igImTextCountUtf8BytesFromChar, "ptr", in_text, "ptr", in_text_end, "int")
	    return dll_rtn
	}
	
	igImTextCountUtf8BytesFromStr(&in_text, &in_text_end)
	{
		;int igImTextCountUtf8BytesFromStr(const ImWchar* in_text, const ImWchar* in_text_end)
	    dll_rtn := DllCall(Cimgui_dll.igImTextCountUtf8BytesFromStr, "ushort*", &in_text, "ushort*", &in_text_end, "int")
	    return dll_rtn
	}
	
	igImTextStrFromUtf8(&out_buf, out_buf_size, in_text, in_text_end, in_remaining := 0)
	{
		;int igImTextStrFromUtf8(ImWchar* out_buf, int out_buf_size, const char* in_text, const char* in_text_end, const char** in_remaining)
	    dll_rtn := DllCall(Cimgui_dll.igImTextStrFromUtf8, "ushort*", &out_buf, "int", out_buf_size, "ptr", in_text, "ptr", in_text_end, "ptr", in_remaining, "int")
	    return dll_rtn
	}
	
	igImTextStrToUtf8(out_buf, out_buf_size, &in_text, &in_text_end)
	{
		;int igImTextStrToUtf8(char* out_buf, int out_buf_size, const ImWchar* in_text, const ImWchar* in_text_end)
	    dll_rtn := DllCall(Cimgui_dll.igImTextStrToUtf8, "ptr", out_buf, "int", out_buf_size, "ushort*", &in_text, "ushort*", &in_text_end, "int")
	    return dll_rtn
	}
	
	igImToUpper(c)
	{
		;char igImToUpper(char c)
	    dll_rtn := DllCall(Cimgui_dll.igImToUpper, "char", c, "char")
	    return dll_rtn
	}
	
	igImTriangleArea(a, b, c)
	{
		;float igImTriangleArea(const ImVec2 a, const ImVec2 b, const ImVec2 c)
	    dll_rtn := DllCall(Cimgui_dll.igImTriangleArea, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(c, "int64"), "float")
	    return dll_rtn
	}
	
	igImTriangleBarycentricCoords(a, b, c, p, &out_u, &out_v, &out_w)
	{
		;void igImTriangleBarycentricCoords(const ImVec2 a, const ImVec2 b, const ImVec2 c, const ImVec2 p, float* out_u, float* out_v, float* out_w)
	    dll_rtn := DllCall(Cimgui_dll.igImTriangleBarycentricCoords, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(c, "int64"), "int64", NumGet(p, "int64"), "float*", &out_u, "float*", &out_v, "float*", &out_w)
	    return dll_rtn
	}
	
	igImTriangleClosestPoint(pOut, a, b, c, p)
	{
		;void igImTriangleClosestPoint(ImVec2 *pOut, const ImVec2 a, const ImVec2 b, const ImVec2 c, const ImVec2 p)
	    dll_rtn := DllCall(Cimgui_dll.igImTriangleClosestPoint, "ptr", pOut, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(c, "int64"), "int64", NumGet(p, "int64"))
	    return dll_rtn
	}
	
	igImTriangleContainsPoint(a, b, c, p)
	{
		;bool igImTriangleContainsPoint(const ImVec2 a, const ImVec2 b, const ImVec2 c, const ImVec2 p)
	    dll_rtn := DllCall(Cimgui_dll.igImTriangleContainsPoint, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(c, "int64"), "int64", NumGet(p, "int64"), "char")
	    return dll_rtn
	}
	
	igImUpperPowerOfTwo(v)
	{
		;int igImUpperPowerOfTwo(int v)
	    dll_rtn := DllCall(Cimgui_dll.igImUpperPowerOfTwo, "int", v, "int")
	    return dll_rtn
	}
	
	igImage(user_texture_id, size, uv0 := ImVec2([0, 0]), uv1 := ImVec2([1, 1]), tint_col := ImVec4([1, 1, 1, 1]), border_col := ImVec4([0, 0, 0, 0]))
	{
		;void igImage(ImTextureID user_texture_id, const ImVec2 size, const ImVec2 uv0, const ImVec2 uv1, const ImVec4 tint_col, const ImVec4 border_col)
	    dll_rtn := DllCall(Cimgui_dll.igImage, "ptr", user_texture_id, "int64", NumGet(size, "int64"), "int64", NumGet(uv0, "int64"), "int64", NumGet(uv1, "int64"), "ptr", tint_col, "ptr", border_col)
	    return dll_rtn
	}
	
	igImageButton(str_id, user_texture_id, size, uv0 := ImVec2([0, 0]), uv1 := ImVec2([1, 1]), bg_col := ImVec4([0, 0, 0, 0]), tint_col := ImVec4([1, 1, 1, 1]))
	{
		;bool igImageButton(const char* str_id, ImTextureID user_texture_id, const ImVec2 size, const ImVec2 uv0, const ImVec2 uv1, const ImVec4 bg_col, const ImVec4 tint_col)
	    dll_rtn := DllCall(Cimgui_dll.igImageButton, "ptr", str_id, "ptr", user_texture_id, "int64", NumGet(size, "int64"), "int64", NumGet(uv0, "int64"), "int64", NumGet(uv1, "int64"), "ptr", bg_col, "ptr", tint_col, "char")
	    return dll_rtn
	}
	
	igImageButtonEx(id, texture_id, size, uv0, uv1, bg_col, tint_col, flags := 0)
	{
		;bool igImageButtonEx(ImGuiID id, ImTextureID texture_id, const ImVec2 size, const ImVec2 uv0, const ImVec2 uv1, const ImVec4 bg_col, const ImVec4 tint_col, ImGuiButtonFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igImageButtonEx, "uint", id, "ptr", texture_id, "int64", NumGet(size, "int64"), "int64", NumGet(uv0, "int64"), "int64", NumGet(uv1, "int64"), "ptr", bg_col, "ptr", tint_col, "int", flags, "char")
	    return dll_rtn
	}
	
	igIndent(indent_w := 0.0)
	{
		;void igIndent(float indent_w)
	    dll_rtn := DllCall(Cimgui_dll.igIndent, "float", indent_w)
	    return dll_rtn
	}
	
	igInitialize()
	{
		;void igInitialize()
	    dll_rtn := DllCall(Cimgui_dll.igInitialize)
	    return dll_rtn
	}
	
	igInputDouble(label, &v, step := 0.0, step_fast := 0.0, format := "%.6f", flags := 0)
	{
		;bool igInputDouble(const char* label, double* v, double step, double step_fast, const char* format, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputDouble, "ptr", label, "double*", &v, "double", step, "double", step_fast, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputFloat(label, &v, step := 0.0, step_fast := 0.0, format := "%.3f", flags := 0)
	{
		;bool igInputFloat(const char* label, float* v, float step, float step_fast, const char* format, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputFloat, "ptr", label, "float*", &v, "float", step, "float", step_fast, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputFloat2(label, v, format := "%.3f", flags := 0)
	{
		;bool igInputFloat2(const char* label, float v[2], const char* format, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputFloat2, "ptr", label, "ptr", v, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputFloat3(label, v, format := "%.3f", flags := 0)
	{
		;bool igInputFloat3(const char* label, float v[3], const char* format, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputFloat3, "ptr", label, "ptr", v, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputFloat4(label, v, format := "%.3f", flags := 0)
	{
		;bool igInputFloat4(const char* label, float v[4], const char* format, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputFloat4, "ptr", label, "ptr", v, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputInt(label, &v, step := 1, step_fast := 100, flags := 0)
	{
		;bool igInputInt(const char* label, int* v, int step, int step_fast, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputInt, "ptr", label, "int*", &v, "int", step, "int", step_fast, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputInt2(label, v, flags := 0)
	{
		;bool igInputInt2(const char* label, int v[2], ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputInt2, "ptr", label, "ptr", v, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputInt3(label, v, flags := 0)
	{
		;bool igInputInt3(const char* label, int v[3], ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputInt3, "ptr", label, "ptr", v, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputInt4(label, v, flags := 0)
	{
		;bool igInputInt4(const char* label, int v[4], ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputInt4, "ptr", label, "ptr", v, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputScalar(label, data_type, p_data, p_step := 0, p_step_fast := 0, format := 0, flags := 0)
	{
		;bool igInputScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_step, const void* p_step_fast, const char* format, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputScalar, "ptr", label, "int", data_type, "ptr", p_data, "ptr", p_step, "ptr", p_step_fast, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputScalarN(label, data_type, p_data, components, p_step := 0, p_step_fast := 0, format := 0, flags := 0)
	{
		;bool igInputScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_step, const void* p_step_fast, const char* format, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInputScalarN, "ptr", label, "int", data_type, "ptr", p_data, "int", components, "ptr", p_step, "ptr", p_step_fast, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igInputText(label, buf, buf_size, flags := 0, callback := 0, user_data := 0)
	{
		;bool igInputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data)
	    dll_rtn := DllCall(Cimgui_dll.igInputText, "ptr", label, "ptr", buf, "uptr", buf_size, "int", flags, "ptr", callback, "ptr", user_data, "char")
	    return dll_rtn
	}
	
	igInputTextDeactivateHook(id)
	{
		;void igInputTextDeactivateHook(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igInputTextDeactivateHook, "uint", id)
	    return dll_rtn
	}
	
	igInputTextEx(label, hint, buf, buf_size, size_arg, flags, callback := 0, user_data := 0)
	{
		;bool igInputTextEx(const char* label, const char* hint, char* buf, int buf_size, const ImVec2 size_arg, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data)
	    dll_rtn := DllCall(Cimgui_dll.igInputTextEx, "ptr", label, "ptr", hint, "ptr", buf, "int", buf_size, "int64", NumGet(size_arg, "int64"), "int", flags, "ptr", callback, "ptr", user_data, "char")
	    return dll_rtn
	}
	
	igInputTextMultiline(label, buf, buf_size, size := ImVec2([0, 0]), flags := 0, callback := 0, user_data := 0)
	{
		;bool igInputTextMultiline(const char* label, char* buf, size_t buf_size, const ImVec2 size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data)
	    dll_rtn := DllCall(Cimgui_dll.igInputTextMultiline, "ptr", label, "ptr", buf, "uptr", buf_size, "int64", NumGet(size, "int64"), "int", flags, "ptr", callback, "ptr", user_data, "char")
	    return dll_rtn
	}
	
	igInputTextWithHint(label, hint, buf, buf_size, flags := 0, callback := 0, user_data := 0)
	{
		;bool igInputTextWithHint(const char* label, const char* hint, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data)
	    dll_rtn := DllCall(Cimgui_dll.igInputTextWithHint, "ptr", label, "ptr", hint, "ptr", buf, "uptr", buf_size, "int", flags, "ptr", callback, "ptr", user_data, "char")
	    return dll_rtn
	}
	
	igInvisibleButton(str_id, size, flags := 0)
	{
		;bool igInvisibleButton(const char* str_id, const ImVec2 size, ImGuiButtonFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igInvisibleButton, "ptr", str_id, "int64", NumGet(size, "int64"), "int", flags, "char")
	    return dll_rtn
	}
	
	igIsActiveIdUsingNavDir(dir)
	{
		;bool igIsActiveIdUsingNavDir(ImGuiDir dir)
	    dll_rtn := DllCall(Cimgui_dll.igIsActiveIdUsingNavDir, "int", dir, "char")
	    return dll_rtn
	}
	
	igIsAliasKey(key)
	{
		;bool igIsAliasKey(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsAliasKey, "int", key, "char")
	    return dll_rtn
	}
	
	igIsAnyItemActive()
	{
		;bool igIsAnyItemActive()
	    dll_rtn := DllCall(Cimgui_dll.igIsAnyItemActive, "char")
	    return dll_rtn
	}
	
	igIsAnyItemFocused()
	{
		;bool igIsAnyItemFocused()
	    dll_rtn := DllCall(Cimgui_dll.igIsAnyItemFocused, "char")
	    return dll_rtn
	}
	
	igIsAnyItemHovered()
	{
		;bool igIsAnyItemHovered()
	    dll_rtn := DllCall(Cimgui_dll.igIsAnyItemHovered, "char")
	    return dll_rtn
	}
	
	igIsAnyMouseDown()
	{
		;bool igIsAnyMouseDown()
	    dll_rtn := DllCall(Cimgui_dll.igIsAnyMouseDown, "char")
	    return dll_rtn
	}
	
	igIsClippedEx(bb, id)
	{
		;bool igIsClippedEx(const ImRect bb, ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igIsClippedEx, "ptr", bb, "uint", id, "char")
	    return dll_rtn
	}
	
	igIsDragDropActive()
	{
		;bool igIsDragDropActive()
	    dll_rtn := DllCall(Cimgui_dll.igIsDragDropActive, "char")
	    return dll_rtn
	}
	
	igIsDragDropPayloadBeingAccepted()
	{
		;bool igIsDragDropPayloadBeingAccepted()
	    dll_rtn := DllCall(Cimgui_dll.igIsDragDropPayloadBeingAccepted, "char")
	    return dll_rtn
	}
	
	igIsGamepadKey(key)
	{
		;bool igIsGamepadKey(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsGamepadKey, "int", key, "char")
	    return dll_rtn
	}
	
	igIsItemActivated()
	{
		;bool igIsItemActivated()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemActivated, "char")
	    return dll_rtn
	}
	
	igIsItemActive()
	{
		;bool igIsItemActive()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemActive, "char")
	    return dll_rtn
	}
	
	igIsItemClicked(mouse_button := 0)
	{
		;bool igIsItemClicked(ImGuiMouseButton mouse_button)
	    dll_rtn := DllCall(Cimgui_dll.igIsItemClicked, "int", mouse_button, "char")
	    return dll_rtn
	}
	
	igIsItemDeactivated()
	{
		;bool igIsItemDeactivated()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemDeactivated, "char")
	    return dll_rtn
	}
	
	igIsItemDeactivatedAfterEdit()
	{
		;bool igIsItemDeactivatedAfterEdit()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemDeactivatedAfterEdit, "char")
	    return dll_rtn
	}
	
	igIsItemEdited()
	{
		;bool igIsItemEdited()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemEdited, "char")
	    return dll_rtn
	}
	
	igIsItemFocused()
	{
		;bool igIsItemFocused()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemFocused, "char")
	    return dll_rtn
	}
	
	igIsItemHovered(flags := 0)
	{
		;bool igIsItemHovered(ImGuiHoveredFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igIsItemHovered, "int", flags, "char")
	    return dll_rtn
	}
	
	igIsItemToggledOpen()
	{
		;bool igIsItemToggledOpen()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemToggledOpen, "char")
	    return dll_rtn
	}
	
	igIsItemToggledSelection()
	{
		;bool igIsItemToggledSelection()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemToggledSelection, "char")
	    return dll_rtn
	}
	
	igIsItemVisible()
	{
		;bool igIsItemVisible()
	    dll_rtn := DllCall(Cimgui_dll.igIsItemVisible, "char")
	    return dll_rtn
	}
	
	igIsKeyDown_Nil(key)
	{
		;bool igIsKeyDown_Nil(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsKeyDown_Nil, "int", key, "char")
	    return dll_rtn
	}
	
	igIsKeyDown_ID(key, owner_id)
	{
		;bool igIsKeyDown_ID(ImGuiKey key, ImGuiID owner_id)
	    dll_rtn := DllCall(Cimgui_dll.igIsKeyDown_ID, "int", key, "uint", owner_id, "char")
	    return dll_rtn
	}
	
	igIsKeyPressed_Bool(key, repeat := true)
	{
		;bool igIsKeyPressed_Bool(ImGuiKey key, bool repeat)
	    dll_rtn := DllCall(Cimgui_dll.igIsKeyPressed_Bool, "int", key, "char", repeat, "char")
	    return dll_rtn
	}
	
	igIsKeyPressed_ID(key, owner_id, flags := 0)
	{
		;bool igIsKeyPressed_ID(ImGuiKey key, ImGuiID owner_id, ImGuiInputFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igIsKeyPressed_ID, "int", key, "uint", owner_id, "int", flags, "char")
	    return dll_rtn
	}
	
	igIsKeyPressedMap(key, repeat := true)
	{
		;bool igIsKeyPressedMap(ImGuiKey key, bool repeat)
	    dll_rtn := DllCall(Cimgui_dll.igIsKeyPressedMap, "int", key, "char", repeat, "char")
	    return dll_rtn
	}
	
	igIsKeyReleased_Nil(key)
	{
		;bool igIsKeyReleased_Nil(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsKeyReleased_Nil, "int", key, "char")
	    return dll_rtn
	}
	
	igIsKeyReleased_ID(key, owner_id)
	{
		;bool igIsKeyReleased_ID(ImGuiKey key, ImGuiID owner_id)
	    dll_rtn := DllCall(Cimgui_dll.igIsKeyReleased_ID, "int", key, "uint", owner_id, "char")
	    return dll_rtn
	}
	
	igIsKeyboardKey(key)
	{
		;bool igIsKeyboardKey(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsKeyboardKey, "int", key, "char")
	    return dll_rtn
	}
	
	igIsLegacyKey(key)
	{
		;bool igIsLegacyKey(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsLegacyKey, "int", key, "char")
	    return dll_rtn
	}
	
	igIsMouseClicked_Bool(button, repeat := false)
	{
		;bool igIsMouseClicked_Bool(ImGuiMouseButton button, bool repeat)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseClicked_Bool, "int", button, "char", repeat, "char")
	    return dll_rtn
	}
	
	igIsMouseClicked_ID(button, owner_id, flags := 0)
	{
		;bool igIsMouseClicked_ID(ImGuiMouseButton button, ImGuiID owner_id, ImGuiInputFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseClicked_ID, "int", button, "uint", owner_id, "int", flags, "char")
	    return dll_rtn
	}
	
	igIsMouseDoubleClicked(button)
	{
		;bool igIsMouseDoubleClicked(ImGuiMouseButton button)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseDoubleClicked, "int", button, "char")
	    return dll_rtn
	}
	
	igIsMouseDown_Nil(button)
	{
		;bool igIsMouseDown_Nil(ImGuiMouseButton button)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseDown_Nil, "int", button, "char")
	    return dll_rtn
	}
	
	igIsMouseDown_ID(button, owner_id)
	{
		;bool igIsMouseDown_ID(ImGuiMouseButton button, ImGuiID owner_id)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseDown_ID, "int", button, "uint", owner_id, "char")
	    return dll_rtn
	}
	
	igIsMouseDragPastThreshold(button, lock_threshold := -1.0)
	{
		;bool igIsMouseDragPastThreshold(ImGuiMouseButton button, float lock_threshold)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseDragPastThreshold, "int", button, "float", lock_threshold, "char")
	    return dll_rtn
	}
	
	igIsMouseDragging(button, lock_threshold := -1.0)
	{
		;bool igIsMouseDragging(ImGuiMouseButton button, float lock_threshold)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseDragging, "int", button, "float", lock_threshold, "char")
	    return dll_rtn
	}
	
	igIsMouseHoveringRect(r_min, r_max, clip := true)
	{
		;bool igIsMouseHoveringRect(const ImVec2 r_min, const ImVec2 r_max, bool clip)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseHoveringRect, "int64", NumGet(r_min, "int64"), "int64", NumGet(r_max, "int64"), "char", clip, "char")
	    return dll_rtn
	}
	
	igIsMouseKey(key)
	{
		;bool igIsMouseKey(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseKey, "int", key, "char")
	    return dll_rtn
	}
	
	igIsMousePosValid(mouse_pos := 0)
	{
		;bool igIsMousePosValid(const ImVec2* mouse_pos)
	    dll_rtn := DllCall(Cimgui_dll.igIsMousePosValid, "ptr", mouse_pos, "char")
	    return dll_rtn
	}
	
	igIsMouseReleased_Nil(button)
	{
		;bool igIsMouseReleased_Nil(ImGuiMouseButton button)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseReleased_Nil, "int", button, "char")
	    return dll_rtn
	}
	
	igIsMouseReleased_ID(button, owner_id)
	{
		;bool igIsMouseReleased_ID(ImGuiMouseButton button, ImGuiID owner_id)
	    dll_rtn := DllCall(Cimgui_dll.igIsMouseReleased_ID, "int", button, "uint", owner_id, "char")
	    return dll_rtn
	}
	
	igIsNamedKey(key)
	{
		;bool igIsNamedKey(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsNamedKey, "int", key, "char")
	    return dll_rtn
	}
	
	igIsNamedKeyOrModKey(key)
	{
		;bool igIsNamedKeyOrModKey(ImGuiKey key)
	    dll_rtn := DllCall(Cimgui_dll.igIsNamedKeyOrModKey, "int", key, "char")
	    return dll_rtn
	}
	
	igIsPopupOpen_Str(str_id, flags := 0)
	{
		;bool igIsPopupOpen_Str(const char* str_id, ImGuiPopupFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igIsPopupOpen_Str, "ptr", str_id, "int", flags, "char")
	    return dll_rtn
	}
	
	igIsPopupOpen_ID(id, popup_flags)
	{
		;bool igIsPopupOpen_ID(ImGuiID id, ImGuiPopupFlags popup_flags)
	    dll_rtn := DllCall(Cimgui_dll.igIsPopupOpen_ID, "uint", id, "int", popup_flags, "char")
	    return dll_rtn
	}
	
	igIsRectVisible_Nil(size)
	{
		;bool igIsRectVisible_Nil(const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igIsRectVisible_Nil, "int64", NumGet(size, "int64"), "char")
	    return dll_rtn
	}
	
	igIsRectVisible_Vec2(rect_min, rect_max)
	{
		;bool igIsRectVisible_Vec2(const ImVec2 rect_min, const ImVec2 rect_max)
	    dll_rtn := DllCall(Cimgui_dll.igIsRectVisible_Vec2, "int64", NumGet(rect_min, "int64"), "int64", NumGet(rect_max, "int64"), "char")
	    return dll_rtn
	}
	
	igIsWindowAbove(potential_above, potential_below)
	{
		;bool igIsWindowAbove(ImGuiWindow* potential_above, ImGuiWindow* potential_below)
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowAbove, "ptr", potential_above, "ptr", potential_below, "char")
	    return dll_rtn
	}
	
	igIsWindowAppearing()
	{
		;bool igIsWindowAppearing()
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowAppearing, "char")
	    return dll_rtn
	}
	
	igIsWindowChildOf(window, potential_parent, popup_hierarchy, dock_hierarchy)
	{
		;bool igIsWindowChildOf(ImGuiWindow* window, ImGuiWindow* potential_parent, bool popup_hierarchy, bool dock_hierarchy)
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowChildOf, "ptr", window, "ptr", potential_parent, "char", popup_hierarchy, "char", dock_hierarchy, "char")
	    return dll_rtn
	}
	
	igIsWindowCollapsed()
	{
		;bool igIsWindowCollapsed()
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowCollapsed, "char")
	    return dll_rtn
	}
	
	igIsWindowContentHoverable(window, flags := 0)
	{
		;bool igIsWindowContentHoverable(ImGuiWindow* window, ImGuiHoveredFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowContentHoverable, "ptr", window, "int", flags, "char")
	    return dll_rtn
	}
	
	igIsWindowDocked()
	{
		;bool igIsWindowDocked()
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowDocked, "char")
	    return dll_rtn
	}
	
	igIsWindowFocused(flags := 0)
	{
		;bool igIsWindowFocused(ImGuiFocusedFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowFocused, "int", flags, "char")
	    return dll_rtn
	}
	
	igIsWindowHovered(flags := 0)
	{
		;bool igIsWindowHovered(ImGuiHoveredFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowHovered, "int", flags, "char")
	    return dll_rtn
	}
	
	igIsWindowNavFocusable(window)
	{
		;bool igIsWindowNavFocusable(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowNavFocusable, "ptr", window, "char")
	    return dll_rtn
	}
	
	igIsWindowWithinBeginStackOf(window, potential_parent)
	{
		;bool igIsWindowWithinBeginStackOf(ImGuiWindow* window, ImGuiWindow* potential_parent)
	    dll_rtn := DllCall(Cimgui_dll.igIsWindowWithinBeginStackOf, "ptr", window, "ptr", potential_parent, "char")
	    return dll_rtn
	}
	
	igItemAdd(bb, id, nav_bb := 0, extra_flags := 0)
	{
		;bool igItemAdd(const ImRect bb, ImGuiID id, const ImRect* nav_bb, ImGuiItemFlags extra_flags)
	    dll_rtn := DllCall(Cimgui_dll.igItemAdd, "ptr", bb, "uint", id, "ptr", nav_bb, "int", extra_flags, "char")
	    return dll_rtn
	}
	
	igItemHoverable(bb, id, item_flags)
	{
		;bool igItemHoverable(const ImRect bb, ImGuiID id, ImGuiItemFlags item_flags)
	    dll_rtn := DllCall(Cimgui_dll.igItemHoverable, "ptr", bb, "uint", id, "int", item_flags, "char")
	    return dll_rtn
	}
	
	igItemSize_Vec2(size, text_baseline_y := -1.0)
	{
		;void igItemSize_Vec2(const ImVec2 size, float text_baseline_y)
	    dll_rtn := DllCall(Cimgui_dll.igItemSize_Vec2, "int64", NumGet(size, "int64"), "float", text_baseline_y)
	    return dll_rtn
	}
	
	igItemSize_Rect(bb, text_baseline_y := -1.0)
	{
		;void igItemSize_Rect(const ImRect bb, float text_baseline_y)
	    dll_rtn := DllCall(Cimgui_dll.igItemSize_Rect, "ptr", bb, "float", text_baseline_y)
	    return dll_rtn
	}
	
	igKeepAliveID(id)
	{
		;void igKeepAliveID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igKeepAliveID, "uint", id)
	    return dll_rtn
	}
	
	igLabelText(label, fmt, p*)
	{
		;void igLabelText(const char* label, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igLabelText, "ptr", label, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igLabelTextV(label, fmt, args)
	{
		;void igLabelTextV(const char* label, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igLabelTextV, "ptr", label, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igListBox_Str_arr(label, &current_item, items, items_count, height_in_items := -1)
	{
		;bool igListBox_Str_arr(const char* label, int* current_item, const char* const items[], int items_count, int height_in_items)
	    dll_rtn := DllCall(Cimgui_dll.igListBox_Str_arr, "ptr", label, "int*", &current_item, "ptr", items, "int", items_count, "int", height_in_items, "char")
	    return dll_rtn
	}
	
	igListBox_FnBoolPtr(label, &current_item, items_getter, data, items_count, height_in_items := -1)
	{
		;bool igListBox_FnBoolPtr(const char* label, int* current_item, bool(*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items)
	    dll_rtn := DllCall(Cimgui_dll.igListBox_FnBoolPtr, "ptr", label, "int*", &current_item, "ptr", items_getter, "ptr", data, "int", items_count, "int", height_in_items, "char")
	    return dll_rtn
	}
	
	igLoadIniSettingsFromDisk(ini_filename)
	{
		;void igLoadIniSettingsFromDisk(const char* ini_filename)
	    dll_rtn := DllCall(Cimgui_dll.igLoadIniSettingsFromDisk, "ptr", ini_filename)
	    return dll_rtn
	}
	
	igLoadIniSettingsFromMemory(ini_data, ini_size := 0)
	{
		;void igLoadIniSettingsFromMemory(const char* ini_data, size_t ini_size)
	    dll_rtn := DllCall(Cimgui_dll.igLoadIniSettingsFromMemory, "ptr", ini_data, "uptr", ini_size)
	    return dll_rtn
	}
	
	igLocalizeGetMsg(key)
	{
		;const char* igLocalizeGetMsg(ImGuiLocKey key)
	    dll_rtn := DllCall(Cimgui_dll.igLocalizeGetMsg, "int", key, "ptr")
	    return dll_rtn
	}
	
	igLocalizeRegisterEntries(entries, count)
	{
		;void igLocalizeRegisterEntries(const ImGuiLocEntry* entries, int count)
	    dll_rtn := DllCall(Cimgui_dll.igLocalizeRegisterEntries, "ptr", entries, "int", count)
	    return dll_rtn
	}
	
	igLogBegin(type, auto_open_depth)
	{
		;void igLogBegin(ImGuiLogType type, int auto_open_depth)
	    dll_rtn := DllCall(Cimgui_dll.igLogBegin, "int", type, "int", auto_open_depth)
	    return dll_rtn
	}
	
	igLogButtons()
	{
		;void igLogButtons()
	    dll_rtn := DllCall(Cimgui_dll.igLogButtons)
	    return dll_rtn
	}
	
	igLogFinish()
	{
		;void igLogFinish()
	    dll_rtn := DllCall(Cimgui_dll.igLogFinish)
	    return dll_rtn
	}
	
	igLogRenderedText(ref_pos, text, text_end := 0)
	{
		;void igLogRenderedText(const ImVec2* ref_pos, const char* text, const char* text_end)
	    dll_rtn := DllCall(Cimgui_dll.igLogRenderedText, "ptr", ref_pos, "ptr", text, "ptr", text_end)
	    return dll_rtn
	}
	
	igLogSetNextTextDecoration(prefix, suffix)
	{
		;void igLogSetNextTextDecoration(const char* prefix, const char* suffix)
	    dll_rtn := DllCall(Cimgui_dll.igLogSetNextTextDecoration, "ptr", prefix, "ptr", suffix)
	    return dll_rtn
	}
	
	igLogText(fmt, p*)
	{
		;void igLogText(const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igLogText, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igLogTextV(fmt, args)
	{
		;void igLogTextV(const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igLogTextV, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igLogToBuffer(auto_open_depth := -1)
	{
		;void igLogToBuffer(int auto_open_depth)
	    dll_rtn := DllCall(Cimgui_dll.igLogToBuffer, "int", auto_open_depth)
	    return dll_rtn
	}
	
	igLogToClipboard(auto_open_depth := -1)
	{
		;void igLogToClipboard(int auto_open_depth)
	    dll_rtn := DllCall(Cimgui_dll.igLogToClipboard, "int", auto_open_depth)
	    return dll_rtn
	}
	
	igLogToFile(auto_open_depth := -1, filename := 0)
	{
		;void igLogToFile(int auto_open_depth, const char* filename)
	    dll_rtn := DllCall(Cimgui_dll.igLogToFile, "int", auto_open_depth, "ptr", filename)
	    return dll_rtn
	}
	
	igLogToTTY(auto_open_depth := -1)
	{
		;void igLogToTTY(int auto_open_depth)
	    dll_rtn := DllCall(Cimgui_dll.igLogToTTY, "int", auto_open_depth)
	    return dll_rtn
	}
	
	igMarkIniSettingsDirty_Nil()
	{
		;void igMarkIniSettingsDirty_Nil()
	    dll_rtn := DllCall(Cimgui_dll.igMarkIniSettingsDirty_Nil)
	    return dll_rtn
	}
	
	igMarkIniSettingsDirty_WindowPtr(window)
	{
		;void igMarkIniSettingsDirty_WindowPtr(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igMarkIniSettingsDirty_WindowPtr, "ptr", window)
	    return dll_rtn
	}
	
	igMarkItemEdited(id)
	{
		;void igMarkItemEdited(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igMarkItemEdited, "uint", id)
	    return dll_rtn
	}
	
	igMemAlloc(size)
	{
		;void* igMemAlloc(size_t size)
	    dll_rtn := DllCall(Cimgui_dll.igMemAlloc, "uptr", size, "ptr")
	    return dll_rtn
	}
	
	igMemFree(ptr)
	{
		;void igMemFree(void* ptr)
	    dll_rtn := DllCall(Cimgui_dll.igMemFree, "ptr", ptr)
	    return dll_rtn
	}
	
	igMenuItem_Bool(label, shortcut := 0, selected := false, enabled := true)
	{
		;bool igMenuItem_Bool(const char* label, const char* shortcut, bool selected, bool enabled)
	    dll_rtn := DllCall(Cimgui_dll.igMenuItem_Bool, "ptr", label, "ptr", shortcut, "char", selected, "char", enabled, "char")
	    return dll_rtn
	}
	
	igMenuItem_BoolPtr(label, shortcut, &p_selected, enabled := true)
	{
		;bool igMenuItem_BoolPtr(const char* label, const char* shortcut, bool* p_selected, bool enabled)
	    dll_rtn := DllCall(Cimgui_dll.igMenuItem_BoolPtr, "ptr", label, "ptr", shortcut, "char*", &p_selected, "char", enabled, "char")
	    return dll_rtn
	}
	
	igMenuItemEx(label, icon, shortcut := 0, selected := false, enabled := true)
	{
		;bool igMenuItemEx(const char* label, const char* icon, const char* shortcut, bool selected, bool enabled)
	    dll_rtn := DllCall(Cimgui_dll.igMenuItemEx, "ptr", label, "ptr", icon, "ptr", shortcut, "char", selected, "char", enabled, "char")
	    return dll_rtn
	}
	
	igMouseButtonToKey(button)
	{
		;ImGuiKey igMouseButtonToKey(ImGuiMouseButton button)
	    dll_rtn := DllCall(Cimgui_dll.igMouseButtonToKey, "int", button, "int")
	    return dll_rtn
	}
	
	igNavClearPreferredPosForAxis(axis)
	{
		;void igNavClearPreferredPosForAxis(ImGuiAxis axis)
	    dll_rtn := DllCall(Cimgui_dll.igNavClearPreferredPosForAxis, "int", axis)
	    return dll_rtn
	}
	
	igNavInitRequestApplyResult()
	{
		;void igNavInitRequestApplyResult()
	    dll_rtn := DllCall(Cimgui_dll.igNavInitRequestApplyResult)
	    return dll_rtn
	}
	
	igNavInitWindow(window, force_reinit)
	{
		;void igNavInitWindow(ImGuiWindow* window, bool force_reinit)
	    dll_rtn := DllCall(Cimgui_dll.igNavInitWindow, "ptr", window, "char", force_reinit)
	    return dll_rtn
	}
	
	igNavMoveRequestApplyResult()
	{
		;void igNavMoveRequestApplyResult()
	    dll_rtn := DllCall(Cimgui_dll.igNavMoveRequestApplyResult)
	    return dll_rtn
	}
	
	igNavMoveRequestButNoResultYet()
	{
		;bool igNavMoveRequestButNoResultYet()
	    dll_rtn := DllCall(Cimgui_dll.igNavMoveRequestButNoResultYet, "char")
	    return dll_rtn
	}
	
	igNavMoveRequestCancel()
	{
		;void igNavMoveRequestCancel()
	    dll_rtn := DllCall(Cimgui_dll.igNavMoveRequestCancel)
	    return dll_rtn
	}
	
	igNavMoveRequestForward(move_dir, clip_dir, move_flags, scroll_flags)
	{
		;void igNavMoveRequestForward(ImGuiDir move_dir, ImGuiDir clip_dir, ImGuiNavMoveFlags move_flags, ImGuiScrollFlags scroll_flags)
	    dll_rtn := DllCall(Cimgui_dll.igNavMoveRequestForward, "int", move_dir, "int", clip_dir, "int", move_flags, "int", scroll_flags)
	    return dll_rtn
	}
	
	igNavMoveRequestResolveWithLastItem(result)
	{
		;void igNavMoveRequestResolveWithLastItem(ImGuiNavItemData* result)
	    dll_rtn := DllCall(Cimgui_dll.igNavMoveRequestResolveWithLastItem, "ptr", result)
	    return dll_rtn
	}
	
	igNavMoveRequestResolveWithPastTreeNode(result, tree_node_data)
	{
		;void igNavMoveRequestResolveWithPastTreeNode(ImGuiNavItemData* result, ImGuiNavTreeNodeData* tree_node_data)
	    dll_rtn := DllCall(Cimgui_dll.igNavMoveRequestResolveWithPastTreeNode, "ptr", result, "ptr", tree_node_data)
	    return dll_rtn
	}
	
	igNavMoveRequestSubmit(move_dir, clip_dir, move_flags, scroll_flags)
	{
		;void igNavMoveRequestSubmit(ImGuiDir move_dir, ImGuiDir clip_dir, ImGuiNavMoveFlags move_flags, ImGuiScrollFlags scroll_flags)
	    dll_rtn := DllCall(Cimgui_dll.igNavMoveRequestSubmit, "int", move_dir, "int", clip_dir, "int", move_flags, "int", scroll_flags)
	    return dll_rtn
	}
	
	igNavMoveRequestTryWrapping(window, move_flags)
	{
		;void igNavMoveRequestTryWrapping(ImGuiWindow* window, ImGuiNavMoveFlags move_flags)
	    dll_rtn := DllCall(Cimgui_dll.igNavMoveRequestTryWrapping, "ptr", window, "int", move_flags)
	    return dll_rtn
	}
	
	igNavUpdateCurrentWindowIsScrollPushableX()
	{
		;void igNavUpdateCurrentWindowIsScrollPushableX()
	    dll_rtn := DllCall(Cimgui_dll.igNavUpdateCurrentWindowIsScrollPushableX)
	    return dll_rtn
	}
	
	igNewFrame()
	{
		;void igNewFrame()
	    dll_rtn := DllCall(Cimgui_dll.igNewFrame)
	    return dll_rtn
	}
	
	igNewLine()
	{
		;void igNewLine()
	    dll_rtn := DllCall(Cimgui_dll.igNewLine)
	    return dll_rtn
	}
	
	igNextColumn()
	{
		;void igNextColumn()
	    dll_rtn := DllCall(Cimgui_dll.igNextColumn)
	    return dll_rtn
	}
	
	igOpenPopup_Str(str_id, popup_flags := 0)
	{
		;void igOpenPopup_Str(const char* str_id, ImGuiPopupFlags popup_flags)
	    dll_rtn := DllCall(Cimgui_dll.igOpenPopup_Str, "ptr", str_id, "int", popup_flags)
	    return dll_rtn
	}
	
	igOpenPopup_ID(id, popup_flags := 0)
	{
		;void igOpenPopup_ID(ImGuiID id, ImGuiPopupFlags popup_flags)
	    dll_rtn := DllCall(Cimgui_dll.igOpenPopup_ID, "uint", id, "int", popup_flags)
	    return dll_rtn
	}
	
	igOpenPopupEx(id, popup_flags := ImGuiPopupFlags_None)
	{
		;void igOpenPopupEx(ImGuiID id, ImGuiPopupFlags popup_flags)
	    dll_rtn := DllCall(Cimgui_dll.igOpenPopupEx, "uint", id, "int", popup_flags)
	    return dll_rtn
	}
	
	igOpenPopupOnItemClick(str_id := 0, popup_flags := 1)
	{
		;void igOpenPopupOnItemClick(const char* str_id, ImGuiPopupFlags popup_flags)
	    dll_rtn := DllCall(Cimgui_dll.igOpenPopupOnItemClick, "ptr", str_id, "int", popup_flags)
	    return dll_rtn
	}
	
	igPlotEx(plot_type, label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, size_arg)
	{
		;int igPlotEx(ImGuiPlotType plot_type, const char* label, float(*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, const ImVec2 size_arg)
	    dll_rtn := DllCall(Cimgui_dll.igPlotEx, "int", plot_type, "ptr", label, "ptr", values_getter, "ptr", data, "int", values_count, "int", values_offset, "ptr", overlay_text, "float", scale_min, "float", scale_max, "int64", NumGet(size_arg, "int64"), "int")
	    return dll_rtn
	}
	
	igPlotHistogram_FloatPtr(label, &values, values_count, values_offset := 0, overlay_text := 0, scale_min := 3.402823466e+38, scale_max := 3.402823466e+38, graph_size := ImVec2([0, 0]), stride := 4)
	{
		;void igPlotHistogram_FloatPtr(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride)
	    dll_rtn := DllCall(Cimgui_dll.igPlotHistogram_FloatPtr, "ptr", label, "float*", &values, "int", values_count, "int", values_offset, "ptr", overlay_text, "float", scale_min, "float", scale_max, "int64", NumGet(graph_size, "int64"), "int", stride)
	    return dll_rtn
	}
	
	igPlotHistogram_FnFloatPtr(label, values_getter, data, values_count, values_offset := 0, overlay_text := 0, scale_min := 3.402823466e+38, scale_max := 3.402823466e+38, graph_size := ImVec2([0, 0]))
	{
		;void igPlotHistogram_FnFloatPtr(const char* label, float(*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size)
	    dll_rtn := DllCall(Cimgui_dll.igPlotHistogram_FnFloatPtr, "ptr", label, "ptr", values_getter, "ptr", data, "int", values_count, "int", values_offset, "ptr", overlay_text, "float", scale_min, "float", scale_max, "int64", NumGet(graph_size, "int64"))
	    return dll_rtn
	}
	
	igPlotLines_FloatPtr(label, &values, values_count, values_offset := 0, overlay_text := 0, scale_min := 3.402823466e+38, scale_max := 3.402823466e+38, graph_size := ImVec2([0, 0]), stride := 4)
	{
		;void igPlotLines_FloatPtr(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride)
	    dll_rtn := DllCall(Cimgui_dll.igPlotLines_FloatPtr, "ptr", label, "float*", &values, "int", values_count, "int", values_offset, "ptr", overlay_text, "float", scale_min, "float", scale_max, "int64", NumGet(graph_size, "int64"), "int", stride)
	    return dll_rtn
	}
	
	igPlotLines_FnFloatPtr(label, values_getter, data, values_count, values_offset := 0, overlay_text := 0, scale_min := 3.402823466e+38, scale_max := 3.402823466e+38, graph_size := ImVec2([0, 0]))
	{
		;void igPlotLines_FnFloatPtr(const char* label, float(*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size)
	    dll_rtn := DllCall(Cimgui_dll.igPlotLines_FnFloatPtr, "ptr", label, "ptr", values_getter, "ptr", data, "int", values_count, "int", values_offset, "ptr", overlay_text, "float", scale_min, "float", scale_max, "int64", NumGet(graph_size, "int64"))
	    return dll_rtn
	}
	
	igPopButtonRepeat()
	{
		;void igPopButtonRepeat()
	    dll_rtn := DllCall(Cimgui_dll.igPopButtonRepeat)
	    return dll_rtn
	}
	
	igPopClipRect()
	{
		;void igPopClipRect()
	    dll_rtn := DllCall(Cimgui_dll.igPopClipRect)
	    return dll_rtn
	}
	
	igPopColumnsBackground()
	{
		;void igPopColumnsBackground()
	    dll_rtn := DllCall(Cimgui_dll.igPopColumnsBackground)
	    return dll_rtn
	}
	
	igPopFocusScope()
	{
		;void igPopFocusScope()
	    dll_rtn := DllCall(Cimgui_dll.igPopFocusScope)
	    return dll_rtn
	}
	
	igPopFont()
	{
		;void igPopFont()
	    dll_rtn := DllCall(Cimgui_dll.igPopFont)
	    return dll_rtn
	}
	
	igPopID()
	{
		;void igPopID()
	    dll_rtn := DllCall(Cimgui_dll.igPopID)
	    return dll_rtn
	}
	
	igPopItemFlag()
	{
		;void igPopItemFlag()
	    dll_rtn := DllCall(Cimgui_dll.igPopItemFlag)
	    return dll_rtn
	}
	
	igPopItemWidth()
	{
		;void igPopItemWidth()
	    dll_rtn := DllCall(Cimgui_dll.igPopItemWidth)
	    return dll_rtn
	}
	
	igPopStyleColor(count := 1)
	{
		;void igPopStyleColor(int count)
	    dll_rtn := DllCall(Cimgui_dll.igPopStyleColor, "int", count)
	    return dll_rtn
	}
	
	igPopStyleVar(count := 1)
	{
		;void igPopStyleVar(int count)
	    dll_rtn := DllCall(Cimgui_dll.igPopStyleVar, "int", count)
	    return dll_rtn
	}
	
	igPopTabStop()
	{
		;void igPopTabStop()
	    dll_rtn := DllCall(Cimgui_dll.igPopTabStop)
	    return dll_rtn
	}
	
	igPopTextWrapPos()
	{
		;void igPopTextWrapPos()
	    dll_rtn := DllCall(Cimgui_dll.igPopTextWrapPos)
	    return dll_rtn
	}
	
	igProgressBar(fraction, size_arg := ImVec2([-1.175494351e-38, 0]), overlay := 0)
	{
		;void igProgressBar(float fraction, const ImVec2 size_arg, const char* overlay)
	    dll_rtn := DllCall(Cimgui_dll.igProgressBar, "float", fraction, "int64", NumGet(size_arg, "int64"), "ptr", overlay)
	    return dll_rtn
	}
	
	igPushButtonRepeat(repeat)
	{
		;void igPushButtonRepeat(bool repeat)
	    dll_rtn := DllCall(Cimgui_dll.igPushButtonRepeat, "char", repeat)
	    return dll_rtn
	}
	
	igPushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
	{
		;void igPushClipRect(const ImVec2 clip_rect_min, const ImVec2 clip_rect_max, bool intersect_with_current_clip_rect)
	    dll_rtn := DllCall(Cimgui_dll.igPushClipRect, "int64", NumGet(clip_rect_min, "int64"), "int64", NumGet(clip_rect_max, "int64"), "char", intersect_with_current_clip_rect)
	    return dll_rtn
	}
	
	igPushColumnClipRect(column_index)
	{
		;void igPushColumnClipRect(int column_index)
	    dll_rtn := DllCall(Cimgui_dll.igPushColumnClipRect, "int", column_index)
	    return dll_rtn
	}
	
	igPushColumnsBackground()
	{
		;void igPushColumnsBackground()
	    dll_rtn := DllCall(Cimgui_dll.igPushColumnsBackground)
	    return dll_rtn
	}
	
	igPushFocusScope(id)
	{
		;void igPushFocusScope(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igPushFocusScope, "uint", id)
	    return dll_rtn
	}
	
	igPushFont(font)
	{
		;void igPushFont(ImFont* font)
	    dll_rtn := DllCall(Cimgui_dll.igPushFont, "ptr", font)
	    return dll_rtn
	}
	
	igPushID_Str(str_id)
	{
		;void igPushID_Str(const char* str_id)
	    dll_rtn := DllCall(Cimgui_dll.igPushID_Str, "ptr", str_id)
	    return dll_rtn
	}
	
	igPushID_StrStr(str_id_begin, str_id_end)
	{
		;void igPushID_StrStr(const char* str_id_begin, const char* str_id_end)
	    dll_rtn := DllCall(Cimgui_dll.igPushID_StrStr, "ptr", str_id_begin, "ptr", str_id_end)
	    return dll_rtn
	}
	
	igPushID_Ptr(ptr_id)
	{
		;void igPushID_Ptr(const void* ptr_id)
	    dll_rtn := DllCall(Cimgui_dll.igPushID_Ptr, "ptr", ptr_id)
	    return dll_rtn
	}
	
	igPushID_Int(int_id)
	{
		;void igPushID_Int(int int_id)
	    dll_rtn := DllCall(Cimgui_dll.igPushID_Int, "int", int_id)
	    return dll_rtn
	}
	
	igPushItemFlag(option, enabled)
	{
		;void igPushItemFlag(ImGuiItemFlags option, bool enabled)
	    dll_rtn := DllCall(Cimgui_dll.igPushItemFlag, "int", option, "char", enabled)
	    return dll_rtn
	}
	
	igPushItemWidth(item_width)
	{
		;void igPushItemWidth(float item_width)
	    dll_rtn := DllCall(Cimgui_dll.igPushItemWidth, "float", item_width)
	    return dll_rtn
	}
	
	igPushMultiItemsWidths(components, width_full)
	{
		;void igPushMultiItemsWidths(int components, float width_full)
	    dll_rtn := DllCall(Cimgui_dll.igPushMultiItemsWidths, "int", components, "float", width_full)
	    return dll_rtn
	}
	
	igPushOverrideID(id)
	{
		;void igPushOverrideID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igPushOverrideID, "uint", id)
	    return dll_rtn
	}
	
	igPushStyleColor_U32(idx, col)
	{
		;void igPushStyleColor_U32(ImGuiCol idx, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igPushStyleColor_U32, "int", idx, "uint", col)
	    return dll_rtn
	}
	
	igPushStyleColor_Vec4(idx, col)
	{
		;void igPushStyleColor_Vec4(ImGuiCol idx, const ImVec4 col)
	    dll_rtn := DllCall(Cimgui_dll.igPushStyleColor_Vec4, "int", idx, "ptr", col)
	    return dll_rtn
	}
	
	igPushStyleVar_Float(idx, val)
	{
		;void igPushStyleVar_Float(ImGuiStyleVar idx, float val)
	    dll_rtn := DllCall(Cimgui_dll.igPushStyleVar_Float, "int", idx, "float", val)
	    return dll_rtn
	}
	
	igPushStyleVar_Vec2(idx, val)
	{
		;void igPushStyleVar_Vec2(ImGuiStyleVar idx, const ImVec2 val)
	    dll_rtn := DllCall(Cimgui_dll.igPushStyleVar_Vec2, "int", idx, "int64", NumGet(val, "int64"))
	    return dll_rtn
	}
	
	igPushTabStop(tab_stop)
	{
		;void igPushTabStop(bool tab_stop)
	    dll_rtn := DllCall(Cimgui_dll.igPushTabStop, "char", tab_stop)
	    return dll_rtn
	}
	
	igPushTextWrapPos(wrap_local_pos_x := 0.0)
	{
		;void igPushTextWrapPos(float wrap_local_pos_x)
	    dll_rtn := DllCall(Cimgui_dll.igPushTextWrapPos, "float", wrap_local_pos_x)
	    return dll_rtn
	}
	
	igRadioButton_Bool(label, active)
	{
		;bool igRadioButton_Bool(const char* label, bool active)
	    dll_rtn := DllCall(Cimgui_dll.igRadioButton_Bool, "ptr", label, "char", active, "char")
	    return dll_rtn
	}
	
	igRadioButton_IntPtr(label, &v, v_button)
	{
		;bool igRadioButton_IntPtr(const char* label, int* v, int v_button)
	    dll_rtn := DllCall(Cimgui_dll.igRadioButton_IntPtr, "ptr", label, "int*", &v, "int", v_button, "char")
	    return dll_rtn
	}
	
	igRemoveContextHook(context, hook_to_remove)
	{
		;void igRemoveContextHook(ImGuiContext* context, ImGuiID hook_to_remove)
	    dll_rtn := DllCall(Cimgui_dll.igRemoveContextHook, "ptr", context, "uint", hook_to_remove)
	    return dll_rtn
	}
	
	igRemoveSettingsHandler(type_name)
	{
		;void igRemoveSettingsHandler(const char* type_name)
	    dll_rtn := DllCall(Cimgui_dll.igRemoveSettingsHandler, "ptr", type_name)
	    return dll_rtn
	}
	
	igRender()
	{
		;void igRender()
	    dll_rtn := DllCall(Cimgui_dll.igRender)
	    return dll_rtn
	}
	
	igRenderArrow(draw_list, pos, col, dir, scale := 1.0)
	{
		;void igRenderArrow(ImDrawList* draw_list, ImVec2 pos, ImU32 col, ImGuiDir dir, float scale)
	    dll_rtn := DllCall(Cimgui_dll.igRenderArrow, "ptr", draw_list, "int64", NumGet(pos, "int64"), "uint", col, "int", dir, "float", scale)
	    return dll_rtn
	}
	
	igRenderArrowDockMenu(draw_list, p_min, sz, col)
	{
		;void igRenderArrowDockMenu(ImDrawList* draw_list, ImVec2 p_min, float sz, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igRenderArrowDockMenu, "ptr", draw_list, "int64", NumGet(p_min, "int64"), "float", sz, "uint", col)
	    return dll_rtn
	}
	
	igRenderArrowPointingAt(draw_list, pos, half_sz, direction, col)
	{
		;void igRenderArrowPointingAt(ImDrawList* draw_list, ImVec2 pos, ImVec2 half_sz, ImGuiDir direction, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igRenderArrowPointingAt, "ptr", draw_list, "int64", NumGet(pos, "int64"), "int64", NumGet(half_sz, "int64"), "int", direction, "uint", col)
	    return dll_rtn
	}
	
	igRenderBullet(draw_list, pos, col)
	{
		;void igRenderBullet(ImDrawList* draw_list, ImVec2 pos, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igRenderBullet, "ptr", draw_list, "int64", NumGet(pos, "int64"), "uint", col)
	    return dll_rtn
	}
	
	igRenderCheckMark(draw_list, pos, col, sz)
	{
		;void igRenderCheckMark(ImDrawList* draw_list, ImVec2 pos, ImU32 col, float sz)
	    dll_rtn := DllCall(Cimgui_dll.igRenderCheckMark, "ptr", draw_list, "int64", NumGet(pos, "int64"), "uint", col, "float", sz)
	    return dll_rtn
	}
	
	igRenderColorRectWithAlphaCheckerboard(draw_list, p_min, p_max, fill_col, grid_step, grid_off, rounding := 0.0, flags := 0)
	{
		;void igRenderColorRectWithAlphaCheckerboard(ImDrawList* draw_list, ImVec2 p_min, ImVec2 p_max, ImU32 fill_col, float grid_step, ImVec2 grid_off, float rounding, ImDrawFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igRenderColorRectWithAlphaCheckerboard, "ptr", draw_list, "int64", NumGet(p_min, "int64"), "int64", NumGet(p_max, "int64"), "uint", fill_col, "float", grid_step, "int64", NumGet(grid_off, "int64"), "float", rounding, "int", flags)
	    return dll_rtn
	}
	
	igRenderDragDropTargetRect(bb)
	{
		;void igRenderDragDropTargetRect(const ImRect bb)
	    dll_rtn := DllCall(Cimgui_dll.igRenderDragDropTargetRect, "ptr", bb)
	    return dll_rtn
	}
	
	igRenderFrame(p_min, p_max, fill_col, border := true, rounding := 0.0)
	{
		;void igRenderFrame(ImVec2 p_min, ImVec2 p_max, ImU32 fill_col, bool border, float rounding)
	    dll_rtn := DllCall(Cimgui_dll.igRenderFrame, "int64", NumGet(p_min, "int64"), "int64", NumGet(p_max, "int64"), "uint", fill_col, "char", border, "float", rounding)
	    return dll_rtn
	}
	
	igRenderFrameBorder(p_min, p_max, rounding := 0.0)
	{
		;void igRenderFrameBorder(ImVec2 p_min, ImVec2 p_max, float rounding)
	    dll_rtn := DllCall(Cimgui_dll.igRenderFrameBorder, "int64", NumGet(p_min, "int64"), "int64", NumGet(p_max, "int64"), "float", rounding)
	    return dll_rtn
	}
	
	igRenderMouseCursor(pos, scale, mouse_cursor, col_fill, col_border, col_shadow)
	{
		;void igRenderMouseCursor(ImVec2 pos, float scale, ImGuiMouseCursor mouse_cursor, ImU32 col_fill, ImU32 col_border, ImU32 col_shadow)
	    dll_rtn := DllCall(Cimgui_dll.igRenderMouseCursor, "int64", NumGet(pos, "int64"), "float", scale, "int", mouse_cursor, "uint", col_fill, "uint", col_border, "uint", col_shadow)
	    return dll_rtn
	}
	
	igRenderNavHighlight(bb, id, flags := ImGuiNavHighlightFlags_TypeDefault)
	{
		;void igRenderNavHighlight(const ImRect bb, ImGuiID id, ImGuiNavHighlightFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igRenderNavHighlight, "ptr", bb, "uint", id, "int", flags)
	    return dll_rtn
	}
	
	igRenderPlatformWindowsDefault(platform_render_arg := 0, renderer_render_arg := 0)
	{
		;void igRenderPlatformWindowsDefault(void* platform_render_arg, void* renderer_render_arg)
	    dll_rtn := DllCall(Cimgui_dll.igRenderPlatformWindowsDefault, "ptr", platform_render_arg, "ptr", renderer_render_arg)
	    return dll_rtn
	}
	
	igRenderRectFilledRangeH(draw_list, rect, col, x_start_norm, x_end_norm, rounding)
	{
		;void igRenderRectFilledRangeH(ImDrawList* draw_list, const ImRect rect, ImU32 col, float x_start_norm, float x_end_norm, float rounding)
	    dll_rtn := DllCall(Cimgui_dll.igRenderRectFilledRangeH, "ptr", draw_list, "ptr", rect, "uint", col, "float", x_start_norm, "float", x_end_norm, "float", rounding)
	    return dll_rtn
	}
	
	igRenderRectFilledWithHole(draw_list, outer, inner, col, rounding)
	{
		;void igRenderRectFilledWithHole(ImDrawList* draw_list, const ImRect outer, const ImRect inner, ImU32 col, float rounding)
	    dll_rtn := DllCall(Cimgui_dll.igRenderRectFilledWithHole, "ptr", draw_list, "ptr", outer, "ptr", inner, "uint", col, "float", rounding)
	    return dll_rtn
	}
	
	igRenderText(pos, text, text_end := 0, hide_text_after_hash := true)
	{
		;void igRenderText(ImVec2 pos, const char* text, const char* text_end, bool hide_text_after_hash)
	    dll_rtn := DllCall(Cimgui_dll.igRenderText, "int64", NumGet(pos, "int64"), "ptr", text, "ptr", text_end, "char", hide_text_after_hash)
	    return dll_rtn
	}
	
	igRenderTextClipped(pos_min, pos_max, text, text_end, text_size_if_known, align := ImVec2([0, 0]), clip_rect := 0)
	{
		;void igRenderTextClipped(const ImVec2 pos_min, const ImVec2 pos_max, const char* text, const char* text_end, const ImVec2* text_size_if_known, const ImVec2 align, const ImRect* clip_rect)
	    dll_rtn := DllCall(Cimgui_dll.igRenderTextClipped, "int64", NumGet(pos_min, "int64"), "int64", NumGet(pos_max, "int64"), "ptr", text, "ptr", text_end, "ptr", text_size_if_known, "int64", NumGet(align, "int64"), "ptr", clip_rect)
	    return dll_rtn
	}
	
	igRenderTextClippedEx(draw_list, pos_min, pos_max, text, text_end, text_size_if_known, align := ImVec2([0, 0]), clip_rect := 0)
	{
		;void igRenderTextClippedEx(ImDrawList* draw_list, const ImVec2 pos_min, const ImVec2 pos_max, const char* text, const char* text_end, const ImVec2* text_size_if_known, const ImVec2 align, const ImRect* clip_rect)
	    dll_rtn := DllCall(Cimgui_dll.igRenderTextClippedEx, "ptr", draw_list, "int64", NumGet(pos_min, "int64"), "int64", NumGet(pos_max, "int64"), "ptr", text, "ptr", text_end, "ptr", text_size_if_known, "int64", NumGet(align, "int64"), "ptr", clip_rect)
	    return dll_rtn
	}
	
	igRenderTextEllipsis(draw_list, pos_min, pos_max, clip_max_x, ellipsis_max_x, text, text_end, text_size_if_known)
	{
		;void igRenderTextEllipsis(ImDrawList* draw_list, const ImVec2 pos_min, const ImVec2 pos_max, float clip_max_x, float ellipsis_max_x, const char* text, const char* text_end, const ImVec2* text_size_if_known)
	    dll_rtn := DllCall(Cimgui_dll.igRenderTextEllipsis, "ptr", draw_list, "int64", NumGet(pos_min, "int64"), "int64", NumGet(pos_max, "int64"), "float", clip_max_x, "float", ellipsis_max_x, "ptr", text, "ptr", text_end, "ptr", text_size_if_known)
	    return dll_rtn
	}
	
	igRenderTextWrapped(pos, text, text_end, wrap_width)
	{
		;void igRenderTextWrapped(ImVec2 pos, const char* text, const char* text_end, float wrap_width)
	    dll_rtn := DllCall(Cimgui_dll.igRenderTextWrapped, "int64", NumGet(pos, "int64"), "ptr", text, "ptr", text_end, "float", wrap_width)
	    return dll_rtn
	}
	
	igResetMouseDragDelta(button := 0)
	{
		;void igResetMouseDragDelta(ImGuiMouseButton button)
	    dll_rtn := DllCall(Cimgui_dll.igResetMouseDragDelta, "int", button)
	    return dll_rtn
	}
	
	igSameLine(offset_from_start_x := 0.0, spacing := -1.0)
	{
		;void igSameLine(float offset_from_start_x, float spacing)
	    dll_rtn := DllCall(Cimgui_dll.igSameLine, "float", offset_from_start_x, "float", spacing)
	    return dll_rtn
	}
	
	igSaveIniSettingsToDisk(ini_filename)
	{
		;void igSaveIniSettingsToDisk(const char* ini_filename)
	    dll_rtn := DllCall(Cimgui_dll.igSaveIniSettingsToDisk, "ptr", ini_filename)
	    return dll_rtn
	}
	
	igSaveIniSettingsToMemory(&out_ini_size := 0)
	{
		;const char* igSaveIniSettingsToMemory(size_t* out_ini_size)
	    dll_rtn := DllCall(Cimgui_dll.igSaveIniSettingsToMemory, "uptr*", &out_ini_size, "ptr")
	    return dll_rtn
	}
	
	igScaleWindowsInViewport(viewport, scale)
	{
		;void igScaleWindowsInViewport(ImGuiViewportP* viewport, float scale)
	    dll_rtn := DllCall(Cimgui_dll.igScaleWindowsInViewport, "ptr", viewport, "float", scale)
	    return dll_rtn
	}
	
	igScrollToBringRectIntoView(window, rect)
	{
		;void igScrollToBringRectIntoView(ImGuiWindow* window, const ImRect rect)
	    dll_rtn := DllCall(Cimgui_dll.igScrollToBringRectIntoView, "ptr", window, "ptr", rect)
	    return dll_rtn
	}
	
	igScrollToItem(flags := 0)
	{
		;void igScrollToItem(ImGuiScrollFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igScrollToItem, "int", flags)
	    return dll_rtn
	}
	
	igScrollToRect(window, rect, flags := 0)
	{
		;void igScrollToRect(ImGuiWindow* window, const ImRect rect, ImGuiScrollFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igScrollToRect, "ptr", window, "ptr", rect, "int", flags)
	    return dll_rtn
	}
	
	igScrollToRectEx(pOut, window, rect, flags := 0)
	{
		;void igScrollToRectEx(ImVec2 *pOut, ImGuiWindow* window, const ImRect rect, ImGuiScrollFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igScrollToRectEx, "ptr", pOut, "ptr", window, "ptr", rect, "int", flags)
	    return dll_rtn
	}
	
	igScrollbar(axis)
	{
		;void igScrollbar(ImGuiAxis axis)
	    dll_rtn := DllCall(Cimgui_dll.igScrollbar, "int", axis)
	    return dll_rtn
	}
	
	igScrollbarEx(bb, id, axis, &p_scroll_v, avail_v, contents_v, flags)
	{
		;bool igScrollbarEx(const ImRect bb, ImGuiID id, ImGuiAxis axis, ImS64* p_scroll_v, ImS64 avail_v, ImS64 contents_v, ImDrawFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igScrollbarEx, "ptr", bb, "uint", id, "int", axis, "int64*", &p_scroll_v, "int64", avail_v, "int64", contents_v, "int", flags, "char")
	    return dll_rtn
	}
	
	igSelectable_Bool(label, selected := false, flags := 0, size := ImVec2([0, 0]))
	{
		;bool igSelectable_Bool(const char* label, bool selected, ImGuiSelectableFlags flags, const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igSelectable_Bool, "ptr", label, "char", selected, "int", flags, "int64", NumGet(size, "int64"), "char")
	    return dll_rtn
	}
	
	igSelectable_BoolPtr(label, &p_selected, flags := 0, size := ImVec2([0, 0]))
	{
		;bool igSelectable_BoolPtr(const char* label, bool* p_selected, ImGuiSelectableFlags flags, const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igSelectable_BoolPtr, "ptr", label, "char*", &p_selected, "int", flags, "int64", NumGet(size, "int64"), "char")
	    return dll_rtn
	}
	
	igSeparator()
	{
		;void igSeparator()
	    dll_rtn := DllCall(Cimgui_dll.igSeparator)
	    return dll_rtn
	}
	
	igSeparatorEx(flags, thickness := 1.0)
	{
		;void igSeparatorEx(ImGuiSeparatorFlags flags, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.igSeparatorEx, "int", flags, "float", thickness)
	    return dll_rtn
	}
	
	igSeparatorText(label)
	{
		;void igSeparatorText(const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igSeparatorText, "ptr", label)
	    return dll_rtn
	}
	
	igSeparatorTextEx(id, label, label_end, extra_width)
	{
		;void igSeparatorTextEx(ImGuiID id, const char* label, const char* label_end, float extra_width)
	    dll_rtn := DllCall(Cimgui_dll.igSeparatorTextEx, "uint", id, "ptr", label, "ptr", label_end, "float", extra_width)
	    return dll_rtn
	}
	
	igSetActiveID(id, window)
	{
		;void igSetActiveID(ImGuiID id, ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igSetActiveID, "uint", id, "ptr", window)
	    return dll_rtn
	}
	
	igSetActiveIdUsingAllKeyboardKeys()
	{
		;void igSetActiveIdUsingAllKeyboardKeys()
	    dll_rtn := DllCall(Cimgui_dll.igSetActiveIdUsingAllKeyboardKeys)
	    return dll_rtn
	}
	
	igSetAllocatorFunctions(alloc_func, free_func, user_data := 0)
	{
		;void igSetAllocatorFunctions(ImGuiMemAllocFunc alloc_func, ImGuiMemFreeFunc free_func, void* user_data)
	    dll_rtn := DllCall(Cimgui_dll.igSetAllocatorFunctions, "ptr", alloc_func, "ptr", free_func, "ptr", user_data)
	    return dll_rtn
	}
	
	igSetClipboardText(text)
	{
		;void igSetClipboardText(const char* text)
	    dll_rtn := DllCall(Cimgui_dll.igSetClipboardText, "ptr", text)
	    return dll_rtn
	}
	
	igSetColorEditOptions(flags)
	{
		;void igSetColorEditOptions(ImGuiColorEditFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSetColorEditOptions, "int", flags)
	    return dll_rtn
	}
	
	igSetColumnOffset(column_index, offset_x)
	{
		;void igSetColumnOffset(int column_index, float offset_x)
	    dll_rtn := DllCall(Cimgui_dll.igSetColumnOffset, "int", column_index, "float", offset_x)
	    return dll_rtn
	}
	
	igSetColumnWidth(column_index, width)
	{
		;void igSetColumnWidth(int column_index, float width)
	    dll_rtn := DllCall(Cimgui_dll.igSetColumnWidth, "int", column_index, "float", width)
	    return dll_rtn
	}
	
	igSetCurrentContext(ctx)
	{
		;void igSetCurrentContext(ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.igSetCurrentContext, "ptr", ctx)
	    return dll_rtn
	}
	
	igSetCurrentFont(font)
	{
		;void igSetCurrentFont(ImFont* font)
	    dll_rtn := DllCall(Cimgui_dll.igSetCurrentFont, "ptr", font)
	    return dll_rtn
	}
	
	igSetCurrentViewport(window, viewport)
	{
		;void igSetCurrentViewport(ImGuiWindow* window, ImGuiViewportP* viewport)
	    dll_rtn := DllCall(Cimgui_dll.igSetCurrentViewport, "ptr", window, "ptr", viewport)
	    return dll_rtn
	}
	
	igSetCursorPos(local_pos)
	{
		;void igSetCursorPos(const ImVec2 local_pos)
	    dll_rtn := DllCall(Cimgui_dll.igSetCursorPos, "int64", NumGet(local_pos, "int64"))
	    return dll_rtn
	}
	
	igSetCursorPosX(local_x)
	{
		;void igSetCursorPosX(float local_x)
	    dll_rtn := DllCall(Cimgui_dll.igSetCursorPosX, "float", local_x)
	    return dll_rtn
	}
	
	igSetCursorPosY(local_y)
	{
		;void igSetCursorPosY(float local_y)
	    dll_rtn := DllCall(Cimgui_dll.igSetCursorPosY, "float", local_y)
	    return dll_rtn
	}
	
	igSetCursorScreenPos(pos)
	{
		;void igSetCursorScreenPos(const ImVec2 pos)
	    dll_rtn := DllCall(Cimgui_dll.igSetCursorScreenPos, "int64", NumGet(pos, "int64"))
	    return dll_rtn
	}
	
	igSetDragDropPayload(type, data, sz, cond := 0)
	{
		;bool igSetDragDropPayload(const char* type, const void* data, size_t sz, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetDragDropPayload, "ptr", type, "ptr", data, "uptr", sz, "int", cond, "char")
	    return dll_rtn
	}
	
	igSetFocusID(id, window)
	{
		;void igSetFocusID(ImGuiID id, ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igSetFocusID, "uint", id, "ptr", window)
	    return dll_rtn
	}
	
	igSetHoveredID(id)
	{
		;void igSetHoveredID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igSetHoveredID, "uint", id)
	    return dll_rtn
	}
	
	igSetItemDefaultFocus()
	{
		;void igSetItemDefaultFocus()
	    dll_rtn := DllCall(Cimgui_dll.igSetItemDefaultFocus)
	    return dll_rtn
	}
	
	igSetItemKeyOwner(key, flags := 0)
	{
		;void igSetItemKeyOwner(ImGuiKey key, ImGuiInputFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSetItemKeyOwner, "int", key, "int", flags)
	    return dll_rtn
	}
	
	igSetItemTooltip(fmt, p*)
	{
		;void igSetItemTooltip(const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igSetItemTooltip, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igSetItemTooltipV(fmt, args)
	{
		;void igSetItemTooltipV(const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igSetItemTooltipV, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igSetKeyOwner(key, owner_id, flags := 0)
	{
		;void igSetKeyOwner(ImGuiKey key, ImGuiID owner_id, ImGuiInputFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSetKeyOwner, "int", key, "uint", owner_id, "int", flags)
	    return dll_rtn
	}
	
	igSetKeyOwnersForKeyChord(key, owner_id, flags := 0)
	{
		;void igSetKeyOwnersForKeyChord(ImGuiKeyChord key, ImGuiID owner_id, ImGuiInputFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSetKeyOwnersForKeyChord, "int", key, "uint", owner_id, "int", flags)
	    return dll_rtn
	}
	
	igSetKeyboardFocusHere(offset := 0)
	{
		;void igSetKeyboardFocusHere(int offset)
	    dll_rtn := DllCall(Cimgui_dll.igSetKeyboardFocusHere, "int", offset)
	    return dll_rtn
	}
	
	igSetLastItemData(item_id, in_flags, status_flags, item_rect)
	{
		;void igSetLastItemData(ImGuiID item_id, ImGuiItemFlags in_flags, ImGuiItemStatusFlags status_flags, const ImRect item_rect)
	    dll_rtn := DllCall(Cimgui_dll.igSetLastItemData, "uint", item_id, "int", in_flags, "int", status_flags, "ptr", item_rect)
	    return dll_rtn
	}
	
	igSetMouseCursor(cursor_type)
	{
		;void igSetMouseCursor(ImGuiMouseCursor cursor_type)
	    dll_rtn := DllCall(Cimgui_dll.igSetMouseCursor, "int", cursor_type)
	    return dll_rtn
	}
	
	igSetNavID(id, nav_layer, focus_scope_id, rect_rel)
	{
		;void igSetNavID(ImGuiID id, ImGuiNavLayer nav_layer, ImGuiID focus_scope_id, const ImRect rect_rel)
	    dll_rtn := DllCall(Cimgui_dll.igSetNavID, "uint", id, "int", nav_layer, "uint", focus_scope_id, "ptr", rect_rel)
	    return dll_rtn
	}
	
	igSetNavWindow(window)
	{
		;void igSetNavWindow(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igSetNavWindow, "ptr", window)
	    return dll_rtn
	}
	
	igSetNextFrameWantCaptureKeyboard(want_capture_keyboard)
	{
		;void igSetNextFrameWantCaptureKeyboard(bool want_capture_keyboard)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextFrameWantCaptureKeyboard, "char", want_capture_keyboard)
	    return dll_rtn
	}
	
	igSetNextFrameWantCaptureMouse(want_capture_mouse)
	{
		;void igSetNextFrameWantCaptureMouse(bool want_capture_mouse)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextFrameWantCaptureMouse, "char", want_capture_mouse)
	    return dll_rtn
	}
	
	igSetNextItemAllowOverlap()
	{
		;void igSetNextItemAllowOverlap()
	    dll_rtn := DllCall(Cimgui_dll.igSetNextItemAllowOverlap)
	    return dll_rtn
	}
	
	igSetNextItemOpen(is_open, cond := 0)
	{
		;void igSetNextItemOpen(bool is_open, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextItemOpen, "char", is_open, "int", cond)
	    return dll_rtn
	}
	
	igSetNextItemWidth(item_width)
	{
		;void igSetNextItemWidth(float item_width)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextItemWidth, "float", item_width)
	    return dll_rtn
	}
	
	igSetNextWindowBgAlpha(alpha)
	{
		;void igSetNextWindowBgAlpha(float alpha)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowBgAlpha, "float", alpha)
	    return dll_rtn
	}
	
	igSetNextWindowClass(window_class)
	{
		;void igSetNextWindowClass(const ImGuiWindowClass* window_class)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowClass, "ptr", window_class)
	    return dll_rtn
	}
	
	igSetNextWindowCollapsed(collapsed, cond := 0)
	{
		;void igSetNextWindowCollapsed(bool collapsed, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowCollapsed, "char", collapsed, "int", cond)
	    return dll_rtn
	}
	
	igSetNextWindowContentSize(size)
	{
		;void igSetNextWindowContentSize(const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowContentSize, "int64", NumGet(size, "int64"))
	    return dll_rtn
	}
	
	igSetNextWindowDockID(dock_id, cond := 0)
	{
		;void igSetNextWindowDockID(ImGuiID dock_id, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowDockID, "uint", dock_id, "int", cond)
	    return dll_rtn
	}
	
	igSetNextWindowFocus()
	{
		;void igSetNextWindowFocus()
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowFocus)
	    return dll_rtn
	}
	
	igSetNextWindowPos(pos, cond := 0, pivot := ImVec2([0, 0]))
	{
		;void igSetNextWindowPos(const ImVec2 pos, ImGuiCond cond, const ImVec2 pivot)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowPos, "int64", NumGet(pos, "int64"), "int", cond, "int64", NumGet(pivot, "int64"))
	    return dll_rtn
	}
	
	igSetNextWindowScroll(scroll)
	{
		;void igSetNextWindowScroll(const ImVec2 scroll)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowScroll, "int64", NumGet(scroll, "int64"))
	    return dll_rtn
	}
	
	igSetNextWindowSize(size, cond := 0)
	{
		;void igSetNextWindowSize(const ImVec2 size, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowSize, "int64", NumGet(size, "int64"), "int", cond)
	    return dll_rtn
	}
	
	igSetNextWindowSizeConstraints(size_min, size_max, custom_callback := 0, custom_callback_data := 0)
	{
		;void igSetNextWindowSizeConstraints(const ImVec2 size_min, const ImVec2 size_max, ImGuiSizeCallback custom_callback, void* custom_callback_data)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowSizeConstraints, "int64", NumGet(size_min, "int64"), "int64", NumGet(size_max, "int64"), "ptr", custom_callback, "ptr", custom_callback_data)
	    return dll_rtn
	}
	
	igSetNextWindowViewport(viewport_id)
	{
		;void igSetNextWindowViewport(ImGuiID viewport_id)
	    dll_rtn := DllCall(Cimgui_dll.igSetNextWindowViewport, "uint", viewport_id)
	    return dll_rtn
	}
	
	igSetScrollFromPosX_Float(local_x, center_x_ratio := 0.5)
	{
		;void igSetScrollFromPosX_Float(float local_x, float center_x_ratio)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollFromPosX_Float, "float", local_x, "float", center_x_ratio)
	    return dll_rtn
	}
	
	igSetScrollFromPosX_WindowPtr(window, local_x, center_x_ratio)
	{
		;void igSetScrollFromPosX_WindowPtr(ImGuiWindow* window, float local_x, float center_x_ratio)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollFromPosX_WindowPtr, "ptr", window, "float", local_x, "float", center_x_ratio)
	    return dll_rtn
	}
	
	igSetScrollFromPosY_Float(local_y, center_y_ratio := 0.5)
	{
		;void igSetScrollFromPosY_Float(float local_y, float center_y_ratio)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollFromPosY_Float, "float", local_y, "float", center_y_ratio)
	    return dll_rtn
	}
	
	igSetScrollFromPosY_WindowPtr(window, local_y, center_y_ratio)
	{
		;void igSetScrollFromPosY_WindowPtr(ImGuiWindow* window, float local_y, float center_y_ratio)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollFromPosY_WindowPtr, "ptr", window, "float", local_y, "float", center_y_ratio)
	    return dll_rtn
	}
	
	igSetScrollHereX(center_x_ratio := 0.5)
	{
		;void igSetScrollHereX(float center_x_ratio)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollHereX, "float", center_x_ratio)
	    return dll_rtn
	}
	
	igSetScrollHereY(center_y_ratio := 0.5)
	{
		;void igSetScrollHereY(float center_y_ratio)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollHereY, "float", center_y_ratio)
	    return dll_rtn
	}
	
	igSetScrollX_Float(scroll_x)
	{
		;void igSetScrollX_Float(float scroll_x)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollX_Float, "float", scroll_x)
	    return dll_rtn
	}
	
	igSetScrollX_WindowPtr(window, scroll_x)
	{
		;void igSetScrollX_WindowPtr(ImGuiWindow* window, float scroll_x)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollX_WindowPtr, "ptr", window, "float", scroll_x)
	    return dll_rtn
	}
	
	igSetScrollY_Float(scroll_y)
	{
		;void igSetScrollY_Float(float scroll_y)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollY_Float, "float", scroll_y)
	    return dll_rtn
	}
	
	igSetScrollY_WindowPtr(window, scroll_y)
	{
		;void igSetScrollY_WindowPtr(ImGuiWindow* window, float scroll_y)
	    dll_rtn := DllCall(Cimgui_dll.igSetScrollY_WindowPtr, "ptr", window, "float", scroll_y)
	    return dll_rtn
	}
	
	igSetShortcutRouting(key_chord, owner_id := 0, flags := 0)
	{
		;bool igSetShortcutRouting(ImGuiKeyChord key_chord, ImGuiID owner_id, ImGuiInputFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSetShortcutRouting, "int", key_chord, "uint", owner_id, "int", flags, "char")
	    return dll_rtn
	}
	
	igSetStateStorage(storage)
	{
		;void igSetStateStorage(ImGuiStorage* storage)
	    dll_rtn := DllCall(Cimgui_dll.igSetStateStorage, "ptr", storage)
	    return dll_rtn
	}
	
	igSetTabItemClosed(tab_or_docked_window_label)
	{
		;void igSetTabItemClosed(const char* tab_or_docked_window_label)
	    dll_rtn := DllCall(Cimgui_dll.igSetTabItemClosed, "ptr", tab_or_docked_window_label)
	    return dll_rtn
	}
	
	igSetTooltip(fmt, p*)
	{
		;void igSetTooltip(const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igSetTooltip, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igSetTooltipV(fmt, args)
	{
		;void igSetTooltipV(const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igSetTooltipV, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igSetWindowClipRectBeforeSetChannel(window, clip_rect)
	{
		;void igSetWindowClipRectBeforeSetChannel(ImGuiWindow* window, const ImRect clip_rect)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowClipRectBeforeSetChannel, "ptr", window, "ptr", clip_rect)
	    return dll_rtn
	}
	
	igSetWindowCollapsed_Bool(collapsed, cond := 0)
	{
		;void igSetWindowCollapsed_Bool(bool collapsed, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowCollapsed_Bool, "char", collapsed, "int", cond)
	    return dll_rtn
	}
	
	igSetWindowCollapsed_Str(name, collapsed, cond := 0)
	{
		;void igSetWindowCollapsed_Str(const char* name, bool collapsed, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowCollapsed_Str, "ptr", name, "char", collapsed, "int", cond)
	    return dll_rtn
	}
	
	igSetWindowCollapsed_WindowPtr(window, collapsed, cond := 0)
	{
		;void igSetWindowCollapsed_WindowPtr(ImGuiWindow* window, bool collapsed, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowCollapsed_WindowPtr, "ptr", window, "char", collapsed, "int", cond)
	    return dll_rtn
	}
	
	igSetWindowDock(window, dock_id, cond)
	{
		;void igSetWindowDock(ImGuiWindow* window, ImGuiID dock_id, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowDock, "ptr", window, "uint", dock_id, "int", cond)
	    return dll_rtn
	}
	
	igSetWindowFocus_Nil()
	{
		;void igSetWindowFocus_Nil()
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowFocus_Nil)
	    return dll_rtn
	}
	
	igSetWindowFocus_Str(name)
	{
		;void igSetWindowFocus_Str(const char* name)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowFocus_Str, "ptr", name)
	    return dll_rtn
	}
	
	igSetWindowFontScale(scale)
	{
		;void igSetWindowFontScale(float scale)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowFontScale, "float", scale)
	    return dll_rtn
	}
	
	igSetWindowHiddendAndSkipItemsForCurrentFrame(window)
	{
		;void igSetWindowHiddendAndSkipItemsForCurrentFrame(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowHiddendAndSkipItemsForCurrentFrame, "ptr", window)
	    return dll_rtn
	}
	
	igSetWindowHitTestHole(window, pos, size)
	{
		;void igSetWindowHitTestHole(ImGuiWindow* window, const ImVec2 pos, const ImVec2 size)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowHitTestHole, "ptr", window, "int64", NumGet(pos, "int64"), "int64", NumGet(size, "int64"))
	    return dll_rtn
	}
	
	igSetWindowPos_Vec2(pos, cond := 0)
	{
		;void igSetWindowPos_Vec2(const ImVec2 pos, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowPos_Vec2, "int64", NumGet(pos, "int64"), "int", cond)
	    return dll_rtn
	}
	
	igSetWindowPos_Str(name, pos, cond := 0)
	{
		;void igSetWindowPos_Str(const char* name, const ImVec2 pos, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowPos_Str, "ptr", name, "int64", NumGet(pos, "int64"), "int", cond)
	    return dll_rtn
	}
	
	igSetWindowPos_WindowPtr(window, pos, cond := 0)
	{
		;void igSetWindowPos_WindowPtr(ImGuiWindow* window, const ImVec2 pos, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowPos_WindowPtr, "ptr", window, "int64", NumGet(pos, "int64"), "int", cond)
	    return dll_rtn
	}
	
	igSetWindowSize_Vec2(size, cond := 0)
	{
		;void igSetWindowSize_Vec2(const ImVec2 size, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowSize_Vec2, "int64", NumGet(size, "int64"), "int", cond)
	    return dll_rtn
	}
	
	igSetWindowSize_Str(name, size, cond := 0)
	{
		;void igSetWindowSize_Str(const char* name, const ImVec2 size, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowSize_Str, "ptr", name, "int64", NumGet(size, "int64"), "int", cond)
	    return dll_rtn
	}
	
	igSetWindowSize_WindowPtr(window, size, cond := 0)
	{
		;void igSetWindowSize_WindowPtr(ImGuiWindow* window, const ImVec2 size, ImGuiCond cond)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowSize_WindowPtr, "ptr", window, "int64", NumGet(size, "int64"), "int", cond)
	    return dll_rtn
	}
	
	igSetWindowViewport(window, viewport)
	{
		;void igSetWindowViewport(ImGuiWindow* window, ImGuiViewportP* viewport)
	    dll_rtn := DllCall(Cimgui_dll.igSetWindowViewport, "ptr", window, "ptr", viewport)
	    return dll_rtn
	}
	
	igShadeVertsLinearColorGradientKeepAlpha(draw_list, vert_start_idx, vert_end_idx, gradient_p0, gradient_p1, col0, col1)
	{
		;void igShadeVertsLinearColorGradientKeepAlpha(ImDrawList* draw_list, int vert_start_idx, int vert_end_idx, ImVec2 gradient_p0, ImVec2 gradient_p1, ImU32 col0, ImU32 col1)
	    dll_rtn := DllCall(Cimgui_dll.igShadeVertsLinearColorGradientKeepAlpha, "ptr", draw_list, "int", vert_start_idx, "int", vert_end_idx, "int64", NumGet(gradient_p0, "int64"), "int64", NumGet(gradient_p1, "int64"), "uint", col0, "uint", col1)
	    return dll_rtn
	}
	
	igShadeVertsLinearUV(draw_list, vert_start_idx, vert_end_idx, a, b, uv_a, uv_b, clamp)
	{
		;void igShadeVertsLinearUV(ImDrawList* draw_list, int vert_start_idx, int vert_end_idx, const ImVec2 a, const ImVec2 b, const ImVec2 uv_a, const ImVec2 uv_b, bool clamp)
	    dll_rtn := DllCall(Cimgui_dll.igShadeVertsLinearUV, "ptr", draw_list, "int", vert_start_idx, "int", vert_end_idx, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(uv_a, "int64"), "int64", NumGet(uv_b, "int64"), "char", clamp)
	    return dll_rtn
	}
	
	igShortcut(key_chord, owner_id := 0, flags := 0)
	{
		;bool igShortcut(ImGuiKeyChord key_chord, ImGuiID owner_id, ImGuiInputFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igShortcut, "int", key_chord, "uint", owner_id, "int", flags, "char")
	    return dll_rtn
	}
	
	igShowAboutWindow(&p_open := 0)
	{
		;void igShowAboutWindow(bool* p_open)
	    dll_rtn := DllCall(Cimgui_dll.igShowAboutWindow, "char*", &p_open)
	    return dll_rtn
	}
	
	igShowDebugLogWindow(&p_open := 0)
	{
		;void igShowDebugLogWindow(bool* p_open)
	    dll_rtn := DllCall(Cimgui_dll.igShowDebugLogWindow, "char*", &p_open)
	    return dll_rtn
	}
	
	igShowDemoWindow(&p_open := 0)
	{
		;void igShowDemoWindow(bool* p_open)
	    dll_rtn := DllCall(Cimgui_dll.igShowDemoWindow, "char*", &p_open)
	    return dll_rtn
	}
	
	igShowFontAtlas(atlas)
	{
		;void igShowFontAtlas(ImFontAtlas* atlas)
	    dll_rtn := DllCall(Cimgui_dll.igShowFontAtlas, "ptr", atlas)
	    return dll_rtn
	}
	
	igShowFontSelector(label)
	{
		;void igShowFontSelector(const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igShowFontSelector, "ptr", label)
	    return dll_rtn
	}
	
	igShowMetricsWindow(&p_open := 0)
	{
		;void igShowMetricsWindow(bool* p_open)
	    dll_rtn := DllCall(Cimgui_dll.igShowMetricsWindow, "char*", &p_open)
	    return dll_rtn
	}
	
	igShowStackToolWindow(&p_open := 0)
	{
		;void igShowStackToolWindow(bool* p_open)
	    dll_rtn := DllCall(Cimgui_dll.igShowStackToolWindow, "char*", &p_open)
	    return dll_rtn
	}
	
	igShowStyleEditor(ref := 0)
	{
		;void igShowStyleEditor(ImGuiStyle* ref)
	    dll_rtn := DllCall(Cimgui_dll.igShowStyleEditor, "ptr", ref)
	    return dll_rtn
	}
	
	igShowStyleSelector(label)
	{
		;bool igShowStyleSelector(const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igShowStyleSelector, "ptr", label, "char")
	    return dll_rtn
	}
	
	igShowUserGuide()
	{
		;void igShowUserGuide()
	    dll_rtn := DllCall(Cimgui_dll.igShowUserGuide)
	    return dll_rtn
	}
	
	igShrinkWidths(items, count, width_excess)
	{
		;void igShrinkWidths(ImGuiShrinkWidthItem* items, int count, float width_excess)
	    dll_rtn := DllCall(Cimgui_dll.igShrinkWidths, "ptr", items, "int", count, "float", width_excess)
	    return dll_rtn
	}
	
	igShutdown()
	{
		;void igShutdown()
	    dll_rtn := DllCall(Cimgui_dll.igShutdown)
	    return dll_rtn
	}
	
	igSliderAngle(label, &v_rad, v_degrees_min := -360.0, v_degrees_max := +360.0, format := "%.0f deg", flags := 0)
	{
		;bool igSliderAngle(const char* label, float* v_rad, float v_degrees_min, float v_degrees_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderAngle, "ptr", label, "float*", &v_rad, "float", v_degrees_min, "float", v_degrees_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderBehavior(bb, id, data_type, p_v, p_min, p_max, format, flags, out_grab_bb)
	{
		;bool igSliderBehavior(const ImRect bb, ImGuiID id, ImGuiDataType data_type, void* p_v, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags, ImRect* out_grab_bb)
	    dll_rtn := DllCall(Cimgui_dll.igSliderBehavior, "ptr", bb, "uint", id, "int", data_type, "ptr", p_v, "ptr", p_min, "ptr", p_max, "ptr", format, "int", flags, "ptr", out_grab_bb, "char")
	    return dll_rtn
	}
	
	igSliderFloat(label, &v, v_min, v_max, format := "%.3f", flags := 0)
	{
		;bool igSliderFloat(const char* label, float* v, float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderFloat, "ptr", label, "float*", &v, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderFloat2(label, v, v_min, v_max, format := "%.3f", flags := 0)
	{
		;bool igSliderFloat2(const char* label, float v[2], float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderFloat2, "ptr", label, "ptr", v, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderFloat3(label, v, v_min, v_max, format := "%.3f", flags := 0)
	{
		;bool igSliderFloat3(const char* label, float v[3], float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderFloat3, "ptr", label, "ptr", v, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderFloat4(label, v, v_min, v_max, format := "%.3f", flags := 0)
	{
		;bool igSliderFloat4(const char* label, float v[4], float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderFloat4, "ptr", label, "ptr", v, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderInt(label, &v, v_min, v_max, format := "%d", flags := 0)
	{
		;bool igSliderInt(const char* label, int* v, int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderInt, "ptr", label, "int*", &v, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderInt2(label, v, v_min, v_max, format := "%d", flags := 0)
	{
		;bool igSliderInt2(const char* label, int v[2], int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderInt2, "ptr", label, "ptr", v, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderInt3(label, v, v_min, v_max, format := "%d", flags := 0)
	{
		;bool igSliderInt3(const char* label, int v[3], int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderInt3, "ptr", label, "ptr", v, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderInt4(label, v, v_min, v_max, format := "%d", flags := 0)
	{
		;bool igSliderInt4(const char* label, int v[4], int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderInt4, "ptr", label, "ptr", v, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderScalar(label, data_type, p_data, p_min, p_max, format := 0, flags := 0)
	{
		;bool igSliderScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderScalar, "ptr", label, "int", data_type, "ptr", p_data, "ptr", p_min, "ptr", p_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSliderScalarN(label, data_type, p_data, components, p_min, p_max, format := 0, flags := 0)
	{
		;bool igSliderScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igSliderScalarN, "ptr", label, "int", data_type, "ptr", p_data, "int", components, "ptr", p_min, "ptr", p_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igSmallButton(label)
	{
		;bool igSmallButton(const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igSmallButton, "ptr", label, "char")
	    return dll_rtn
	}
	
	igSpacing()
	{
		;void igSpacing()
	    dll_rtn := DllCall(Cimgui_dll.igSpacing)
	    return dll_rtn
	}
	
	igSplitterBehavior(bb, id, axis, &size1, &size2, min_size1, min_size2, hover_extend := 0.0, hover_visibility_delay := 0.0, bg_col := 0)
	{
		;bool igSplitterBehavior(const ImRect bb, ImGuiID id, ImGuiAxis axis, float* size1, float* size2, float min_size1, float min_size2, float hover_extend, float hover_visibility_delay, ImU32 bg_col)
	    dll_rtn := DllCall(Cimgui_dll.igSplitterBehavior, "ptr", bb, "uint", id, "int", axis, "float*", &size1, "float*", &size2, "float", min_size1, "float", min_size2, "float", hover_extend, "float", hover_visibility_delay, "uint", bg_col, "char")
	    return dll_rtn
	}
	
	igStartMouseMovingWindow(window)
	{
		;void igStartMouseMovingWindow(ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igStartMouseMovingWindow, "ptr", window)
	    return dll_rtn
	}
	
	igStartMouseMovingWindowOrNode(window, node, undock_floating_node)
	{
		;void igStartMouseMovingWindowOrNode(ImGuiWindow* window, ImGuiDockNode* node, bool undock_floating_node)
	    dll_rtn := DllCall(Cimgui_dll.igStartMouseMovingWindowOrNode, "ptr", window, "ptr", node, "char", undock_floating_node)
	    return dll_rtn
	}
	
	igStyleColorsClassic(dst := 0)
	{
		;void igStyleColorsClassic(ImGuiStyle* dst)
	    dll_rtn := DllCall(Cimgui_dll.igStyleColorsClassic, "ptr", dst)
	    return dll_rtn
	}
	
	igStyleColorsDark(dst := 0)
	{
		;void igStyleColorsDark(ImGuiStyle* dst)
	    dll_rtn := DllCall(Cimgui_dll.igStyleColorsDark, "ptr", dst)
	    return dll_rtn
	}
	
	igStyleColorsLight(dst := 0)
	{
		;void igStyleColorsLight(ImGuiStyle* dst)
	    dll_rtn := DllCall(Cimgui_dll.igStyleColorsLight, "ptr", dst)
	    return dll_rtn
	}
	
	igTabBarAddTab(tab_bar, tab_flags, window)
	{
		;void igTabBarAddTab(ImGuiTabBar* tab_bar, ImGuiTabItemFlags tab_flags, ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarAddTab, "ptr", tab_bar, "int", tab_flags, "ptr", window)
	    return dll_rtn
	}
	
	igTabBarCloseTab(tab_bar, tab)
	{
		;void igTabBarCloseTab(ImGuiTabBar* tab_bar, ImGuiTabItem* tab)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarCloseTab, "ptr", tab_bar, "ptr", tab)
	    return dll_rtn
	}
	
	igTabBarFindMostRecentlySelectedTabForActiveWindow(tab_bar)
	{
		;ImGuiTabItem* igTabBarFindMostRecentlySelectedTabForActiveWindow(ImGuiTabBar* tab_bar)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarFindMostRecentlySelectedTabForActiveWindow, "ptr", tab_bar, "ptr")
	    return dll_rtn
	}
	
	igTabBarFindTabByID(tab_bar, tab_id)
	{
		;ImGuiTabItem* igTabBarFindTabByID(ImGuiTabBar* tab_bar, ImGuiID tab_id)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarFindTabByID, "ptr", tab_bar, "uint", tab_id, "ptr")
	    return dll_rtn
	}
	
	igTabBarFindTabByOrder(tab_bar, order)
	{
		;ImGuiTabItem* igTabBarFindTabByOrder(ImGuiTabBar* tab_bar, int order)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarFindTabByOrder, "ptr", tab_bar, "int", order, "ptr")
	    return dll_rtn
	}
	
	igTabBarGetCurrentTab(tab_bar)
	{
		;ImGuiTabItem* igTabBarGetCurrentTab(ImGuiTabBar* tab_bar)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarGetCurrentTab, "ptr", tab_bar, "ptr")
	    return dll_rtn
	}
	
	igTabBarGetTabName(tab_bar, tab)
	{
		;const char* igTabBarGetTabName(ImGuiTabBar* tab_bar, ImGuiTabItem* tab)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarGetTabName, "ptr", tab_bar, "ptr", tab, "ptr")
	    return dll_rtn
	}
	
	igTabBarGetTabOrder(tab_bar, tab)
	{
		;int igTabBarGetTabOrder(ImGuiTabBar* tab_bar, ImGuiTabItem* tab)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarGetTabOrder, "ptr", tab_bar, "ptr", tab, "int")
	    return dll_rtn
	}
	
	igTabBarProcessReorder(tab_bar)
	{
		;bool igTabBarProcessReorder(ImGuiTabBar* tab_bar)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarProcessReorder, "ptr", tab_bar, "char")
	    return dll_rtn
	}
	
	igTabBarQueueFocus(tab_bar, tab)
	{
		;void igTabBarQueueFocus(ImGuiTabBar* tab_bar, ImGuiTabItem* tab)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarQueueFocus, "ptr", tab_bar, "ptr", tab)
	    return dll_rtn
	}
	
	igTabBarQueueReorder(tab_bar, tab, offset)
	{
		;void igTabBarQueueReorder(ImGuiTabBar* tab_bar, ImGuiTabItem* tab, int offset)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarQueueReorder, "ptr", tab_bar, "ptr", tab, "int", offset)
	    return dll_rtn
	}
	
	igTabBarQueueReorderFromMousePos(tab_bar, tab, mouse_pos)
	{
		;void igTabBarQueueReorderFromMousePos(ImGuiTabBar* tab_bar, ImGuiTabItem* tab, ImVec2 mouse_pos)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarQueueReorderFromMousePos, "ptr", tab_bar, "ptr", tab, "int64", NumGet(mouse_pos, "int64"))
	    return dll_rtn
	}
	
	igTabBarRemoveTab(tab_bar, tab_id)
	{
		;void igTabBarRemoveTab(ImGuiTabBar* tab_bar, ImGuiID tab_id)
	    dll_rtn := DllCall(Cimgui_dll.igTabBarRemoveTab, "ptr", tab_bar, "uint", tab_id)
	    return dll_rtn
	}
	
	igTabItemBackground(draw_list, bb, flags, col)
	{
		;void igTabItemBackground(ImDrawList* draw_list, const ImRect bb, ImGuiTabItemFlags flags, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.igTabItemBackground, "ptr", draw_list, "ptr", bb, "int", flags, "uint", col)
	    return dll_rtn
	}
	
	igTabItemButton(label, flags := 0)
	{
		;bool igTabItemButton(const char* label, ImGuiTabItemFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igTabItemButton, "ptr", label, "int", flags, "char")
	    return dll_rtn
	}
	
	igTabItemCalcSize_Str(pOut, label, has_close_button_or_unsaved_marker)
	{
		;void igTabItemCalcSize_Str(ImVec2 *pOut, const char* label, bool has_close_button_or_unsaved_marker)
	    dll_rtn := DllCall(Cimgui_dll.igTabItemCalcSize_Str, "ptr", pOut, "ptr", label, "char", has_close_button_or_unsaved_marker)
	    return dll_rtn
	}
	
	igTabItemCalcSize_WindowPtr(pOut, window)
	{
		;void igTabItemCalcSize_WindowPtr(ImVec2 *pOut, ImGuiWindow* window)
	    dll_rtn := DllCall(Cimgui_dll.igTabItemCalcSize_WindowPtr, "ptr", pOut, "ptr", window)
	    return dll_rtn
	}
	
	igTabItemEx(tab_bar, label, &p_open, flags, docked_window)
	{
		;bool igTabItemEx(ImGuiTabBar* tab_bar, const char* label, bool* p_open, ImGuiTabItemFlags flags, ImGuiWindow* docked_window)
	    dll_rtn := DllCall(Cimgui_dll.igTabItemEx, "ptr", tab_bar, "ptr", label, "char*", &p_open, "int", flags, "ptr", docked_window, "char")
	    return dll_rtn
	}
	
	igTabItemLabelAndCloseButton(draw_list, bb, flags, frame_padding, label, tab_id, close_button_id, is_contents_visible, &out_just_closed, &out_text_clipped)
	{
		;void igTabItemLabelAndCloseButton(ImDrawList* draw_list, const ImRect bb, ImGuiTabItemFlags flags, ImVec2 frame_padding, const char* label, ImGuiID tab_id, ImGuiID close_button_id, bool is_contents_visible, bool* out_just_closed, bool* out_text_clipped)
	    dll_rtn := DllCall(Cimgui_dll.igTabItemLabelAndCloseButton, "ptr", draw_list, "ptr", bb, "int", flags, "int64", NumGet(frame_padding, "int64"), "ptr", label, "uint", tab_id, "uint", close_button_id, "char", is_contents_visible, "char*", &out_just_closed, "char*", &out_text_clipped)
	    return dll_rtn
	}
	
	igTableBeginApplyRequests(table)
	{
		;void igTableBeginApplyRequests(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableBeginApplyRequests, "ptr", table)
	    return dll_rtn
	}
	
	igTableBeginCell(table, column_n)
	{
		;void igTableBeginCell(ImGuiTable* table, int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableBeginCell, "ptr", table, "int", column_n)
	    return dll_rtn
	}
	
	igTableBeginContextMenuPopup(table)
	{
		;bool igTableBeginContextMenuPopup(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableBeginContextMenuPopup, "ptr", table, "char")
	    return dll_rtn
	}
	
	igTableBeginInitMemory(table, columns_count)
	{
		;void igTableBeginInitMemory(ImGuiTable* table, int columns_count)
	    dll_rtn := DllCall(Cimgui_dll.igTableBeginInitMemory, "ptr", table, "int", columns_count)
	    return dll_rtn
	}
	
	igTableBeginRow(table)
	{
		;void igTableBeginRow(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableBeginRow, "ptr", table)
	    return dll_rtn
	}
	
	igTableDrawBorders(table)
	{
		;void igTableDrawBorders(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableDrawBorders, "ptr", table)
	    return dll_rtn
	}
	
	igTableDrawContextMenu(table)
	{
		;void igTableDrawContextMenu(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableDrawContextMenu, "ptr", table)
	    return dll_rtn
	}
	
	igTableEndCell(table)
	{
		;void igTableEndCell(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableEndCell, "ptr", table)
	    return dll_rtn
	}
	
	igTableEndRow(table)
	{
		;void igTableEndRow(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableEndRow, "ptr", table)
	    return dll_rtn
	}
	
	igTableFindByID(id)
	{
		;ImGuiTable* igTableFindByID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igTableFindByID, "uint", id, "ptr")
	    return dll_rtn
	}
	
	igTableFixColumnSortDirection(table, column)
	{
		;void igTableFixColumnSortDirection(ImGuiTable* table, ImGuiTableColumn* column)
	    dll_rtn := DllCall(Cimgui_dll.igTableFixColumnSortDirection, "ptr", table, "ptr", column)
	    return dll_rtn
	}
	
	igTableGcCompactSettings()
	{
		;void igTableGcCompactSettings()
	    dll_rtn := DllCall(Cimgui_dll.igTableGcCompactSettings)
	    return dll_rtn
	}
	
	igTableGcCompactTransientBuffers_TablePtr(table)
	{
		;void igTableGcCompactTransientBuffers_TablePtr(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableGcCompactTransientBuffers_TablePtr, "ptr", table)
	    return dll_rtn
	}
	
	igTableGcCompactTransientBuffers_TableTempDataPtr(table)
	{
		;void igTableGcCompactTransientBuffers_TableTempDataPtr(ImGuiTableTempData* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableGcCompactTransientBuffers_TableTempDataPtr, "ptr", table)
	    return dll_rtn
	}
	
	igTableGetBoundSettings(table)
	{
		;ImGuiTableSettings* igTableGetBoundSettings(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetBoundSettings, "ptr", table, "ptr")
	    return dll_rtn
	}
	
	igTableGetCellBgRect(pOut, table, column_n)
	{
		;void igTableGetCellBgRect(ImRect *pOut, const ImGuiTable* table, int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetCellBgRect, "ptr", pOut, "ptr", table, "int", column_n)
	    return dll_rtn
	}
	
	igTableGetColumnCount()
	{
		;int igTableGetColumnCount()
	    dll_rtn := DllCall(Cimgui_dll.igTableGetColumnCount, "int")
	    return dll_rtn
	}
	
	igTableGetColumnFlags(column_n := -1)
	{
		;ImGuiTableColumnFlags igTableGetColumnFlags(int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetColumnFlags, "int", column_n, "int")
	    return dll_rtn
	}
	
	igTableGetColumnIndex()
	{
		;int igTableGetColumnIndex()
	    dll_rtn := DllCall(Cimgui_dll.igTableGetColumnIndex, "int")
	    return dll_rtn
	}
	
	igTableGetColumnName_Int(column_n := -1)
	{
		;const char* igTableGetColumnName_Int(int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetColumnName_Int, "int", column_n, "ptr")
	    return dll_rtn
	}
	
	igTableGetColumnName_TablePtr(table, column_n)
	{
		;const char* igTableGetColumnName_TablePtr(const ImGuiTable* table, int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetColumnName_TablePtr, "ptr", table, "int", column_n, "ptr")
	    return dll_rtn
	}
	
	igTableGetColumnNextSortDirection(column)
	{
		;ImGuiSortDirection igTableGetColumnNextSortDirection(ImGuiTableColumn* column)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetColumnNextSortDirection, "ptr", column, "int")
	    return dll_rtn
	}
	
	igTableGetColumnResizeID(table, column_n, instance_no := 0)
	{
		;ImGuiID igTableGetColumnResizeID(ImGuiTable* table, int column_n, int instance_no)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetColumnResizeID, "ptr", table, "int", column_n, "int", instance_no, "uint")
	    return dll_rtn
	}
	
	igTableGetColumnWidthAuto(table, column)
	{
		;float igTableGetColumnWidthAuto(ImGuiTable* table, ImGuiTableColumn* column)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetColumnWidthAuto, "ptr", table, "ptr", column, "float")
	    return dll_rtn
	}
	
	igTableGetHeaderRowHeight()
	{
		;float igTableGetHeaderRowHeight()
	    dll_rtn := DllCall(Cimgui_dll.igTableGetHeaderRowHeight, "float")
	    return dll_rtn
	}
	
	igTableGetHoveredColumn()
	{
		;int igTableGetHoveredColumn()
	    dll_rtn := DllCall(Cimgui_dll.igTableGetHoveredColumn, "int")
	    return dll_rtn
	}
	
	igTableGetHoveredRow()
	{
		;int igTableGetHoveredRow()
	    dll_rtn := DllCall(Cimgui_dll.igTableGetHoveredRow, "int")
	    return dll_rtn
	}
	
	igTableGetInstanceData(table, instance_no)
	{
		;ImGuiTableInstanceData* igTableGetInstanceData(ImGuiTable* table, int instance_no)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetInstanceData, "ptr", table, "int", instance_no, "ptr")
	    return dll_rtn
	}
	
	igTableGetInstanceID(table, instance_no)
	{
		;ImGuiID igTableGetInstanceID(ImGuiTable* table, int instance_no)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetInstanceID, "ptr", table, "int", instance_no, "uint")
	    return dll_rtn
	}
	
	igTableGetMaxColumnWidth(table, column_n)
	{
		;float igTableGetMaxColumnWidth(const ImGuiTable* table, int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableGetMaxColumnWidth, "ptr", table, "int", column_n, "float")
	    return dll_rtn
	}
	
	igTableGetRowIndex()
	{
		;int igTableGetRowIndex()
	    dll_rtn := DllCall(Cimgui_dll.igTableGetRowIndex, "int")
	    return dll_rtn
	}
	
	igTableGetSortSpecs()
	{
		;ImGuiTableSortSpecs* igTableGetSortSpecs()
	    dll_rtn := DllCall(Cimgui_dll.igTableGetSortSpecs, "ptr")
	    return dll_rtn
	}
	
	igTableHeader(label)
	{
		;void igTableHeader(const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igTableHeader, "ptr", label)
	    return dll_rtn
	}
	
	igTableHeadersRow()
	{
		;void igTableHeadersRow()
	    dll_rtn := DllCall(Cimgui_dll.igTableHeadersRow)
	    return dll_rtn
	}
	
	igTableLoadSettings(table)
	{
		;void igTableLoadSettings(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableLoadSettings, "ptr", table)
	    return dll_rtn
	}
	
	igTableMergeDrawChannels(table)
	{
		;void igTableMergeDrawChannels(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableMergeDrawChannels, "ptr", table)
	    return dll_rtn
	}
	
	igTableNextColumn()
	{
		;bool igTableNextColumn()
	    dll_rtn := DllCall(Cimgui_dll.igTableNextColumn, "char")
	    return dll_rtn
	}
	
	igTableNextRow(row_flags := 0, min_row_height := 0.0)
	{
		;void igTableNextRow(ImGuiTableRowFlags row_flags, float min_row_height)
	    dll_rtn := DllCall(Cimgui_dll.igTableNextRow, "int", row_flags, "float", min_row_height)
	    return dll_rtn
	}
	
	igTableOpenContextMenu(column_n := -1)
	{
		;void igTableOpenContextMenu(int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableOpenContextMenu, "int", column_n)
	    return dll_rtn
	}
	
	igTablePopBackgroundChannel()
	{
		;void igTablePopBackgroundChannel()
	    dll_rtn := DllCall(Cimgui_dll.igTablePopBackgroundChannel)
	    return dll_rtn
	}
	
	igTablePushBackgroundChannel()
	{
		;void igTablePushBackgroundChannel()
	    dll_rtn := DllCall(Cimgui_dll.igTablePushBackgroundChannel)
	    return dll_rtn
	}
	
	igTableRemove(table)
	{
		;void igTableRemove(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableRemove, "ptr", table)
	    return dll_rtn
	}
	
	igTableResetSettings(table)
	{
		;void igTableResetSettings(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableResetSettings, "ptr", table)
	    return dll_rtn
	}
	
	igTableSaveSettings(table)
	{
		;void igTableSaveSettings(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableSaveSettings, "ptr", table)
	    return dll_rtn
	}
	
	igTableSetBgColor(target, color, column_n := -1)
	{
		;void igTableSetBgColor(ImGuiTableBgTarget target, ImU32 color, int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetBgColor, "int", target, "uint", color, "int", column_n)
	    return dll_rtn
	}
	
	igTableSetColumnEnabled(column_n, v)
	{
		;void igTableSetColumnEnabled(int column_n, bool v)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetColumnEnabled, "int", column_n, "char", v)
	    return dll_rtn
	}
	
	igTableSetColumnIndex(column_n)
	{
		;bool igTableSetColumnIndex(int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetColumnIndex, "int", column_n, "char")
	    return dll_rtn
	}
	
	igTableSetColumnSortDirection(column_n, sort_direction, append_to_sort_specs)
	{
		;void igTableSetColumnSortDirection(int column_n, ImGuiSortDirection sort_direction, bool append_to_sort_specs)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetColumnSortDirection, "int", column_n, "int", sort_direction, "char", append_to_sort_specs)
	    return dll_rtn
	}
	
	igTableSetColumnWidth(column_n, width)
	{
		;void igTableSetColumnWidth(int column_n, float width)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetColumnWidth, "int", column_n, "float", width)
	    return dll_rtn
	}
	
	igTableSetColumnWidthAutoAll(table)
	{
		;void igTableSetColumnWidthAutoAll(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetColumnWidthAutoAll, "ptr", table)
	    return dll_rtn
	}
	
	igTableSetColumnWidthAutoSingle(table, column_n)
	{
		;void igTableSetColumnWidthAutoSingle(ImGuiTable* table, int column_n)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetColumnWidthAutoSingle, "ptr", table, "int", column_n)
	    return dll_rtn
	}
	
	igTableSettingsAddSettingsHandler()
	{
		;void igTableSettingsAddSettingsHandler()
	    dll_rtn := DllCall(Cimgui_dll.igTableSettingsAddSettingsHandler)
	    return dll_rtn
	}
	
	igTableSettingsCreate(id, columns_count)
	{
		;ImGuiTableSettings* igTableSettingsCreate(ImGuiID id, int columns_count)
	    dll_rtn := DllCall(Cimgui_dll.igTableSettingsCreate, "uint", id, "int", columns_count, "ptr")
	    return dll_rtn
	}
	
	igTableSettingsFindByID(id)
	{
		;ImGuiTableSettings* igTableSettingsFindByID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igTableSettingsFindByID, "uint", id, "ptr")
	    return dll_rtn
	}
	
	igTableSetupColumn(label, flags := 0, init_width_or_weight := 0.0, user_id := 0)
	{
		;void igTableSetupColumn(const char* label, ImGuiTableColumnFlags flags, float init_width_or_weight, ImGuiID user_id)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetupColumn, "ptr", label, "int", flags, "float", init_width_or_weight, "uint", user_id)
	    return dll_rtn
	}
	
	igTableSetupDrawChannels(table)
	{
		;void igTableSetupDrawChannels(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetupDrawChannels, "ptr", table)
	    return dll_rtn
	}
	
	igTableSetupScrollFreeze(cols, rows)
	{
		;void igTableSetupScrollFreeze(int cols, int rows)
	    dll_rtn := DllCall(Cimgui_dll.igTableSetupScrollFreeze, "int", cols, "int", rows)
	    return dll_rtn
	}
	
	igTableSortSpecsBuild(table)
	{
		;void igTableSortSpecsBuild(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableSortSpecsBuild, "ptr", table)
	    return dll_rtn
	}
	
	igTableSortSpecsSanitize(table)
	{
		;void igTableSortSpecsSanitize(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableSortSpecsSanitize, "ptr", table)
	    return dll_rtn
	}
	
	igTableUpdateBorders(table)
	{
		;void igTableUpdateBorders(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableUpdateBorders, "ptr", table)
	    return dll_rtn
	}
	
	igTableUpdateColumnsWeightFromWidth(table)
	{
		;void igTableUpdateColumnsWeightFromWidth(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableUpdateColumnsWeightFromWidth, "ptr", table)
	    return dll_rtn
	}
	
	igTableUpdateLayout(table)
	{
		;void igTableUpdateLayout(ImGuiTable* table)
	    dll_rtn := DllCall(Cimgui_dll.igTableUpdateLayout, "ptr", table)
	    return dll_rtn
	}
	
	igTempInputIsActive(id)
	{
		;bool igTempInputIsActive(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igTempInputIsActive, "uint", id, "char")
	    return dll_rtn
	}
	
	igTempInputScalar(bb, id, label, data_type, p_data, format, p_clamp_min := 0, p_clamp_max := 0)
	{
		;bool igTempInputScalar(const ImRect bb, ImGuiID id, const char* label, ImGuiDataType data_type, void* p_data, const char* format, const void* p_clamp_min, const void* p_clamp_max)
	    dll_rtn := DllCall(Cimgui_dll.igTempInputScalar, "ptr", bb, "uint", id, "ptr", label, "int", data_type, "ptr", p_data, "ptr", format, "ptr", p_clamp_min, "ptr", p_clamp_max, "char")
	    return dll_rtn
	}
	
	igTempInputText(bb, id, label, buf, buf_size, flags)
	{
		;bool igTempInputText(const ImRect bb, ImGuiID id, const char* label, char* buf, int buf_size, ImGuiInputTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igTempInputText, "ptr", bb, "uint", id, "ptr", label, "ptr", buf, "int", buf_size, "int", flags, "char")
	    return dll_rtn
	}
	
	igTestKeyOwner(key, owner_id)
	{
		;bool igTestKeyOwner(ImGuiKey key, ImGuiID owner_id)
	    dll_rtn := DllCall(Cimgui_dll.igTestKeyOwner, "int", key, "uint", owner_id, "char")
	    return dll_rtn
	}
	
	igTestShortcutRouting(key_chord, owner_id)
	{
		;bool igTestShortcutRouting(ImGuiKeyChord key_chord, ImGuiID owner_id)
	    dll_rtn := DllCall(Cimgui_dll.igTestShortcutRouting, "int", key_chord, "uint", owner_id, "char")
	    return dll_rtn
	}
	
	igText(fmt, p*)
	{
		;void igText(const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igText, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igTextColored(col, fmt, p*)
	{
		;void igTextColored(const ImVec4 col, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igTextColored, "ptr", col, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igTextColoredV(col, fmt, args)
	{
		;void igTextColoredV(const ImVec4 col, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igTextColoredV, "ptr", col, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igTextDisabled(fmt, p*)
	{
		;void igTextDisabled(const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igTextDisabled, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igTextDisabledV(fmt, args)
	{
		;void igTextDisabledV(const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igTextDisabledV, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igTextEx(text, text_end := 0, flags := 0)
	{
		;void igTextEx(const char* text, const char* text_end, ImGuiTextFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igTextEx, "ptr", text, "ptr", text_end, "int", flags)
	    return dll_rtn
	}
	
	igTextUnformatted(text, text_end := 0)
	{
		;void igTextUnformatted(const char* text, const char* text_end)
	    dll_rtn := DllCall(Cimgui_dll.igTextUnformatted, "ptr", text, "ptr", text_end)
	    return dll_rtn
	}
	
	igTextV(fmt, args)
	{
		;void igTextV(const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igTextV, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igTextWrapped(fmt, p*)
	{
		;void igTextWrapped(const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igTextWrapped, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igTextWrappedV(fmt, args)
	{
		;void igTextWrappedV(const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igTextWrappedV, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	igTranslateWindowsInViewport(viewport, old_pos, new_pos)
	{
		;void igTranslateWindowsInViewport(ImGuiViewportP* viewport, const ImVec2 old_pos, const ImVec2 new_pos)
	    dll_rtn := DllCall(Cimgui_dll.igTranslateWindowsInViewport, "ptr", viewport, "int64", NumGet(old_pos, "int64"), "int64", NumGet(new_pos, "int64"))
	    return dll_rtn
	}
	
	igTreeNode_Str(label)
	{
		;bool igTreeNode_Str(const char* label)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNode_Str, "ptr", label, "char")
	    return dll_rtn
	}
	
	igTreeNode_StrStr(str_id, fmt, p*)
	{
		;bool igTreeNode_StrStr(const char* str_id, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNode_StrStr, "ptr", str_id, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igTreeNode_Ptr(ptr_id, fmt, p*)
	{
		;bool igTreeNode_Ptr(const void* ptr_id, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNode_Ptr, "ptr", ptr_id, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igTreeNodeBehavior(id, flags, label, label_end := 0)
	{
		;bool igTreeNodeBehavior(ImGuiID id, ImGuiTreeNodeFlags flags, const char* label, const char* label_end)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeBehavior, "uint", id, "int", flags, "ptr", label, "ptr", label_end, "char")
	    return dll_rtn
	}
	
	igTreeNodeEx_Str(label, flags := 0)
	{
		;bool igTreeNodeEx_Str(const char* label, ImGuiTreeNodeFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeEx_Str, "ptr", label, "int", flags, "char")
	    return dll_rtn
	}
	
	igTreeNodeEx_StrStr(str_id, flags, fmt, p*)
	{
		;bool igTreeNodeEx_StrStr(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeEx_StrStr, "ptr", str_id, "int", flags, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igTreeNodeEx_Ptr(ptr_id, flags, fmt, p*)
	{
		;bool igTreeNodeEx_Ptr(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeEx_Ptr, "ptr", ptr_id, "int", flags, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	igTreeNodeExV_Str(str_id, flags, fmt, args)
	{
		;bool igTreeNodeExV_Str(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeExV_Str, "ptr", str_id, "int", flags, "ptr", fmt, "ptr", args, "char")
	    return dll_rtn
	}
	
	igTreeNodeExV_Ptr(ptr_id, flags, fmt, args)
	{
		;bool igTreeNodeExV_Ptr(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeExV_Ptr, "ptr", ptr_id, "int", flags, "ptr", fmt, "ptr", args, "char")
	    return dll_rtn
	}
	
	igTreeNodeSetOpen(id, open)
	{
		;void igTreeNodeSetOpen(ImGuiID id, bool open)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeSetOpen, "uint", id, "char", open)
	    return dll_rtn
	}
	
	igTreeNodeUpdateNextOpen(id, flags)
	{
		;bool igTreeNodeUpdateNextOpen(ImGuiID id, ImGuiTreeNodeFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeUpdateNextOpen, "uint", id, "int", flags, "char")
	    return dll_rtn
	}
	
	igTreeNodeV_Str(str_id, fmt, args)
	{
		;bool igTreeNodeV_Str(const char* str_id, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeV_Str, "ptr", str_id, "ptr", fmt, "ptr", args, "char")
	    return dll_rtn
	}
	
	igTreeNodeV_Ptr(ptr_id, fmt, args)
	{
		;bool igTreeNodeV_Ptr(const void* ptr_id, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.igTreeNodeV_Ptr, "ptr", ptr_id, "ptr", fmt, "ptr", args, "char")
	    return dll_rtn
	}
	
	igTreePop()
	{
		;void igTreePop()
	    dll_rtn := DllCall(Cimgui_dll.igTreePop)
	    return dll_rtn
	}
	
	igTreePush_Str(str_id)
	{
		;void igTreePush_Str(const char* str_id)
	    dll_rtn := DllCall(Cimgui_dll.igTreePush_Str, "ptr", str_id)
	    return dll_rtn
	}
	
	igTreePush_Ptr(ptr_id)
	{
		;void igTreePush_Ptr(const void* ptr_id)
	    dll_rtn := DllCall(Cimgui_dll.igTreePush_Ptr, "ptr", ptr_id)
	    return dll_rtn
	}
	
	igTreePushOverrideID(id)
	{
		;void igTreePushOverrideID(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.igTreePushOverrideID, "uint", id)
	    return dll_rtn
	}
	
	igUnindent(indent_w := 0.0)
	{
		;void igUnindent(float indent_w)
	    dll_rtn := DllCall(Cimgui_dll.igUnindent, "float", indent_w)
	    return dll_rtn
	}
	
	igUpdateHoveredWindowAndCaptureFlags()
	{
		;void igUpdateHoveredWindowAndCaptureFlags()
	    dll_rtn := DllCall(Cimgui_dll.igUpdateHoveredWindowAndCaptureFlags)
	    return dll_rtn
	}
	
	igUpdateInputEvents(trickle_fast_inputs)
	{
		;void igUpdateInputEvents(bool trickle_fast_inputs)
	    dll_rtn := DllCall(Cimgui_dll.igUpdateInputEvents, "char", trickle_fast_inputs)
	    return dll_rtn
	}
	
	igUpdateMouseMovingWindowEndFrame()
	{
		;void igUpdateMouseMovingWindowEndFrame()
	    dll_rtn := DllCall(Cimgui_dll.igUpdateMouseMovingWindowEndFrame)
	    return dll_rtn
	}
	
	igUpdateMouseMovingWindowNewFrame()
	{
		;void igUpdateMouseMovingWindowNewFrame()
	    dll_rtn := DllCall(Cimgui_dll.igUpdateMouseMovingWindowNewFrame)
	    return dll_rtn
	}
	
	igUpdatePlatformWindows()
	{
		;void igUpdatePlatformWindows()
	    dll_rtn := DllCall(Cimgui_dll.igUpdatePlatformWindows)
	    return dll_rtn
	}
	
	igUpdateWindowParentAndRootLinks(window, flags, parent_window)
	{
		;void igUpdateWindowParentAndRootLinks(ImGuiWindow* window, ImGuiWindowFlags flags, ImGuiWindow* parent_window)
	    dll_rtn := DllCall(Cimgui_dll.igUpdateWindowParentAndRootLinks, "ptr", window, "int", flags, "ptr", parent_window)
	    return dll_rtn
	}
	
	igVSliderFloat(label, size, &v, v_min, v_max, format := "%.3f", flags := 0)
	{
		;bool igVSliderFloat(const char* label, const ImVec2 size, float* v, float v_min, float v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igVSliderFloat, "ptr", label, "int64", NumGet(size, "int64"), "float*", &v, "float", v_min, "float", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igVSliderInt(label, size, &v, v_min, v_max, format := "%d", flags := 0)
	{
		;bool igVSliderInt(const char* label, const ImVec2 size, int* v, int v_min, int v_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igVSliderInt, "ptr", label, "int64", NumGet(size, "int64"), "int*", &v, "int", v_min, "int", v_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igVSliderScalar(label, size, data_type, p_data, p_min, p_max, format := 0, flags := 0)
	{
		;bool igVSliderScalar(const char* label, const ImVec2 size, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.igVSliderScalar, "ptr", label, "int64", NumGet(size, "int64"), "int", data_type, "ptr", p_data, "ptr", p_min, "ptr", p_max, "ptr", format, "int", flags, "char")
	    return dll_rtn
	}
	
	igValue_Bool(prefix, b)
	{
		;void igValue_Bool(const char* prefix, bool b)
	    dll_rtn := DllCall(Cimgui_dll.igValue_Bool, "ptr", prefix, "char", b)
	    return dll_rtn
	}
	
	igValue_Int(prefix, v)
	{
		;void igValue_Int(const char* prefix, int v)
	    dll_rtn := DllCall(Cimgui_dll.igValue_Int, "ptr", prefix, "int", v)
	    return dll_rtn
	}
	
	igValue_Uint(prefix, v)
	{
		;void igValue_Uint(const char* prefix, unsigned int v)
	    dll_rtn := DllCall(Cimgui_dll.igValue_Uint, "ptr", prefix, "uint", v)
	    return dll_rtn
	}
	
	igValue_Float(prefix, v, float_format := 0)
	{
		;void igValue_Float(const char* prefix, float v, const char* float_format)
	    dll_rtn := DllCall(Cimgui_dll.igValue_Float, "ptr", prefix, "float", v, "ptr", float_format)
	    return dll_rtn
	}
	
	igWindowPosRelToAbs(pOut, window, p)
	{
		;void igWindowPosRelToAbs(ImVec2 *pOut, ImGuiWindow* window, const ImVec2 p)
	    dll_rtn := DllCall(Cimgui_dll.igWindowPosRelToAbs, "ptr", pOut, "ptr", window, "int64", NumGet(p, "int64"))
	    return dll_rtn
	}
	
	igWindowRectAbsToRel(pOut, window, r)
	{
		;void igWindowRectAbsToRel(ImRect *pOut, ImGuiWindow* window, const ImRect r)
	    dll_rtn := DllCall(Cimgui_dll.igWindowRectAbsToRel, "ptr", pOut, "ptr", window, "ptr", r)
	    return dll_rtn
	}
	
	igWindowRectRelToAbs(pOut, window, r)
	{
		;void igWindowRectRelToAbs(ImRect *pOut, ImGuiWindow* window, const ImRect r)
	    dll_rtn := DllCall(Cimgui_dll.igWindowRectRelToAbs, "ptr", pOut, "ptr", window, "ptr", r)
	    return dll_rtn
	}
	
}
class ImBitVector_AHK extends ImBitVector
{
	Clear()
	{
		;void ImBitVector_Clear(ImBitVector* this)
	    dll_rtn := DllCall(Cimgui_dll.ImBitVector_Clear, "ptr", this)
	    return dll_rtn
	}
	
	ClearBit(n)
	{
		;void ImBitVector_ClearBit(ImBitVector* this, int n)
	    dll_rtn := DllCall(Cimgui_dll.ImBitVector_ClearBit, "ptr", this, "int", n)
	    return dll_rtn
	}
	
	Create(sz)
	{
		;void ImBitVector_Create(ImBitVector* this, int sz)
	    dll_rtn := DllCall(Cimgui_dll.ImBitVector_Create, "ptr", this, "int", sz)
	    return dll_rtn
	}
	
	SetBit(n)
	{
		;void ImBitVector_SetBit(ImBitVector* this, int n)
	    dll_rtn := DllCall(Cimgui_dll.ImBitVector_SetBit, "ptr", this, "int", n)
	    return dll_rtn
	}
	
	TestBit(n)
	{
		;bool ImBitVector_TestBit(ImBitVector* this, int n)
	    dll_rtn := DllCall(Cimgui_dll.ImBitVector_TestBit, "ptr", this, "int", n, "char")
	    return dll_rtn
	}
	
}
class ImColor_AHK extends ImColor
{
	static ImColor_Nil()
	{
		;ImColor* ImColor_ImColor_Nil()
	    dll_rtn := DllCall(Cimgui_dll.ImColor_ImColor_Nil, "ptr")
	    return dll_rtn
	}
	
	static ImColor_Float(r, g, b, a := 1.0)
	{
		;ImColor* ImColor_ImColor_Float(float r, float g, float b, float a)
	    dll_rtn := DllCall(Cimgui_dll.ImColor_ImColor_Float, "float", r, "float", g, "float", b, "float", a, "ptr")
	    return dll_rtn
	}
	
	static ImColor_Vec4(col)
	{
		;ImColor* ImColor_ImColor_Vec4(const ImVec4 col)
	    dll_rtn := DllCall(Cimgui_dll.ImColor_ImColor_Vec4, "ptr", col, "ptr")
	    return dll_rtn
	}
	
	static ImColor_Int(r, g, b, a := 255)
	{
		;ImColor* ImColor_ImColor_Int(int r, int g, int b, int a)
	    dll_rtn := DllCall(Cimgui_dll.ImColor_ImColor_Int, "int", r, "int", g, "int", b, "int", a, "ptr")
	    return dll_rtn
	}
	
	static ImColor_U32(rgba)
	{
		;ImColor* ImColor_ImColor_U32(ImU32 rgba)
	    dll_rtn := DllCall(Cimgui_dll.ImColor_ImColor_U32, "uint", rgba, "ptr")
	    return dll_rtn
	}
	
	SetHSV(h, s, v, a := 1.0)
	{
		;void ImColor_SetHSV(ImColor* this, float h, float s, float v, float a)
	    dll_rtn := DllCall(Cimgui_dll.ImColor_SetHSV, "ptr", this, "float", h, "float", s, "float", v, "float", a)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImColor_destroy(ImColor* this)
	    dll_rtn := DllCall(Cimgui_dll.ImColor_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImDrawCmd_AHK extends ImDrawCmd
{
	GetTexID()
	{
		;ImTextureID ImDrawCmd_GetTexID(ImDrawCmd* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawCmd_GetTexID, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	static ImDrawCmd()
	{
		;ImDrawCmd* ImDrawCmd_ImDrawCmd()
	    dll_rtn := DllCall(Cimgui_dll.ImDrawCmd_ImDrawCmd, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImDrawCmd_destroy(ImDrawCmd* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawCmd_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImDrawData_AHK extends ImDrawData
{
	AddDrawList(draw_list)
	{
		;void ImDrawData_AddDrawList(ImDrawData* this, ImDrawList* draw_list)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawData_AddDrawList, "ptr", this, "ptr", draw_list)
	    return dll_rtn
	}
	
	Clear()
	{
		;void ImDrawData_Clear(ImDrawData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawData_Clear, "ptr", this)
	    return dll_rtn
	}
	
	DeIndexAllBuffers()
	{
		;void ImDrawData_DeIndexAllBuffers(ImDrawData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawData_DeIndexAllBuffers, "ptr", this)
	    return dll_rtn
	}
	
	static ImDrawData()
	{
		;ImDrawData* ImDrawData_ImDrawData()
	    dll_rtn := DllCall(Cimgui_dll.ImDrawData_ImDrawData, "ptr")
	    return dll_rtn
	}
	
	ScaleClipRects(fb_scale)
	{
		;void ImDrawData_ScaleClipRects(ImDrawData* this, const ImVec2 fb_scale)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawData_ScaleClipRects, "ptr", this, "int64", NumGet(fb_scale, "int64"))
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImDrawData_destroy(ImDrawData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImDrawDataBuilder_AHK extends ImDrawDataBuilder
{
	static ImDrawDataBuilder()
	{
		;ImDrawDataBuilder* ImDrawDataBuilder_ImDrawDataBuilder()
	    dll_rtn := DllCall(Cimgui_dll.ImDrawDataBuilder_ImDrawDataBuilder, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImDrawDataBuilder_destroy(ImDrawDataBuilder* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawDataBuilder_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImDrawList_AHK extends ImDrawList
{
	AddBezierCubic(p1, p2, p3, p4, col, thickness, num_segments := 0)
	{
		;void ImDrawList_AddBezierCubic(ImDrawList* this, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, const ImVec2 p4, ImU32 col, float thickness, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddBezierCubic, "ptr", this, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int64", NumGet(p4, "int64"), "uint", col, "float", thickness, "int", num_segments)
	    return dll_rtn
	}
	
	AddBezierQuadratic(p1, p2, p3, col, thickness, num_segments := 0)
	{
		;void ImDrawList_AddBezierQuadratic(ImDrawList* this, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, ImU32 col, float thickness, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddBezierQuadratic, "ptr", this, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "uint", col, "float", thickness, "int", num_segments)
	    return dll_rtn
	}
	
	AddCallback(callback, callback_data)
	{
		;void ImDrawList_AddCallback(ImDrawList* this, ImDrawCallback callback, void* callback_data)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddCallback, "ptr", this, "ptr", callback, "ptr", callback_data)
	    return dll_rtn
	}
	
	AddCircle(center, radius, col, num_segments := 0, thickness := 1.0)
	{
		;void ImDrawList_AddCircle(ImDrawList* this, const ImVec2 center, float radius, ImU32 col, int num_segments, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddCircle, "ptr", this, "int64", NumGet(center, "int64"), "float", radius, "uint", col, "int", num_segments, "float", thickness)
	    return dll_rtn
	}
	
	AddCircleFilled(center, radius, col, num_segments := 0)
	{
		;void ImDrawList_AddCircleFilled(ImDrawList* this, const ImVec2 center, float radius, ImU32 col, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddCircleFilled, "ptr", this, "int64", NumGet(center, "int64"), "float", radius, "uint", col, "int", num_segments)
	    return dll_rtn
	}
	
	AddConvexPolyFilled(points, num_points, col)
	{
		;void ImDrawList_AddConvexPolyFilled(ImDrawList* this, const ImVec2* points, int num_points, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddConvexPolyFilled, "ptr", this, "ptr", points, "int", num_points, "uint", col)
	    return dll_rtn
	}
	
	AddDrawCmd()
	{
		;void ImDrawList_AddDrawCmd(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddDrawCmd, "ptr", this)
	    return dll_rtn
	}
	
	AddImage(user_texture_id, p_min, p_max, uv_min := ImVec2([0, 0]), uv_max := ImVec2([1, 1]), col := 4294967295)
	{
		;void ImDrawList_AddImage(ImDrawList* this, ImTextureID user_texture_id, const ImVec2 p_min, const ImVec2 p_max, const ImVec2 uv_min, const ImVec2 uv_max, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddImage, "ptr", this, "ptr", user_texture_id, "int64", NumGet(p_min, "int64"), "int64", NumGet(p_max, "int64"), "int64", NumGet(uv_min, "int64"), "int64", NumGet(uv_max, "int64"), "uint", col)
	    return dll_rtn
	}
	
	AddImageQuad(user_texture_id, p1, p2, p3, p4, uv1 := ImVec2([0, 0]), uv2 := ImVec2([1, 0]), uv3 := ImVec2([1, 1]), uv4 := ImVec2([0, 1]), col := 4294967295)
	{
		;void ImDrawList_AddImageQuad(ImDrawList* this, ImTextureID user_texture_id, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, const ImVec2 p4, const ImVec2 uv1, const ImVec2 uv2, const ImVec2 uv3, const ImVec2 uv4, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddImageQuad, "ptr", this, "ptr", user_texture_id, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int64", NumGet(p4, "int64"), "int64", NumGet(uv1, "int64"), "int64", NumGet(uv2, "int64"), "int64", NumGet(uv3, "int64"), "int64", NumGet(uv4, "int64"), "uint", col)
	    return dll_rtn
	}
	
	AddImageRounded(user_texture_id, p_min, p_max, uv_min, uv_max, col, rounding, flags := 0)
	{
		;void ImDrawList_AddImageRounded(ImDrawList* this, ImTextureID user_texture_id, const ImVec2 p_min, const ImVec2 p_max, const ImVec2 uv_min, const ImVec2 uv_max, ImU32 col, float rounding, ImDrawFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddImageRounded, "ptr", this, "ptr", user_texture_id, "int64", NumGet(p_min, "int64"), "int64", NumGet(p_max, "int64"), "int64", NumGet(uv_min, "int64"), "int64", NumGet(uv_max, "int64"), "uint", col, "float", rounding, "int", flags)
	    return dll_rtn
	}
	
	AddLine(p1, p2, col, thickness := 1.0)
	{
		;void ImDrawList_AddLine(ImDrawList* this, const ImVec2 p1, const ImVec2 p2, ImU32 col, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddLine, "ptr", this, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "uint", col, "float", thickness)
	    return dll_rtn
	}
	
	AddNgon(center, radius, col, num_segments, thickness := 1.0)
	{
		;void ImDrawList_AddNgon(ImDrawList* this, const ImVec2 center, float radius, ImU32 col, int num_segments, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddNgon, "ptr", this, "int64", NumGet(center, "int64"), "float", radius, "uint", col, "int", num_segments, "float", thickness)
	    return dll_rtn
	}
	
	AddNgonFilled(center, radius, col, num_segments)
	{
		;void ImDrawList_AddNgonFilled(ImDrawList* this, const ImVec2 center, float radius, ImU32 col, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddNgonFilled, "ptr", this, "int64", NumGet(center, "int64"), "float", radius, "uint", col, "int", num_segments)
	    return dll_rtn
	}
	
	AddPolyline(points, num_points, col, flags, thickness)
	{
		;void ImDrawList_AddPolyline(ImDrawList* this, const ImVec2* points, int num_points, ImU32 col, ImDrawFlags flags, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddPolyline, "ptr", this, "ptr", points, "int", num_points, "uint", col, "int", flags, "float", thickness)
	    return dll_rtn
	}
	
	AddQuad(p1, p2, p3, p4, col, thickness := 1.0)
	{
		;void ImDrawList_AddQuad(ImDrawList* this, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, const ImVec2 p4, ImU32 col, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddQuad, "ptr", this, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int64", NumGet(p4, "int64"), "uint", col, "float", thickness)
	    return dll_rtn
	}
	
	AddQuadFilled(p1, p2, p3, p4, col)
	{
		;void ImDrawList_AddQuadFilled(ImDrawList* this, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, const ImVec2 p4, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddQuadFilled, "ptr", this, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int64", NumGet(p4, "int64"), "uint", col)
	    return dll_rtn
	}
	
	AddRect(p_min, p_max, col, rounding := 0.0, flags := 0, thickness := 1.0)
	{
		;void ImDrawList_AddRect(ImDrawList* this, const ImVec2 p_min, const ImVec2 p_max, ImU32 col, float rounding, ImDrawFlags flags, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddRect, "ptr", this, "int64", NumGet(p_min, "int64"), "int64", NumGet(p_max, "int64"), "uint", col, "float", rounding, "int", flags, "float", thickness)
	    return dll_rtn
	}
	
	AddRectFilled(p_min, p_max, col, rounding := 0.0, flags := 0)
	{
		;void ImDrawList_AddRectFilled(ImDrawList* this, const ImVec2 p_min, const ImVec2 p_max, ImU32 col, float rounding, ImDrawFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddRectFilled, "ptr", this, "int64", NumGet(p_min, "int64"), "int64", NumGet(p_max, "int64"), "uint", col, "float", rounding, "int", flags)
	    return dll_rtn
	}
	
	AddRectFilledMultiColor(p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left)
	{
		;void ImDrawList_AddRectFilledMultiColor(ImDrawList* this, const ImVec2 p_min, const ImVec2 p_max, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddRectFilledMultiColor, "ptr", this, "int64", NumGet(p_min, "int64"), "int64", NumGet(p_max, "int64"), "uint", col_upr_left, "uint", col_upr_right, "uint", col_bot_right, "uint", col_bot_left)
	    return dll_rtn
	}
	
	AddText_Vec2(pos, col, text_begin, text_end := 0)
	{
		;void ImDrawList_AddText_Vec2(ImDrawList* this, const ImVec2 pos, ImU32 col, const char* text_begin, const char* text_end)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddText_Vec2, "ptr", this, "int64", NumGet(pos, "int64"), "uint", col, "ptr", text_begin, "ptr", text_end)
	    return dll_rtn
	}
	
	AddText_FontPtr(font, font_size, pos, col, text_begin, text_end := 0, wrap_width := 0.0, cpu_fine_clip_rect := 0)
	{
		;void ImDrawList_AddText_FontPtr(ImDrawList* this, const ImFont* font, float font_size, const ImVec2 pos, ImU32 col, const char* text_begin, const char* text_end, float wrap_width, const ImVec4* cpu_fine_clip_rect)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddText_FontPtr, "ptr", this, "ptr", font, "float", font_size, "int64", NumGet(pos, "int64"), "uint", col, "ptr", text_begin, "ptr", text_end, "float", wrap_width, "ptr", cpu_fine_clip_rect)
	    return dll_rtn
	}
	
	AddTriangle(p1, p2, p3, col, thickness := 1.0)
	{
		;void ImDrawList_AddTriangle(ImDrawList* this, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, ImU32 col, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddTriangle, "ptr", this, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "uint", col, "float", thickness)
	    return dll_rtn
	}
	
	AddTriangleFilled(p1, p2, p3, col)
	{
		;void ImDrawList_AddTriangleFilled(ImDrawList* this, const ImVec2 p1, const ImVec2 p2, const ImVec2 p3, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_AddTriangleFilled, "ptr", this, "int64", NumGet(p1, "int64"), "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "uint", col)
	    return dll_rtn
	}
	
	ChannelsMerge()
	{
		;void ImDrawList_ChannelsMerge(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_ChannelsMerge, "ptr", this)
	    return dll_rtn
	}
	
	ChannelsSetCurrent(n)
	{
		;void ImDrawList_ChannelsSetCurrent(ImDrawList* this, int n)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_ChannelsSetCurrent, "ptr", this, "int", n)
	    return dll_rtn
	}
	
	ChannelsSplit(count)
	{
		;void ImDrawList_ChannelsSplit(ImDrawList* this, int count)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_ChannelsSplit, "ptr", this, "int", count)
	    return dll_rtn
	}
	
	CloneOutput()
	{
		;ImDrawList* ImDrawList_CloneOutput(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_CloneOutput, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetClipRectMax(pOut)
	{
		;void ImDrawList_GetClipRectMax(ImVec2 *pOut, ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_GetClipRectMax, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetClipRectMin(pOut)
	{
		;void ImDrawList_GetClipRectMin(ImVec2 *pOut, ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_GetClipRectMin, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	static ImDrawList(shared_data)
	{
		;ImDrawList* ImDrawList_ImDrawList(ImDrawListSharedData* shared_data)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_ImDrawList, "ptr", shared_data, "ptr")
	    return dll_rtn
	}
	
	PathArcTo(center, radius, a_min_, a_max, num_segments := 0)
	{
		;void ImDrawList_PathArcTo(ImDrawList* this, const ImVec2 center, float radius, float a_min_, float a_max, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathArcTo, "ptr", this, "int64", NumGet(center, "int64"), "float", radius, "float", a_min_, "float", a_max, "int", num_segments)
	    return dll_rtn
	}
	
	PathArcToFast(center, radius, a_min_of_12, a_max_of_12)
	{
		;void ImDrawList_PathArcToFast(ImDrawList* this, const ImVec2 center, float radius, int a_min_of_12, int a_max_of_12)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathArcToFast, "ptr", this, "int64", NumGet(center, "int64"), "float", radius, "int", a_min_of_12, "int", a_max_of_12)
	    return dll_rtn
	}
	
	PathBezierCubicCurveTo(p2, p3, p4, num_segments := 0)
	{
		;void ImDrawList_PathBezierCubicCurveTo(ImDrawList* this, const ImVec2 p2, const ImVec2 p3, const ImVec2 p4, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathBezierCubicCurveTo, "ptr", this, "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int64", NumGet(p4, "int64"), "int", num_segments)
	    return dll_rtn
	}
	
	PathBezierQuadraticCurveTo(p2, p3, num_segments := 0)
	{
		;void ImDrawList_PathBezierQuadraticCurveTo(ImDrawList* this, const ImVec2 p2, const ImVec2 p3, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathBezierQuadraticCurveTo, "ptr", this, "int64", NumGet(p2, "int64"), "int64", NumGet(p3, "int64"), "int", num_segments)
	    return dll_rtn
	}
	
	PathClear()
	{
		;void ImDrawList_PathClear(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathClear, "ptr", this)
	    return dll_rtn
	}
	
	PathFillConvex(col)
	{
		;void ImDrawList_PathFillConvex(ImDrawList* this, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathFillConvex, "ptr", this, "uint", col)
	    return dll_rtn
	}
	
	PathLineTo(pos)
	{
		;void ImDrawList_PathLineTo(ImDrawList* this, const ImVec2 pos)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathLineTo, "ptr", this, "int64", NumGet(pos, "int64"))
	    return dll_rtn
	}
	
	PathLineToMergeDuplicate(pos)
	{
		;void ImDrawList_PathLineToMergeDuplicate(ImDrawList* this, const ImVec2 pos)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathLineToMergeDuplicate, "ptr", this, "int64", NumGet(pos, "int64"))
	    return dll_rtn
	}
	
	PathRect(rect_min, rect_max, rounding := 0.0, flags := 0)
	{
		;void ImDrawList_PathRect(ImDrawList* this, const ImVec2 rect_min, const ImVec2 rect_max, float rounding, ImDrawFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathRect, "ptr", this, "int64", NumGet(rect_min, "int64"), "int64", NumGet(rect_max, "int64"), "float", rounding, "int", flags)
	    return dll_rtn
	}
	
	PathStroke(col, flags := 0, thickness := 1.0)
	{
		;void ImDrawList_PathStroke(ImDrawList* this, ImU32 col, ImDrawFlags flags, float thickness)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PathStroke, "ptr", this, "uint", col, "int", flags, "float", thickness)
	    return dll_rtn
	}
	
	PopClipRect()
	{
		;void ImDrawList_PopClipRect(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PopClipRect, "ptr", this)
	    return dll_rtn
	}
	
	PopTextureID()
	{
		;void ImDrawList_PopTextureID(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PopTextureID, "ptr", this)
	    return dll_rtn
	}
	
	PrimQuadUV(a, b, c, d, uv_a, uv_b, uv_c, uv_d, col)
	{
		;void ImDrawList_PrimQuadUV(ImDrawList* this, const ImVec2 a, const ImVec2 b, const ImVec2 c, const ImVec2 d, const ImVec2 uv_a, const ImVec2 uv_b, const ImVec2 uv_c, const ImVec2 uv_d, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PrimQuadUV, "ptr", this, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(c, "int64"), "int64", NumGet(d, "int64"), "int64", NumGet(uv_a, "int64"), "int64", NumGet(uv_b, "int64"), "int64", NumGet(uv_c, "int64"), "int64", NumGet(uv_d, "int64"), "uint", col)
	    return dll_rtn
	}
	
	PrimRect(a, b, col)
	{
		;void ImDrawList_PrimRect(ImDrawList* this, const ImVec2 a, const ImVec2 b, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PrimRect, "ptr", this, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "uint", col)
	    return dll_rtn
	}
	
	PrimRectUV(a, b, uv_a, uv_b, col)
	{
		;void ImDrawList_PrimRectUV(ImDrawList* this, const ImVec2 a, const ImVec2 b, const ImVec2 uv_a, const ImVec2 uv_b, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PrimRectUV, "ptr", this, "int64", NumGet(a, "int64"), "int64", NumGet(b, "int64"), "int64", NumGet(uv_a, "int64"), "int64", NumGet(uv_b, "int64"), "uint", col)
	    return dll_rtn
	}
	
	PrimReserve(idx_count, vtx_count)
	{
		;void ImDrawList_PrimReserve(ImDrawList* this, int idx_count, int vtx_count)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PrimReserve, "ptr", this, "int", idx_count, "int", vtx_count)
	    return dll_rtn
	}
	
	PrimUnreserve(idx_count, vtx_count)
	{
		;void ImDrawList_PrimUnreserve(ImDrawList* this, int idx_count, int vtx_count)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PrimUnreserve, "ptr", this, "int", idx_count, "int", vtx_count)
	    return dll_rtn
	}
	
	PrimVtx(pos, uv, col)
	{
		;void ImDrawList_PrimVtx(ImDrawList* this, const ImVec2 pos, const ImVec2 uv, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PrimVtx, "ptr", this, "int64", NumGet(pos, "int64"), "int64", NumGet(uv, "int64"), "uint", col)
	    return dll_rtn
	}
	
	PrimWriteIdx(idx)
	{
		;void ImDrawList_PrimWriteIdx(ImDrawList* this, ImDrawIdx idx)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PrimWriteIdx, "ptr", this, "ushort", idx)
	    return dll_rtn
	}
	
	PrimWriteVtx(pos, uv, col)
	{
		;void ImDrawList_PrimWriteVtx(ImDrawList* this, const ImVec2 pos, const ImVec2 uv, ImU32 col)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PrimWriteVtx, "ptr", this, "int64", NumGet(pos, "int64"), "int64", NumGet(uv, "int64"), "uint", col)
	    return dll_rtn
	}
	
	PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect := false)
	{
		;void ImDrawList_PushClipRect(ImDrawList* this, const ImVec2 clip_rect_min, const ImVec2 clip_rect_max, bool intersect_with_current_clip_rect)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PushClipRect, "ptr", this, "int64", NumGet(clip_rect_min, "int64"), "int64", NumGet(clip_rect_max, "int64"), "char", intersect_with_current_clip_rect)
	    return dll_rtn
	}
	
	PushClipRectFullScreen()
	{
		;void ImDrawList_PushClipRectFullScreen(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PushClipRectFullScreen, "ptr", this)
	    return dll_rtn
	}
	
	PushTextureID(texture_id)
	{
		;void ImDrawList_PushTextureID(ImDrawList* this, ImTextureID texture_id)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_PushTextureID, "ptr", this, "ptr", texture_id)
	    return dll_rtn
	}
	
	_CalcCircleAutoSegmentCount(radius)
	{
		;int ImDrawList__CalcCircleAutoSegmentCount(ImDrawList* this, float radius)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__CalcCircleAutoSegmentCount, "ptr", this, "float", radius, "int")
	    return dll_rtn
	}
	
	_ClearFreeMemory()
	{
		;void ImDrawList__ClearFreeMemory(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__ClearFreeMemory, "ptr", this)
	    return dll_rtn
	}
	
	_OnChangedClipRect()
	{
		;void ImDrawList__OnChangedClipRect(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__OnChangedClipRect, "ptr", this)
	    return dll_rtn
	}
	
	_OnChangedTextureID()
	{
		;void ImDrawList__OnChangedTextureID(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__OnChangedTextureID, "ptr", this)
	    return dll_rtn
	}
	
	_OnChangedVtxOffset()
	{
		;void ImDrawList__OnChangedVtxOffset(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__OnChangedVtxOffset, "ptr", this)
	    return dll_rtn
	}
	
	_PathArcToFastEx(center, radius, a_min_sample, a_max_sample, a_step)
	{
		;void ImDrawList__PathArcToFastEx(ImDrawList* this, const ImVec2 center, float radius, int a_min_sample, int a_max_sample, int a_step)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__PathArcToFastEx, "ptr", this, "int64", NumGet(center, "int64"), "float", radius, "int", a_min_sample, "int", a_max_sample, "int", a_step)
	    return dll_rtn
	}
	
	_PathArcToN(center, radius, a_min_, a_max, num_segments)
	{
		;void ImDrawList__PathArcToN(ImDrawList* this, const ImVec2 center, float radius, float a_min_, float a_max, int num_segments)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__PathArcToN, "ptr", this, "int64", NumGet(center, "int64"), "float", radius, "float", a_min_, "float", a_max, "int", num_segments)
	    return dll_rtn
	}
	
	_PopUnusedDrawCmd()
	{
		;void ImDrawList__PopUnusedDrawCmd(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__PopUnusedDrawCmd, "ptr", this)
	    return dll_rtn
	}
	
	_ResetForNewFrame()
	{
		;void ImDrawList__ResetForNewFrame(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__ResetForNewFrame, "ptr", this)
	    return dll_rtn
	}
	
	_TryMergeDrawCmds()
	{
		;void ImDrawList__TryMergeDrawCmds(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList__TryMergeDrawCmds, "ptr", this)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImDrawList_destroy(ImDrawList* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawList_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImDrawListSharedData_AHK extends ImDrawListSharedData
{
	static ImDrawListSharedData()
	{
		;ImDrawListSharedData* ImDrawListSharedData_ImDrawListSharedData()
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSharedData_ImDrawListSharedData, "ptr")
	    return dll_rtn
	}
	
	SetCircleTessellationMaxError(max_error)
	{
		;void ImDrawListSharedData_SetCircleTessellationMaxError(ImDrawListSharedData* this, float max_error)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSharedData_SetCircleTessellationMaxError, "ptr", this, "float", max_error)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImDrawListSharedData_destroy(ImDrawListSharedData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSharedData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImDrawListSplitter_AHK extends ImDrawListSplitter
{
	Clear()
	{
		;void ImDrawListSplitter_Clear(ImDrawListSplitter* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSplitter_Clear, "ptr", this)
	    return dll_rtn
	}
	
	ClearFreeMemory()
	{
		;void ImDrawListSplitter_ClearFreeMemory(ImDrawListSplitter* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSplitter_ClearFreeMemory, "ptr", this)
	    return dll_rtn
	}
	
	static ImDrawListSplitter()
	{
		;ImDrawListSplitter* ImDrawListSplitter_ImDrawListSplitter()
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSplitter_ImDrawListSplitter, "ptr")
	    return dll_rtn
	}
	
	Merge(draw_list)
	{
		;void ImDrawListSplitter_Merge(ImDrawListSplitter* this, ImDrawList* draw_list)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSplitter_Merge, "ptr", this, "ptr", draw_list)
	    return dll_rtn
	}
	
	SetCurrentChannel(draw_list, channel_idx)
	{
		;void ImDrawListSplitter_SetCurrentChannel(ImDrawListSplitter* this, ImDrawList* draw_list, int channel_idx)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSplitter_SetCurrentChannel, "ptr", this, "ptr", draw_list, "int", channel_idx)
	    return dll_rtn
	}
	
	Split(draw_list, count)
	{
		;void ImDrawListSplitter_Split(ImDrawListSplitter* this, ImDrawList* draw_list, int count)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSplitter_Split, "ptr", this, "ptr", draw_list, "int", count)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImDrawListSplitter_destroy(ImDrawListSplitter* this)
	    dll_rtn := DllCall(Cimgui_dll.ImDrawListSplitter_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImFont_AHK extends ImFont
{
	AddGlyph(src_cfg, c, x0, y0, x1, y1, u0, v0, u1, v1, advance_x)
	{
		;void ImFont_AddGlyph(ImFont* this, const ImFontConfig* src_cfg, ImWchar c, float x0, float y0, float x1, float y1, float u0, float v0, float u1, float v1, float advance_x)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_AddGlyph, "ptr", this, "ptr", src_cfg, "ushort", c, "float", x0, "float", y0, "float", x1, "float", y1, "float", u0, "float", v0, "float", u1, "float", v1, "float", advance_x)
	    return dll_rtn
	}
	
	AddRemapChar(dst, src, overwrite_dst := true)
	{
		;void ImFont_AddRemapChar(ImFont* this, ImWchar dst, ImWchar src, bool overwrite_dst)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_AddRemapChar, "ptr", this, "ushort", dst, "ushort", src, "char", overwrite_dst)
	    return dll_rtn
	}
	
	BuildLookupTable()
	{
		;void ImFont_BuildLookupTable(ImFont* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_BuildLookupTable, "ptr", this)
	    return dll_rtn
	}
	
	CalcTextSizeA(pOut, size, max_width, wrap_width, text_begin, text_end := 0, remaining := 0)
	{
		;void ImFont_CalcTextSizeA(ImVec2 *pOut, ImFont* this, float size, float max_width, float wrap_width, const char* text_begin, const char* text_end, const char** remaining)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_CalcTextSizeA, "ptr", pOut, "ptr", this, "float", size, "float", max_width, "float", wrap_width, "ptr", text_begin, "ptr", text_end, "ptr", remaining)
	    return dll_rtn
	}
	
	CalcWordWrapPositionA(scale, text, text_end, wrap_width)
	{
		;const char* ImFont_CalcWordWrapPositionA(ImFont* this, float scale, const char* text, const char* text_end, float wrap_width)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_CalcWordWrapPositionA, "ptr", this, "float", scale, "ptr", text, "ptr", text_end, "float", wrap_width, "ptr")
	    return dll_rtn
	}
	
	ClearOutputData()
	{
		;void ImFont_ClearOutputData(ImFont* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_ClearOutputData, "ptr", this)
	    return dll_rtn
	}
	
	FindGlyph(c)
	{
		;const ImFontGlyph* ImFont_FindGlyph(ImFont* this, ImWchar c)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_FindGlyph, "ptr", this, "ushort", c, "ptr")
	    return dll_rtn
	}
	
	FindGlyphNoFallback(c)
	{
		;const ImFontGlyph* ImFont_FindGlyphNoFallback(ImFont* this, ImWchar c)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_FindGlyphNoFallback, "ptr", this, "ushort", c, "ptr")
	    return dll_rtn
	}
	
	GetCharAdvance(c)
	{
		;float ImFont_GetCharAdvance(ImFont* this, ImWchar c)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_GetCharAdvance, "ptr", this, "ushort", c, "float")
	    return dll_rtn
	}
	
	GetDebugName()
	{
		;const char* ImFont_GetDebugName(ImFont* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_GetDebugName, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GrowIndex(new_size)
	{
		;void ImFont_GrowIndex(ImFont* this, int new_size)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_GrowIndex, "ptr", this, "int", new_size)
	    return dll_rtn
	}
	
	static ImFont()
	{
		;ImFont* ImFont_ImFont()
	    dll_rtn := DllCall(Cimgui_dll.ImFont_ImFont, "ptr")
	    return dll_rtn
	}
	
	IsGlyphRangeUnused(c_begin, c_last)
	{
		;bool ImFont_IsGlyphRangeUnused(ImFont* this, unsigned int c_begin, unsigned int c_last)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_IsGlyphRangeUnused, "ptr", this, "uint", c_begin, "uint", c_last, "char")
	    return dll_rtn
	}
	
	IsLoaded()
	{
		;bool ImFont_IsLoaded(ImFont* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_IsLoaded, "ptr", this, "char")
	    return dll_rtn
	}
	
	RenderChar(draw_list, size, pos, col, c)
	{
		;void ImFont_RenderChar(ImFont* this, ImDrawList* draw_list, float size, const ImVec2 pos, ImU32 col, ImWchar c)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_RenderChar, "ptr", this, "ptr", draw_list, "float", size, "int64", NumGet(pos, "int64"), "uint", col, "ushort", c)
	    return dll_rtn
	}
	
	RenderText(draw_list, size, pos, col, clip_rect, text_begin, text_end, wrap_width := 0.0, cpu_fine_clip := false)
	{
		;void ImFont_RenderText(ImFont* this, ImDrawList* draw_list, float size, const ImVec2 pos, ImU32 col, const ImVec4 clip_rect, const char* text_begin, const char* text_end, float wrap_width, bool cpu_fine_clip)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_RenderText, "ptr", this, "ptr", draw_list, "float", size, "int64", NumGet(pos, "int64"), "uint", col, "ptr", clip_rect, "ptr", text_begin, "ptr", text_end, "float", wrap_width, "char", cpu_fine_clip)
	    return dll_rtn
	}
	
	SetGlyphVisible(c, visible)
	{
		;void ImFont_SetGlyphVisible(ImFont* this, ImWchar c, bool visible)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_SetGlyphVisible, "ptr", this, "ushort", c, "char", visible)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImFont_destroy(ImFont* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFont_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImFontAtlas_AHK extends ImFontAtlas
{
	AddCustomRectFontGlyph(font, id, width, height, advance_x, offset := ImVec2([0, 0]))
	{
		;int ImFontAtlas_AddCustomRectFontGlyph(ImFontAtlas* this, ImFont* font, ImWchar id, int width, int height, float advance_x, const ImVec2 offset)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_AddCustomRectFontGlyph, "ptr", this, "ptr", font, "ushort", id, "int", width, "int", height, "float", advance_x, "int64", NumGet(offset, "int64"), "int")
	    return dll_rtn
	}
	
	AddCustomRectRegular(width, height)
	{
		;int ImFontAtlas_AddCustomRectRegular(ImFontAtlas* this, int width, int height)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_AddCustomRectRegular, "ptr", this, "int", width, "int", height, "int")
	    return dll_rtn
	}
	
	AddFont(font_cfg)
	{
		;ImFont* ImFontAtlas_AddFont(ImFontAtlas* this, const ImFontConfig* font_cfg)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_AddFont, "ptr", this, "ptr", font_cfg, "ptr")
	    return dll_rtn
	}
	
	AddFontDefault(font_cfg := 0)
	{
		;ImFont* ImFontAtlas_AddFontDefault(ImFontAtlas* this, const ImFontConfig* font_cfg)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_AddFontDefault, "ptr", this, "ptr", font_cfg, "ptr")
	    return dll_rtn
	}
	
	AddFontFromFileTTF(filename, size_pixels, font_cfg := 0, glyph_ranges := 0)
	{
		;ImFont* ImFontAtlas_AddFontFromFileTTF(ImFontAtlas* this, const char* filename, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_AddFontFromFileTTF, "ptr", this, "ptr", filename, "float", size_pixels, "ptr", font_cfg, "ptr", glyph_ranges, "ptr")
	    return dll_rtn
	}
	
	AddFontFromMemoryCompressedBase85TTF(compressed_font_data_base85, size_pixels, font_cfg := 0, glyph_ranges := 0)
	{
		;ImFont* ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(ImFontAtlas* this, const char* compressed_font_data_base85, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_AddFontFromMemoryCompressedBase85TTF, "ptr", this, "ptr", compressed_font_data_base85, "float", size_pixels, "ptr", font_cfg, "ptr", glyph_ranges, "ptr")
	    return dll_rtn
	}
	
	AddFontFromMemoryCompressedTTF(compressed_font_data, compressed_font_size, size_pixels, font_cfg := 0, glyph_ranges := 0)
	{
		;ImFont* ImFontAtlas_AddFontFromMemoryCompressedTTF(ImFontAtlas* this, const void* compressed_font_data, int compressed_font_size, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_AddFontFromMemoryCompressedTTF, "ptr", this, "ptr", compressed_font_data, "int", compressed_font_size, "float", size_pixels, "ptr", font_cfg, "ptr", glyph_ranges, "ptr")
	    return dll_rtn
	}
	
	AddFontFromMemoryTTF(font_data, font_size, size_pixels, font_cfg := 0, glyph_ranges := 0)
	{
		;ImFont* ImFontAtlas_AddFontFromMemoryTTF(ImFontAtlas* this, void* font_data, int font_size, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_AddFontFromMemoryTTF, "ptr", this, "ptr", font_data, "int", font_size, "float", size_pixels, "ptr", font_cfg, "ptr", glyph_ranges, "ptr")
	    return dll_rtn
	}
	
	Build()
	{
		;bool ImFontAtlas_Build(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_Build, "ptr", this, "char")
	    return dll_rtn
	}
	
	CalcCustomRectUV(rect, out_uv_min, out_uv_max)
	{
		;void ImFontAtlas_CalcCustomRectUV(ImFontAtlas* this, const ImFontAtlasCustomRect* rect, ImVec2* out_uv_min, ImVec2* out_uv_max)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_CalcCustomRectUV, "ptr", this, "ptr", rect, "ptr", out_uv_min, "ptr", out_uv_max)
	    return dll_rtn
	}
	
	Clear()
	{
		;void ImFontAtlas_Clear(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_Clear, "ptr", this)
	    return dll_rtn
	}
	
	ClearFonts()
	{
		;void ImFontAtlas_ClearFonts(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_ClearFonts, "ptr", this)
	    return dll_rtn
	}
	
	ClearInputData()
	{
		;void ImFontAtlas_ClearInputData(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_ClearInputData, "ptr", this)
	    return dll_rtn
	}
	
	ClearTexData()
	{
		;void ImFontAtlas_ClearTexData(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_ClearTexData, "ptr", this)
	    return dll_rtn
	}
	
	GetCustomRectByIndex(index)
	{
		;ImFontAtlasCustomRect* ImFontAtlas_GetCustomRectByIndex(ImFontAtlas* this, int index)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetCustomRectByIndex, "ptr", this, "int", index, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesChineseFull()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesChineseFull(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesChineseFull, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesChineseSimplifiedCommon()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesCyrillic()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesCyrillic(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesCyrillic, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesDefault()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesDefault(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesDefault, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesGreek()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesGreek(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesGreek, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesJapanese()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesJapanese(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesJapanese, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesKorean()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesKorean(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesKorean, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesThai()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesThai(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesThai, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetGlyphRangesVietnamese()
	{
		;const ImWchar* ImFontAtlas_GetGlyphRangesVietnamese(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetGlyphRangesVietnamese, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	GetMouseCursorTexData(cursor, out_offset, out_size, out_uv_border, out_uv_fill)
	{
		;bool ImFontAtlas_GetMouseCursorTexData(ImFontAtlas* this, ImGuiMouseCursor cursor, ImVec2* out_offset, ImVec2* out_size, ImVec2 out_uv_border[2], ImVec2 out_uv_fill[2])
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetMouseCursorTexData, "ptr", this, "int", cursor, "ptr", out_offset, "ptr", out_size, "ptr", out_uv_border, "ptr", out_uv_fill, "char")
	    return dll_rtn
	}
	
	GetTexDataAsAlpha8(&out_pixels, &out_width, &out_height, &out_bytes_per_pixel := 0)
	{
		;void ImFontAtlas_GetTexDataAsAlpha8(ImFontAtlas* this, unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetTexDataAsAlpha8, "ptr", this, "uchar**", &out_pixels, "int*", &out_width, "int*", &out_height, "int*", &out_bytes_per_pixel)
	    return dll_rtn
	}
	
	GetTexDataAsRGBA32(&out_pixels, &out_width, &out_height, &out_bytes_per_pixel := 0)
	{
		;void ImFontAtlas_GetTexDataAsRGBA32(ImFontAtlas* this, unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_GetTexDataAsRGBA32, "ptr", this, "uchar**", &out_pixels, "int*", &out_width, "int*", &out_height, "int*", &out_bytes_per_pixel)
	    return dll_rtn
	}
	
	static ImFontAtlas()
	{
		;ImFontAtlas* ImFontAtlas_ImFontAtlas()
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_ImFontAtlas, "ptr")
	    return dll_rtn
	}
	
	IsBuilt()
	{
		;bool ImFontAtlas_IsBuilt(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_IsBuilt, "ptr", this, "char")
	    return dll_rtn
	}
	
	SetTexID(id)
	{
		;void ImFontAtlas_SetTexID(ImFontAtlas* this, ImTextureID id)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_SetTexID, "ptr", this, "ptr", id)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImFontAtlas_destroy(ImFontAtlas* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlas_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImFontAtlasCustomRect_AHK extends ImFontAtlasCustomRect
{
	static ImFontAtlasCustomRect()
	{
		;ImFontAtlasCustomRect* ImFontAtlasCustomRect_ImFontAtlasCustomRect()
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlasCustomRect_ImFontAtlasCustomRect, "ptr")
	    return dll_rtn
	}
	
	IsPacked()
	{
		;bool ImFontAtlasCustomRect_IsPacked(ImFontAtlasCustomRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlasCustomRect_IsPacked, "ptr", this, "char")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImFontAtlasCustomRect_destroy(ImFontAtlasCustomRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontAtlasCustomRect_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImFontConfig_AHK extends ImFontConfig
{
	static ImFontConfig()
	{
		;ImFontConfig* ImFontConfig_ImFontConfig()
	    dll_rtn := DllCall(Cimgui_dll.ImFontConfig_ImFontConfig, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImFontConfig_destroy(ImFontConfig* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontConfig_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImFontGlyphRangesBuilder_AHK extends ImFontGlyphRangesBuilder
{
	AddChar(c)
	{
		;void ImFontGlyphRangesBuilder_AddChar(ImFontGlyphRangesBuilder* this, ImWchar c)
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_AddChar, "ptr", this, "ushort", c)
	    return dll_rtn
	}
	
	AddRanges(&ranges)
	{
		;void ImFontGlyphRangesBuilder_AddRanges(ImFontGlyphRangesBuilder* this, const ImWchar* ranges)
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_AddRanges, "ptr", this, "ushort*", &ranges)
	    return dll_rtn
	}
	
	AddText(text, text_end := 0)
	{
		;void ImFontGlyphRangesBuilder_AddText(ImFontGlyphRangesBuilder* this, const char* text, const char* text_end)
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_AddText, "ptr", this, "ptr", text, "ptr", text_end)
	    return dll_rtn
	}
	
	BuildRanges(out_ranges)
	{
		;void ImFontGlyphRangesBuilder_BuildRanges(ImFontGlyphRangesBuilder* this, ImVector_ImWchar* out_ranges)
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_BuildRanges, "ptr", this, "ptr", out_ranges)
	    return dll_rtn
	}
	
	Clear()
	{
		;void ImFontGlyphRangesBuilder_Clear(ImFontGlyphRangesBuilder* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_Clear, "ptr", this)
	    return dll_rtn
	}
	
	GetBit(n)
	{
		;bool ImFontGlyphRangesBuilder_GetBit(ImFontGlyphRangesBuilder* this, size_t n)
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_GetBit, "ptr", this, "uptr", n, "char")
	    return dll_rtn
	}
	
	static ImFontGlyphRangesBuilder()
	{
		;ImFontGlyphRangesBuilder* ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder()
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder, "ptr")
	    return dll_rtn
	}
	
	SetBit(n)
	{
		;void ImFontGlyphRangesBuilder_SetBit(ImFontGlyphRangesBuilder* this, size_t n)
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_SetBit, "ptr", this, "uptr", n)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImFontGlyphRangesBuilder_destroy(ImFontGlyphRangesBuilder* this)
	    dll_rtn := DllCall(Cimgui_dll.ImFontGlyphRangesBuilder_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiComboPreviewData_AHK extends ImGuiComboPreviewData
{
	static ImGuiComboPreviewData()
	{
		;ImGuiComboPreviewData* ImGuiComboPreviewData_ImGuiComboPreviewData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiComboPreviewData_ImGuiComboPreviewData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiComboPreviewData_destroy(ImGuiComboPreviewData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiComboPreviewData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiContext_AHK extends ImGuiContext
{
	static ImGuiContext(shared_font_atlas)
	{
		;ImGuiContext* ImGuiContext_ImGuiContext(ImFontAtlas* shared_font_atlas)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiContext_ImGuiContext, "ptr", shared_font_atlas, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiContext_destroy(ImGuiContext* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiContext_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiContextHook_AHK extends ImGuiContextHook
{
	static ImGuiContextHook()
	{
		;ImGuiContextHook* ImGuiContextHook_ImGuiContextHook()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiContextHook_ImGuiContextHook, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiContextHook_destroy(ImGuiContextHook* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiContextHook_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiDataVarInfo_AHK extends ImGuiDataVarInfo
{
	GetVarPtr(parent)
	{
		;void* ImGuiDataVarInfo_GetVarPtr(ImGuiDataVarInfo* this, void* parent)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDataVarInfo_GetVarPtr, "ptr", this, "ptr", parent, "ptr")
	    return dll_rtn
	}
	
}
class ImGuiDockContext_AHK extends ImGuiDockContext
{
	static ImGuiDockContext()
	{
		;ImGuiDockContext* ImGuiDockContext_ImGuiDockContext()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockContext_ImGuiDockContext, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiDockContext_destroy(ImGuiDockContext* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockContext_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiDockNode_AHK extends ImGuiDockNode
{
	static ImGuiDockNode(id)
	{
		;ImGuiDockNode* ImGuiDockNode_ImGuiDockNode(ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_ImGuiDockNode, "uint", id, "ptr")
	    return dll_rtn
	}
	
	IsCentralNode()
	{
		;bool ImGuiDockNode_IsCentralNode(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsCentralNode, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsDockSpace()
	{
		;bool ImGuiDockNode_IsDockSpace(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsDockSpace, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsEmpty()
	{
		;bool ImGuiDockNode_IsEmpty(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsEmpty, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsFloatingNode()
	{
		;bool ImGuiDockNode_IsFloatingNode(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsFloatingNode, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsHiddenTabBar()
	{
		;bool ImGuiDockNode_IsHiddenTabBar(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsHiddenTabBar, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsLeafNode()
	{
		;bool ImGuiDockNode_IsLeafNode(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsLeafNode, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsNoTabBar()
	{
		;bool ImGuiDockNode_IsNoTabBar(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsNoTabBar, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsRootNode()
	{
		;bool ImGuiDockNode_IsRootNode(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsRootNode, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsSplitNode()
	{
		;bool ImGuiDockNode_IsSplitNode(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_IsSplitNode, "ptr", this, "char")
	    return dll_rtn
	}
	
	Rect(pOut)
	{
		;void ImGuiDockNode_Rect(ImRect *pOut, ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_Rect, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	SetLocalFlags(flags)
	{
		;void ImGuiDockNode_SetLocalFlags(ImGuiDockNode* this, ImGuiDockNodeFlags flags)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_SetLocalFlags, "ptr", this, "int", flags)
	    return dll_rtn
	}
	
	UpdateMergedFlags()
	{
		;void ImGuiDockNode_UpdateMergedFlags(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_UpdateMergedFlags, "ptr", this)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiDockNode_destroy(ImGuiDockNode* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiDockNode_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiIO_AHK extends ImGuiIO
{
	AddFocusEvent(focused)
	{
		;void ImGuiIO_AddFocusEvent(ImGuiIO* this, bool focused)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddFocusEvent, "ptr", this, "char", focused)
	    return dll_rtn
	}
	
	AddInputCharacter(c)
	{
		;void ImGuiIO_AddInputCharacter(ImGuiIO* this, unsigned int c)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddInputCharacter, "ptr", this, "uint", c)
	    return dll_rtn
	}
	
	AddInputCharacterUTF16(c)
	{
		;void ImGuiIO_AddInputCharacterUTF16(ImGuiIO* this, ImWchar16 c)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddInputCharacterUTF16, "ptr", this, "ushort", c)
	    return dll_rtn
	}
	
	AddInputCharactersUTF8(str)
	{
		;void ImGuiIO_AddInputCharactersUTF8(ImGuiIO* this, const char* str)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddInputCharactersUTF8, "ptr", this, "ptr", str)
	    return dll_rtn
	}
	
	AddKeyAnalogEvent(key, down, v)
	{
		;void ImGuiIO_AddKeyAnalogEvent(ImGuiIO* this, ImGuiKey key, bool down, float v)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddKeyAnalogEvent, "ptr", this, "int", key, "char", down, "float", v)
	    return dll_rtn
	}
	
	AddKeyEvent(key, down)
	{
		;void ImGuiIO_AddKeyEvent(ImGuiIO* this, ImGuiKey key, bool down)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddKeyEvent, "ptr", this, "int", key, "char", down)
	    return dll_rtn
	}
	
	AddMouseButtonEvent(button, down)
	{
		;void ImGuiIO_AddMouseButtonEvent(ImGuiIO* this, int button, bool down)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddMouseButtonEvent, "ptr", this, "int", button, "char", down)
	    return dll_rtn
	}
	
	AddMousePosEvent(x, y)
	{
		;void ImGuiIO_AddMousePosEvent(ImGuiIO* this, float x, float y)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddMousePosEvent, "ptr", this, "float", x, "float", y)
	    return dll_rtn
	}
	
	AddMouseSourceEvent(source)
	{
		;void ImGuiIO_AddMouseSourceEvent(ImGuiIO* this, ImGuiMouseSource source)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddMouseSourceEvent, "ptr", this, "int", source)
	    return dll_rtn
	}
	
	AddMouseViewportEvent(id)
	{
		;void ImGuiIO_AddMouseViewportEvent(ImGuiIO* this, ImGuiID id)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddMouseViewportEvent, "ptr", this, "uint", id)
	    return dll_rtn
	}
	
	AddMouseWheelEvent(wheel_x, wheel_y)
	{
		;void ImGuiIO_AddMouseWheelEvent(ImGuiIO* this, float wheel_x, float wheel_y)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_AddMouseWheelEvent, "ptr", this, "float", wheel_x, "float", wheel_y)
	    return dll_rtn
	}
	
	ClearEventsQueue()
	{
		;void ImGuiIO_ClearEventsQueue(ImGuiIO* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_ClearEventsQueue, "ptr", this)
	    return dll_rtn
	}
	
	ClearInputKeys()
	{
		;void ImGuiIO_ClearInputKeys(ImGuiIO* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_ClearInputKeys, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiIO()
	{
		;ImGuiIO* ImGuiIO_ImGuiIO()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_ImGuiIO, "ptr")
	    return dll_rtn
	}
	
	SetAppAcceptingEvents(accepting_events)
	{
		;void ImGuiIO_SetAppAcceptingEvents(ImGuiIO* this, bool accepting_events)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_SetAppAcceptingEvents, "ptr", this, "char", accepting_events)
	    return dll_rtn
	}
	
	SetKeyEventNativeData(key, native_keycode, native_scancode, native_legacy_index := -1)
	{
		;void ImGuiIO_SetKeyEventNativeData(ImGuiIO* this, ImGuiKey key, int native_keycode, int native_scancode, int native_legacy_index)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_SetKeyEventNativeData, "ptr", this, "int", key, "int", native_keycode, "int", native_scancode, "int", native_legacy_index)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiIO_destroy(ImGuiIO* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiIO_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiInputEvent_AHK extends ImGuiInputEvent
{
	static ImGuiInputEvent()
	{
		;ImGuiInputEvent* ImGuiInputEvent_ImGuiInputEvent()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputEvent_ImGuiInputEvent, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiInputEvent_destroy(ImGuiInputEvent* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputEvent_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiInputTextCallbackData_AHK extends ImGuiInputTextCallbackData
{
	ClearSelection()
	{
		;void ImGuiInputTextCallbackData_ClearSelection(ImGuiInputTextCallbackData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextCallbackData_ClearSelection, "ptr", this)
	    return dll_rtn
	}
	
	DeleteChars(pos, bytes_count)
	{
		;void ImGuiInputTextCallbackData_DeleteChars(ImGuiInputTextCallbackData* this, int pos, int bytes_count)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextCallbackData_DeleteChars, "ptr", this, "int", pos, "int", bytes_count)
	    return dll_rtn
	}
	
	HasSelection()
	{
		;bool ImGuiInputTextCallbackData_HasSelection(ImGuiInputTextCallbackData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextCallbackData_HasSelection, "ptr", this, "char")
	    return dll_rtn
	}
	
	static ImGuiInputTextCallbackData()
	{
		;ImGuiInputTextCallbackData* ImGuiInputTextCallbackData_ImGuiInputTextCallbackData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextCallbackData_ImGuiInputTextCallbackData, "ptr")
	    return dll_rtn
	}
	
	InsertChars(pos, text, text_end := 0)
	{
		;void ImGuiInputTextCallbackData_InsertChars(ImGuiInputTextCallbackData* this, int pos, const char* text, const char* text_end)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextCallbackData_InsertChars, "ptr", this, "int", pos, "ptr", text, "ptr", text_end)
	    return dll_rtn
	}
	
	SelectAll()
	{
		;void ImGuiInputTextCallbackData_SelectAll(ImGuiInputTextCallbackData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextCallbackData_SelectAll, "ptr", this)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiInputTextCallbackData_destroy(ImGuiInputTextCallbackData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextCallbackData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiInputTextDeactivatedState_AHK extends ImGuiInputTextDeactivatedState
{
	ClearFreeMemory()
	{
		;void ImGuiInputTextDeactivatedState_ClearFreeMemory(ImGuiInputTextDeactivatedState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextDeactivatedState_ClearFreeMemory, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiInputTextDeactivatedState()
	{
		;ImGuiInputTextDeactivatedState* ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiInputTextDeactivatedState_destroy(ImGuiInputTextDeactivatedState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextDeactivatedState_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiInputTextState_AHK extends ImGuiInputTextState
{
	ClearFreeMemory()
	{
		;void ImGuiInputTextState_ClearFreeMemory(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_ClearFreeMemory, "ptr", this)
	    return dll_rtn
	}
	
	ClearSelection()
	{
		;void ImGuiInputTextState_ClearSelection(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_ClearSelection, "ptr", this)
	    return dll_rtn
	}
	
	ClearText()
	{
		;void ImGuiInputTextState_ClearText(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_ClearText, "ptr", this)
	    return dll_rtn
	}
	
	CursorAnimReset()
	{
		;void ImGuiInputTextState_CursorAnimReset(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_CursorAnimReset, "ptr", this)
	    return dll_rtn
	}
	
	CursorClamp()
	{
		;void ImGuiInputTextState_CursorClamp(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_CursorClamp, "ptr", this)
	    return dll_rtn
	}
	
	GetCursorPos()
	{
		;int ImGuiInputTextState_GetCursorPos(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_GetCursorPos, "ptr", this, "int")
	    return dll_rtn
	}
	
	GetRedoAvailCount()
	{
		;int ImGuiInputTextState_GetRedoAvailCount(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_GetRedoAvailCount, "ptr", this, "int")
	    return dll_rtn
	}
	
	GetSelectionEnd()
	{
		;int ImGuiInputTextState_GetSelectionEnd(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_GetSelectionEnd, "ptr", this, "int")
	    return dll_rtn
	}
	
	GetSelectionStart()
	{
		;int ImGuiInputTextState_GetSelectionStart(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_GetSelectionStart, "ptr", this, "int")
	    return dll_rtn
	}
	
	GetUndoAvailCount()
	{
		;int ImGuiInputTextState_GetUndoAvailCount(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_GetUndoAvailCount, "ptr", this, "int")
	    return dll_rtn
	}
	
	HasSelection()
	{
		;bool ImGuiInputTextState_HasSelection(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_HasSelection, "ptr", this, "char")
	    return dll_rtn
	}
	
	static ImGuiInputTextState()
	{
		;ImGuiInputTextState* ImGuiInputTextState_ImGuiInputTextState()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_ImGuiInputTextState, "ptr")
	    return dll_rtn
	}
	
	OnKeyPressed(key)
	{
		;void ImGuiInputTextState_OnKeyPressed(ImGuiInputTextState* this, int key)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_OnKeyPressed, "ptr", this, "int", key)
	    return dll_rtn
	}
	
	SelectAll()
	{
		;void ImGuiInputTextState_SelectAll(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_SelectAll, "ptr", this)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiInputTextState_destroy(ImGuiInputTextState* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiInputTextState_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiKeyOwnerData_AHK extends ImGuiKeyOwnerData
{
	static ImGuiKeyOwnerData()
	{
		;ImGuiKeyOwnerData* ImGuiKeyOwnerData_ImGuiKeyOwnerData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiKeyOwnerData_ImGuiKeyOwnerData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiKeyOwnerData_destroy(ImGuiKeyOwnerData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiKeyOwnerData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiKeyRoutingData_AHK extends ImGuiKeyRoutingData
{
	static ImGuiKeyRoutingData()
	{
		;ImGuiKeyRoutingData* ImGuiKeyRoutingData_ImGuiKeyRoutingData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiKeyRoutingData_ImGuiKeyRoutingData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiKeyRoutingData_destroy(ImGuiKeyRoutingData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiKeyRoutingData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiKeyRoutingTable_AHK extends ImGuiKeyRoutingTable
{
	Clear()
	{
		;void ImGuiKeyRoutingTable_Clear(ImGuiKeyRoutingTable* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiKeyRoutingTable_Clear, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiKeyRoutingTable()
	{
		;ImGuiKeyRoutingTable* ImGuiKeyRoutingTable_ImGuiKeyRoutingTable()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiKeyRoutingTable_ImGuiKeyRoutingTable, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiKeyRoutingTable_destroy(ImGuiKeyRoutingTable* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiKeyRoutingTable_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiLastItemData_AHK extends ImGuiLastItemData
{
	static ImGuiLastItemData()
	{
		;ImGuiLastItemData* ImGuiLastItemData_ImGuiLastItemData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiLastItemData_ImGuiLastItemData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiLastItemData_destroy(ImGuiLastItemData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiLastItemData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiListClipper_AHK extends ImGuiListClipper
{
	Begin(items_count, items_height := -1.0)
	{
		;void ImGuiListClipper_Begin(ImGuiListClipper* this, int items_count, float items_height)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipper_Begin, "ptr", this, "int", items_count, "float", items_height)
	    return dll_rtn
	}
	
	End()
	{
		;void ImGuiListClipper_End(ImGuiListClipper* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipper_End, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiListClipper()
	{
		;ImGuiListClipper* ImGuiListClipper_ImGuiListClipper()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipper_ImGuiListClipper, "ptr")
	    return dll_rtn
	}
	
	IncludeItemByIndex(item_index)
	{
		;void ImGuiListClipper_IncludeItemByIndex(ImGuiListClipper* this, int item_index)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipper_IncludeItemByIndex, "ptr", this, "int", item_index)
	    return dll_rtn
	}
	
	IncludeItemsByIndex(item_begin, item_end)
	{
		;void ImGuiListClipper_IncludeItemsByIndex(ImGuiListClipper* this, int item_begin, int item_end)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipper_IncludeItemsByIndex, "ptr", this, "int", item_begin, "int", item_end)
	    return dll_rtn
	}
	
	Step()
	{
		;bool ImGuiListClipper_Step(ImGuiListClipper* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipper_Step, "ptr", this, "char")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiListClipper_destroy(ImGuiListClipper* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipper_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiListClipperData_AHK extends ImGuiListClipperData
{
	static ImGuiListClipperData()
	{
		;ImGuiListClipperData* ImGuiListClipperData_ImGuiListClipperData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipperData_ImGuiListClipperData, "ptr")
	    return dll_rtn
	}
	
	Reset(clipper)
	{
		;void ImGuiListClipperData_Reset(ImGuiListClipperData* this, ImGuiListClipper* clipper)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipperData_Reset, "ptr", this, "ptr", clipper)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiListClipperData_destroy(ImGuiListClipperData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiListClipperData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiMenuColumns_AHK extends ImGuiMenuColumns
{
	CalcNextTotalWidth(update_offsets)
	{
		;void ImGuiMenuColumns_CalcNextTotalWidth(ImGuiMenuColumns* this, bool update_offsets)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiMenuColumns_CalcNextTotalWidth, "ptr", this, "char", update_offsets)
	    return dll_rtn
	}
	
	DeclColumns(w_icon, w_label, w_shortcut, w_mark)
	{
		;float ImGuiMenuColumns_DeclColumns(ImGuiMenuColumns* this, float w_icon, float w_label, float w_shortcut, float w_mark)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiMenuColumns_DeclColumns, "ptr", this, "float", w_icon, "float", w_label, "float", w_shortcut, "float", w_mark, "float")
	    return dll_rtn
	}
	
	static ImGuiMenuColumns()
	{
		;ImGuiMenuColumns* ImGuiMenuColumns_ImGuiMenuColumns()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiMenuColumns_ImGuiMenuColumns, "ptr")
	    return dll_rtn
	}
	
	Update(spacing, window_reappearing)
	{
		;void ImGuiMenuColumns_Update(ImGuiMenuColumns* this, float spacing, bool window_reappearing)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiMenuColumns_Update, "ptr", this, "float", spacing, "char", window_reappearing)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiMenuColumns_destroy(ImGuiMenuColumns* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiMenuColumns_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiNavItemData_AHK extends ImGuiNavItemData
{
	Clear()
	{
		;void ImGuiNavItemData_Clear(ImGuiNavItemData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNavItemData_Clear, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiNavItemData()
	{
		;ImGuiNavItemData* ImGuiNavItemData_ImGuiNavItemData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNavItemData_ImGuiNavItemData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiNavItemData_destroy(ImGuiNavItemData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNavItemData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiNextItemData_AHK extends ImGuiNextItemData
{
	ClearFlags()
	{
		;void ImGuiNextItemData_ClearFlags(ImGuiNextItemData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNextItemData_ClearFlags, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiNextItemData()
	{
		;ImGuiNextItemData* ImGuiNextItemData_ImGuiNextItemData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNextItemData_ImGuiNextItemData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiNextItemData_destroy(ImGuiNextItemData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNextItemData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiNextWindowData_AHK extends ImGuiNextWindowData
{
	ClearFlags()
	{
		;void ImGuiNextWindowData_ClearFlags(ImGuiNextWindowData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNextWindowData_ClearFlags, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiNextWindowData()
	{
		;ImGuiNextWindowData* ImGuiNextWindowData_ImGuiNextWindowData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNextWindowData_ImGuiNextWindowData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiNextWindowData_destroy(ImGuiNextWindowData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiNextWindowData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiOldColumnData_AHK extends ImGuiOldColumnData
{
	static ImGuiOldColumnData()
	{
		;ImGuiOldColumnData* ImGuiOldColumnData_ImGuiOldColumnData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiOldColumnData_ImGuiOldColumnData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiOldColumnData_destroy(ImGuiOldColumnData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiOldColumnData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiOldColumns_AHK extends ImGuiOldColumns
{
	static ImGuiOldColumns()
	{
		;ImGuiOldColumns* ImGuiOldColumns_ImGuiOldColumns()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiOldColumns_ImGuiOldColumns, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiOldColumns_destroy(ImGuiOldColumns* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiOldColumns_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiOnceUponAFrame_AHK extends ImGuiOnceUponAFrame
{
	static ImGuiOnceUponAFrame()
	{
		;ImGuiOnceUponAFrame* ImGuiOnceUponAFrame_ImGuiOnceUponAFrame()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiOnceUponAFrame_ImGuiOnceUponAFrame, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiOnceUponAFrame_destroy(ImGuiOnceUponAFrame* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiOnceUponAFrame_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiPayload_AHK extends ImGuiPayload
{
	Clear()
	{
		;void ImGuiPayload_Clear(ImGuiPayload* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPayload_Clear, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiPayload()
	{
		;ImGuiPayload* ImGuiPayload_ImGuiPayload()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPayload_ImGuiPayload, "ptr")
	    return dll_rtn
	}
	
	IsDataType(type)
	{
		;bool ImGuiPayload_IsDataType(ImGuiPayload* this, const char* type)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPayload_IsDataType, "ptr", this, "ptr", type, "char")
	    return dll_rtn
	}
	
	IsDelivery()
	{
		;bool ImGuiPayload_IsDelivery(ImGuiPayload* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPayload_IsDelivery, "ptr", this, "char")
	    return dll_rtn
	}
	
	IsPreview()
	{
		;bool ImGuiPayload_IsPreview(ImGuiPayload* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPayload_IsPreview, "ptr", this, "char")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiPayload_destroy(ImGuiPayload* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPayload_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiPlatformIO_AHK extends ImGuiPlatformIO
{
	static ImGuiPlatformIO()
	{
		;ImGuiPlatformIO* ImGuiPlatformIO_ImGuiPlatformIO()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPlatformIO_ImGuiPlatformIO, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiPlatformIO_destroy(ImGuiPlatformIO* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPlatformIO_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiPlatformImeData_AHK extends ImGuiPlatformImeData
{
	static ImGuiPlatformImeData()
	{
		;ImGuiPlatformImeData* ImGuiPlatformImeData_ImGuiPlatformImeData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPlatformImeData_ImGuiPlatformImeData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiPlatformImeData_destroy(ImGuiPlatformImeData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPlatformImeData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiPlatformMonitor_AHK extends ImGuiPlatformMonitor
{
	static ImGuiPlatformMonitor()
	{
		;ImGuiPlatformMonitor* ImGuiPlatformMonitor_ImGuiPlatformMonitor()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPlatformMonitor_ImGuiPlatformMonitor, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiPlatformMonitor_destroy(ImGuiPlatformMonitor* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPlatformMonitor_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiPopupData_AHK extends ImGuiPopupData
{
	static ImGuiPopupData()
	{
		;ImGuiPopupData* ImGuiPopupData_ImGuiPopupData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPopupData_ImGuiPopupData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiPopupData_destroy(ImGuiPopupData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPopupData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiPtrOrIndex_AHK extends ImGuiPtrOrIndex
{
	static ImGuiPtrOrIndex_Ptr(ptr)
	{
		;ImGuiPtrOrIndex* ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr(void* ptr)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr, "ptr", ptr, "ptr")
	    return dll_rtn
	}
	
	static ImGuiPtrOrIndex_Int(index)
	{
		;ImGuiPtrOrIndex* ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int(int index)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int, "int", index, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiPtrOrIndex_destroy(ImGuiPtrOrIndex* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiPtrOrIndex_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiSettingsHandler_AHK extends ImGuiSettingsHandler
{
	static ImGuiSettingsHandler()
	{
		;ImGuiSettingsHandler* ImGuiSettingsHandler_ImGuiSettingsHandler()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiSettingsHandler_ImGuiSettingsHandler, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiSettingsHandler_destroy(ImGuiSettingsHandler* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiSettingsHandler_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiStackLevelInfo_AHK extends ImGuiStackLevelInfo
{
	static ImGuiStackLevelInfo()
	{
		;ImGuiStackLevelInfo* ImGuiStackLevelInfo_ImGuiStackLevelInfo()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStackLevelInfo_ImGuiStackLevelInfo, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiStackLevelInfo_destroy(ImGuiStackLevelInfo* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStackLevelInfo_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiStackSizes_AHK extends ImGuiStackSizes
{
	CompareWithContextState(ctx)
	{
		;void ImGuiStackSizes_CompareWithContextState(ImGuiStackSizes* this, ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStackSizes_CompareWithContextState, "ptr", this, "ptr", ctx)
	    return dll_rtn
	}
	
	static ImGuiStackSizes()
	{
		;ImGuiStackSizes* ImGuiStackSizes_ImGuiStackSizes()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStackSizes_ImGuiStackSizes, "ptr")
	    return dll_rtn
	}
	
	SetToContextState(ctx)
	{
		;void ImGuiStackSizes_SetToContextState(ImGuiStackSizes* this, ImGuiContext* ctx)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStackSizes_SetToContextState, "ptr", this, "ptr", ctx)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiStackSizes_destroy(ImGuiStackSizes* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStackSizes_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiStackTool_AHK extends ImGuiStackTool
{
	static ImGuiStackTool()
	{
		;ImGuiStackTool* ImGuiStackTool_ImGuiStackTool()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStackTool_ImGuiStackTool, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiStackTool_destroy(ImGuiStackTool* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStackTool_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiStorage_AHK extends ImGuiStorage
{
	BuildSortByKey()
	{
		;void ImGuiStorage_BuildSortByKey(ImGuiStorage* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_BuildSortByKey, "ptr", this)
	    return dll_rtn
	}
	
	Clear()
	{
		;void ImGuiStorage_Clear(ImGuiStorage* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_Clear, "ptr", this)
	    return dll_rtn
	}
	
	GetBool(key, default_val := false)
	{
		;bool ImGuiStorage_GetBool(ImGuiStorage* this, ImGuiID key, bool default_val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_GetBool, "ptr", this, "uint", key, "char", default_val, "char")
	    return dll_rtn
	}
	
	GetBoolRef(key, default_val := false)
	{
		;bool* ImGuiStorage_GetBoolRef(ImGuiStorage* this, ImGuiID key, bool default_val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_GetBoolRef, "ptr", this, "uint", key, "char", default_val, "ptr")
	    return dll_rtn
	}
	
	GetFloat(key, default_val := 0.0)
	{
		;float ImGuiStorage_GetFloat(ImGuiStorage* this, ImGuiID key, float default_val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_GetFloat, "ptr", this, "uint", key, "float", default_val, "float")
	    return dll_rtn
	}
	
	GetFloatRef(key, default_val := 0.0)
	{
		;float* ImGuiStorage_GetFloatRef(ImGuiStorage* this, ImGuiID key, float default_val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_GetFloatRef, "ptr", this, "uint", key, "float", default_val, "ptr")
	    return dll_rtn
	}
	
	GetInt(key, default_val := 0)
	{
		;int ImGuiStorage_GetInt(ImGuiStorage* this, ImGuiID key, int default_val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_GetInt, "ptr", this, "uint", key, "int", default_val, "int")
	    return dll_rtn
	}
	
	GetIntRef(key, default_val := 0)
	{
		;int* ImGuiStorage_GetIntRef(ImGuiStorage* this, ImGuiID key, int default_val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_GetIntRef, "ptr", this, "uint", key, "int", default_val, "ptr")
	    return dll_rtn
	}
	
	GetVoidPtr(key)
	{
		;void* ImGuiStorage_GetVoidPtr(ImGuiStorage* this, ImGuiID key)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_GetVoidPtr, "ptr", this, "uint", key, "ptr")
	    return dll_rtn
	}
	
	GetVoidPtrRef(key, default_val := 0)
	{
		;void** ImGuiStorage_GetVoidPtrRef(ImGuiStorage* this, ImGuiID key, void* default_val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_GetVoidPtrRef, "ptr", this, "uint", key, "ptr", default_val, "ptr")
	    return dll_rtn
	}
	
	SetAllInt(val)
	{
		;void ImGuiStorage_SetAllInt(ImGuiStorage* this, int val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_SetAllInt, "ptr", this, "int", val)
	    return dll_rtn
	}
	
	SetBool(key, val)
	{
		;void ImGuiStorage_SetBool(ImGuiStorage* this, ImGuiID key, bool val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_SetBool, "ptr", this, "uint", key, "char", val)
	    return dll_rtn
	}
	
	SetFloat(key, val)
	{
		;void ImGuiStorage_SetFloat(ImGuiStorage* this, ImGuiID key, float val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_SetFloat, "ptr", this, "uint", key, "float", val)
	    return dll_rtn
	}
	
	SetInt(key, val)
	{
		;void ImGuiStorage_SetInt(ImGuiStorage* this, ImGuiID key, int val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_SetInt, "ptr", this, "uint", key, "int", val)
	    return dll_rtn
	}
	
	SetVoidPtr(key, val)
	{
		;void ImGuiStorage_SetVoidPtr(ImGuiStorage* this, ImGuiID key, void* val)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStorage_SetVoidPtr, "ptr", this, "uint", key, "ptr", val)
	    return dll_rtn
	}
	
}
class ImGuiStoragePair_AHK extends ImGuiStoragePair
{
	static ImGuiStoragePair_Int(_key, _val_i)
	{
		;ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Int(ImGuiID _key, int _val_i)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStoragePair_ImGuiStoragePair_Int, "uint", _key, "int", _val_i, "ptr")
	    return dll_rtn
	}
	
	static ImGuiStoragePair_Float(_key, _val_f)
	{
		;ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Float(ImGuiID _key, float _val_f)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStoragePair_ImGuiStoragePair_Float, "uint", _key, "float", _val_f, "ptr")
	    return dll_rtn
	}
	
	static ImGuiStoragePair_Ptr(_key, _val_p)
	{
		;ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Ptr(ImGuiID _key, void* _val_p)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStoragePair_ImGuiStoragePair_Ptr, "uint", _key, "ptr", _val_p, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiStoragePair_destroy(ImGuiStoragePair* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStoragePair_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiStyle_AHK extends ImGuiStyle
{
	static ImGuiStyle()
	{
		;ImGuiStyle* ImGuiStyle_ImGuiStyle()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStyle_ImGuiStyle, "ptr")
	    return dll_rtn
	}
	
	ScaleAllSizes(scale_factor)
	{
		;void ImGuiStyle_ScaleAllSizes(ImGuiStyle* this, float scale_factor)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStyle_ScaleAllSizes, "ptr", this, "float", scale_factor)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiStyle_destroy(ImGuiStyle* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStyle_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiStyleMod_AHK extends ImGuiStyleMod
{
	static ImGuiStyleMod_Int(idx, v)
	{
		;ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Int(ImGuiStyleVar idx, int v)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStyleMod_ImGuiStyleMod_Int, "int", idx, "int", v, "ptr")
	    return dll_rtn
	}
	
	static ImGuiStyleMod_Float(idx, v)
	{
		;ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Float(ImGuiStyleVar idx, float v)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStyleMod_ImGuiStyleMod_Float, "int", idx, "float", v, "ptr")
	    return dll_rtn
	}
	
	static ImGuiStyleMod_Vec2(idx, v)
	{
		;ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Vec2(ImGuiStyleVar idx, ImVec2 v)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStyleMod_ImGuiStyleMod_Vec2, "int", idx, "int64", NumGet(v, "int64"), "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiStyleMod_destroy(ImGuiStyleMod* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiStyleMod_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTabBar_AHK extends ImGuiTabBar
{
	static ImGuiTabBar()
	{
		;ImGuiTabBar* ImGuiTabBar_ImGuiTabBar()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTabBar_ImGuiTabBar, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTabBar_destroy(ImGuiTabBar* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTabBar_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTabItem_AHK extends ImGuiTabItem
{
	static ImGuiTabItem()
	{
		;ImGuiTabItem* ImGuiTabItem_ImGuiTabItem()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTabItem_ImGuiTabItem, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTabItem_destroy(ImGuiTabItem* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTabItem_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTable_AHK extends ImGuiTable
{
	static ImGuiTable()
	{
		;ImGuiTable* ImGuiTable_ImGuiTable()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTable_ImGuiTable, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTable_destroy(ImGuiTable* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTable_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTableColumn_AHK extends ImGuiTableColumn
{
	static ImGuiTableColumn()
	{
		;ImGuiTableColumn* ImGuiTableColumn_ImGuiTableColumn()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableColumn_ImGuiTableColumn, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTableColumn_destroy(ImGuiTableColumn* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableColumn_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTableColumnSettings_AHK extends ImGuiTableColumnSettings
{
	static ImGuiTableColumnSettings()
	{
		;ImGuiTableColumnSettings* ImGuiTableColumnSettings_ImGuiTableColumnSettings()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableColumnSettings_ImGuiTableColumnSettings, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTableColumnSettings_destroy(ImGuiTableColumnSettings* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableColumnSettings_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTableColumnSortSpecs_AHK extends ImGuiTableColumnSortSpecs
{
	static ImGuiTableColumnSortSpecs()
	{
		;ImGuiTableColumnSortSpecs* ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTableColumnSortSpecs_destroy(ImGuiTableColumnSortSpecs* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableColumnSortSpecs_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTableInstanceData_AHK extends ImGuiTableInstanceData
{
	static ImGuiTableInstanceData()
	{
		;ImGuiTableInstanceData* ImGuiTableInstanceData_ImGuiTableInstanceData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableInstanceData_ImGuiTableInstanceData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTableInstanceData_destroy(ImGuiTableInstanceData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableInstanceData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTableSettings_AHK extends ImGuiTableSettings
{
	GetColumnSettings()
	{
		;ImGuiTableColumnSettings* ImGuiTableSettings_GetColumnSettings(ImGuiTableSettings* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableSettings_GetColumnSettings, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	static ImGuiTableSettings()
	{
		;ImGuiTableSettings* ImGuiTableSettings_ImGuiTableSettings()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableSettings_ImGuiTableSettings, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTableSettings_destroy(ImGuiTableSettings* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableSettings_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTableSortSpecs_AHK extends ImGuiTableSortSpecs
{
	static ImGuiTableSortSpecs()
	{
		;ImGuiTableSortSpecs* ImGuiTableSortSpecs_ImGuiTableSortSpecs()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableSortSpecs_ImGuiTableSortSpecs, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTableSortSpecs_destroy(ImGuiTableSortSpecs* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableSortSpecs_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTableTempData_AHK extends ImGuiTableTempData
{
	static ImGuiTableTempData()
	{
		;ImGuiTableTempData* ImGuiTableTempData_ImGuiTableTempData()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableTempData_ImGuiTableTempData, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTableTempData_destroy(ImGuiTableTempData* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTableTempData_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTextBuffer_AHK extends ImGuiTextBuffer
{
	static ImGuiTextBuffer()
	{
		;ImGuiTextBuffer* ImGuiTextBuffer_ImGuiTextBuffer()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_ImGuiTextBuffer, "ptr")
	    return dll_rtn
	}
	
	append(str, str_end := 0)
	{
		;void ImGuiTextBuffer_append(ImGuiTextBuffer* this, const char* str, const char* str_end)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_append, "ptr", this, "ptr", str, "ptr", str_end)
	    return dll_rtn
	}
	
	appendf(fmt, p*)
	{
		;void ImGuiTextBuffer_appendf(ImGuiTextBuffer* this, const char* fmt, ...)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_appendf, "ptr", this, "ptr", fmt, p*)
	    return dll_rtn
	}
	
	appendfv(fmt, args)
	{
		;void ImGuiTextBuffer_appendfv(ImGuiTextBuffer* this, const char* fmt, va_list args)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_appendfv, "ptr", this, "ptr", fmt, "ptr", args)
	    return dll_rtn
	}
	
	begin()
	{
		;const char* ImGuiTextBuffer_begin(ImGuiTextBuffer* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_begin, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	c_str()
	{
		;const char* ImGuiTextBuffer_c_str(ImGuiTextBuffer* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_c_str, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	clear()
	{
		;void ImGuiTextBuffer_clear(ImGuiTextBuffer* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_clear, "ptr", this)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTextBuffer_destroy(ImGuiTextBuffer* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_destroy, "ptr", self)
	    return dll_rtn
	}
	
	empty()
	{
		;bool ImGuiTextBuffer_empty(ImGuiTextBuffer* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_empty, "ptr", this, "char")
	    return dll_rtn
	}
	
	end()
	{
		;const char* ImGuiTextBuffer_end(ImGuiTextBuffer* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_end, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	reserve(capacity)
	{
		;void ImGuiTextBuffer_reserve(ImGuiTextBuffer* this, int capacity)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_reserve, "ptr", this, "int", capacity)
	    return dll_rtn
	}
	
	size()
	{
		;int ImGuiTextBuffer_size(ImGuiTextBuffer* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextBuffer_size, "ptr", this, "int")
	    return dll_rtn
	}
	
}
class ImGuiTextFilter_AHK extends ImGuiTextFilter
{
	Build()
	{
		;void ImGuiTextFilter_Build(ImGuiTextFilter* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextFilter_Build, "ptr", this)
	    return dll_rtn
	}
	
	Clear()
	{
		;void ImGuiTextFilter_Clear(ImGuiTextFilter* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextFilter_Clear, "ptr", this)
	    return dll_rtn
	}
	
	Draw(label := "Filter([inc, -exc])", width := 0.0)
	{
		;bool ImGuiTextFilter_Draw(ImGuiTextFilter* this, const char* label, float width)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextFilter_Draw, "ptr", this, "ptr", label, "float", width, "char")
	    return dll_rtn
	}
	
	static ImGuiTextFilter(default_filter := "")
	{
		;ImGuiTextFilter* ImGuiTextFilter_ImGuiTextFilter(const char* default_filter)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextFilter_ImGuiTextFilter, "ptr", default_filter, "ptr")
	    return dll_rtn
	}
	
	IsActive()
	{
		;bool ImGuiTextFilter_IsActive(ImGuiTextFilter* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextFilter_IsActive, "ptr", this, "char")
	    return dll_rtn
	}
	
	PassFilter(text, text_end := 0)
	{
		;bool ImGuiTextFilter_PassFilter(ImGuiTextFilter* this, const char* text, const char* text_end)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextFilter_PassFilter, "ptr", this, "ptr", text, "ptr", text_end, "char")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTextFilter_destroy(ImGuiTextFilter* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextFilter_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiTextIndex_AHK extends ImGuiTextIndex
{
	append(base, old_size, new_size)
	{
		;void ImGuiTextIndex_append(ImGuiTextIndex* this, const char* base, int old_size, int new_size)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextIndex_append, "ptr", this, "ptr", base, "int", old_size, "int", new_size)
	    return dll_rtn
	}
	
	clear()
	{
		;void ImGuiTextIndex_clear(ImGuiTextIndex* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextIndex_clear, "ptr", this)
	    return dll_rtn
	}
	
	get_line_begin(base, n)
	{
		;const char* ImGuiTextIndex_get_line_begin(ImGuiTextIndex* this, const char* base, int n)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextIndex_get_line_begin, "ptr", this, "ptr", base, "int", n, "ptr")
	    return dll_rtn
	}
	
	get_line_end(base, n)
	{
		;const char* ImGuiTextIndex_get_line_end(ImGuiTextIndex* this, const char* base, int n)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextIndex_get_line_end, "ptr", this, "ptr", base, "int", n, "ptr")
	    return dll_rtn
	}
	
	size()
	{
		;int ImGuiTextIndex_size(ImGuiTextIndex* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextIndex_size, "ptr", this, "int")
	    return dll_rtn
	}
	
}
class ImGuiTextRange_AHK extends ImGuiTextRange
{
	static ImGuiTextRange_Nil()
	{
		;ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Nil()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextRange_ImGuiTextRange_Nil, "ptr")
	    return dll_rtn
	}
	
	static ImGuiTextRange_Str(_b, _e)
	{
		;ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Str(const char* _b, const char* _e)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextRange_ImGuiTextRange_Str, "ptr", _b, "ptr", _e, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiTextRange_destroy(ImGuiTextRange* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextRange_destroy, "ptr", self)
	    return dll_rtn
	}
	
	empty()
	{
		;bool ImGuiTextRange_empty(ImGuiTextRange* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextRange_empty, "ptr", this, "char")
	    return dll_rtn
	}
	
	split(separator, out)
	{
		;void ImGuiTextRange_split(ImGuiTextRange* this, char separator, ImVector_ImGuiTextRange* out)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiTextRange_split, "ptr", this, "char", separator, "ptr", out)
	    return dll_rtn
	}
	
}
class ImGuiViewport_AHK extends ImGuiViewport
{
	GetCenter(pOut)
	{
		;void ImGuiViewport_GetCenter(ImVec2 *pOut, ImGuiViewport* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewport_GetCenter, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetWorkCenter(pOut)
	{
		;void ImGuiViewport_GetWorkCenter(ImVec2 *pOut, ImGuiViewport* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewport_GetWorkCenter, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiViewport()
	{
		;ImGuiViewport* ImGuiViewport_ImGuiViewport()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewport_ImGuiViewport, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiViewport_destroy(ImGuiViewport* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewport_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiViewportP_AHK extends ImGuiViewportP
{
	CalcWorkRectPos(pOut, off_min)
	{
		;void ImGuiViewportP_CalcWorkRectPos(ImVec2 *pOut, ImGuiViewportP* this, const ImVec2 off_min)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_CalcWorkRectPos, "ptr", pOut, "ptr", this, "int64", NumGet(off_min, "int64"))
	    return dll_rtn
	}
	
	CalcWorkRectSize(pOut, off_min, off_max)
	{
		;void ImGuiViewportP_CalcWorkRectSize(ImVec2 *pOut, ImGuiViewportP* this, const ImVec2 off_min, const ImVec2 off_max)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_CalcWorkRectSize, "ptr", pOut, "ptr", this, "int64", NumGet(off_min, "int64"), "int64", NumGet(off_max, "int64"))
	    return dll_rtn
	}
	
	ClearRequestFlags()
	{
		;void ImGuiViewportP_ClearRequestFlags(ImGuiViewportP* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_ClearRequestFlags, "ptr", this)
	    return dll_rtn
	}
	
	GetBuildWorkRect(pOut)
	{
		;void ImGuiViewportP_GetBuildWorkRect(ImRect *pOut, ImGuiViewportP* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_GetBuildWorkRect, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetMainRect(pOut)
	{
		;void ImGuiViewportP_GetMainRect(ImRect *pOut, ImGuiViewportP* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_GetMainRect, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetWorkRect(pOut)
	{
		;void ImGuiViewportP_GetWorkRect(ImRect *pOut, ImGuiViewportP* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_GetWorkRect, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	static ImGuiViewportP()
	{
		;ImGuiViewportP* ImGuiViewportP_ImGuiViewportP()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_ImGuiViewportP, "ptr")
	    return dll_rtn
	}
	
	UpdateWorkRect()
	{
		;void ImGuiViewportP_UpdateWorkRect(ImGuiViewportP* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_UpdateWorkRect, "ptr", this)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiViewportP_destroy(ImGuiViewportP* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiViewportP_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiWindow_AHK extends ImGuiWindow
{
	CalcFontSize()
	{
		;float ImGuiWindow_CalcFontSize(ImGuiWindow* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_CalcFontSize, "ptr", this, "float")
	    return dll_rtn
	}
	
	GetID_Str(str, str_end := 0)
	{
		;ImGuiID ImGuiWindow_GetID_Str(ImGuiWindow* this, const char* str, const char* str_end)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_GetID_Str, "ptr", this, "ptr", str, "ptr", str_end, "uint")
	    return dll_rtn
	}
	
	GetID_Ptr(ptr)
	{
		;ImGuiID ImGuiWindow_GetID_Ptr(ImGuiWindow* this, const void* ptr)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_GetID_Ptr, "ptr", this, "ptr", ptr, "uint")
	    return dll_rtn
	}
	
	GetID_Int(n)
	{
		;ImGuiID ImGuiWindow_GetID_Int(ImGuiWindow* this, int n)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_GetID_Int, "ptr", this, "int", n, "uint")
	    return dll_rtn
	}
	
	GetIDFromRectangle(r_abs)
	{
		;ImGuiID ImGuiWindow_GetIDFromRectangle(ImGuiWindow* this, const ImRect r_abs)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_GetIDFromRectangle, "ptr", this, "ptr", r_abs, "uint")
	    return dll_rtn
	}
	
	static ImGuiWindow(context, name)
	{
		;ImGuiWindow* ImGuiWindow_ImGuiWindow(ImGuiContext* context, const char* name)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_ImGuiWindow, "ptr", context, "ptr", name, "ptr")
	    return dll_rtn
	}
	
	MenuBarHeight()
	{
		;float ImGuiWindow_MenuBarHeight(ImGuiWindow* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_MenuBarHeight, "ptr", this, "float")
	    return dll_rtn
	}
	
	MenuBarRect(pOut)
	{
		;void ImGuiWindow_MenuBarRect(ImRect *pOut, ImGuiWindow* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_MenuBarRect, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	Rect(pOut)
	{
		;void ImGuiWindow_Rect(ImRect *pOut, ImGuiWindow* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_Rect, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	TitleBarHeight()
	{
		;float ImGuiWindow_TitleBarHeight(ImGuiWindow* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_TitleBarHeight, "ptr", this, "float")
	    return dll_rtn
	}
	
	TitleBarRect(pOut)
	{
		;void ImGuiWindow_TitleBarRect(ImRect *pOut, ImGuiWindow* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_TitleBarRect, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiWindow_destroy(ImGuiWindow* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindow_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiWindowClass_AHK extends ImGuiWindowClass
{
	static ImGuiWindowClass()
	{
		;ImGuiWindowClass* ImGuiWindowClass_ImGuiWindowClass()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindowClass_ImGuiWindowClass, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiWindowClass_destroy(ImGuiWindowClass* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindowClass_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImGuiWindowSettings_AHK extends ImGuiWindowSettings
{
	GetName()
	{
		;char* ImGuiWindowSettings_GetName(ImGuiWindowSettings* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindowSettings_GetName, "ptr", this, "ptr")
	    return dll_rtn
	}
	
	static ImGuiWindowSettings()
	{
		;ImGuiWindowSettings* ImGuiWindowSettings_ImGuiWindowSettings()
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindowSettings_ImGuiWindowSettings, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImGuiWindowSettings_destroy(ImGuiWindowSettings* this)
	    dll_rtn := DllCall(Cimgui_dll.ImGuiWindowSettings_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImRect_AHK extends ImRect
{
	Add_Vec2(p)
	{
		;void ImRect_Add_Vec2(ImRect* this, const ImVec2 p)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Add_Vec2, "ptr", this, "int64", NumGet(p, "int64"))
	    return dll_rtn
	}
	
	Add_Rect(r)
	{
		;void ImRect_Add_Rect(ImRect* this, const ImRect r)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Add_Rect, "ptr", this, "ptr", r)
	    return dll_rtn
	}
	
	ClipWith(r)
	{
		;void ImRect_ClipWith(ImRect* this, const ImRect r)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_ClipWith, "ptr", this, "ptr", r)
	    return dll_rtn
	}
	
	ClipWithFull(r)
	{
		;void ImRect_ClipWithFull(ImRect* this, const ImRect r)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_ClipWithFull, "ptr", this, "ptr", r)
	    return dll_rtn
	}
	
	Contains_Vec2(p)
	{
		;bool ImRect_Contains_Vec2(ImRect* this, const ImVec2 p)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Contains_Vec2, "ptr", this, "int64", NumGet(p, "int64"), "char")
	    return dll_rtn
	}
	
	Contains_Rect(r)
	{
		;bool ImRect_Contains_Rect(ImRect* this, const ImRect r)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Contains_Rect, "ptr", this, "ptr", r, "char")
	    return dll_rtn
	}
	
	Expand_Float(amount)
	{
		;void ImRect_Expand_Float(ImRect* this, const float amount)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Expand_Float, "ptr", this, "float", amount)
	    return dll_rtn
	}
	
	Expand_Vec2(amount)
	{
		;void ImRect_Expand_Vec2(ImRect* this, const ImVec2 amount)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Expand_Vec2, "ptr", this, "int64", NumGet(amount, "int64"))
	    return dll_rtn
	}
	
	Floor()
	{
		;void ImRect_Floor(ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Floor, "ptr", this)
	    return dll_rtn
	}
	
	GetArea()
	{
		;float ImRect_GetArea(ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetArea, "ptr", this, "float")
	    return dll_rtn
	}
	
	GetBL(pOut)
	{
		;void ImRect_GetBL(ImVec2 *pOut, ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetBL, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetBR(pOut)
	{
		;void ImRect_GetBR(ImVec2 *pOut, ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetBR, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetCenter(pOut)
	{
		;void ImRect_GetCenter(ImVec2 *pOut, ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetCenter, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetHeight()
	{
		;float ImRect_GetHeight(ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetHeight, "ptr", this, "float")
	    return dll_rtn
	}
	
	GetSize(pOut)
	{
		;void ImRect_GetSize(ImVec2 *pOut, ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetSize, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetTL(pOut)
	{
		;void ImRect_GetTL(ImVec2 *pOut, ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetTL, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetTR(pOut)
	{
		;void ImRect_GetTR(ImVec2 *pOut, ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetTR, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	GetWidth()
	{
		;float ImRect_GetWidth(ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_GetWidth, "ptr", this, "float")
	    return dll_rtn
	}
	
	static ImRect_Nil()
	{
		;ImRect* ImRect_ImRect_Nil()
	    dll_rtn := DllCall(Cimgui_dll.ImRect_ImRect_Nil, "ptr")
	    return dll_rtn
	}
	
	static ImRect_Vec2(min, max)
	{
		;ImRect* ImRect_ImRect_Vec2(const ImVec2 min, const ImVec2 max)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_ImRect_Vec2, "int64", NumGet(min, "int64"), "int64", NumGet(max, "int64"), "ptr")
	    return dll_rtn
	}
	
	static ImRect_Vec4(v)
	{
		;ImRect* ImRect_ImRect_Vec4(const ImVec4 v)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_ImRect_Vec4, "ptr", v, "ptr")
	    return dll_rtn
	}
	
	static ImRect_Float(x1, y1, x2, y2)
	{
		;ImRect* ImRect_ImRect_Float(float x1, float y1, float x2, float y2)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_ImRect_Float, "float", x1, "float", y1, "float", x2, "float", y2, "ptr")
	    return dll_rtn
	}
	
	IsInverted()
	{
		;bool ImRect_IsInverted(ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_IsInverted, "ptr", this, "char")
	    return dll_rtn
	}
	
	Overlaps(r)
	{
		;bool ImRect_Overlaps(ImRect* this, const ImRect r)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Overlaps, "ptr", this, "ptr", r, "char")
	    return dll_rtn
	}
	
	ToVec4(pOut)
	{
		;void ImRect_ToVec4(ImVec4 *pOut, ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_ToVec4, "ptr", pOut, "ptr", this)
	    return dll_rtn
	}
	
	Translate(d)
	{
		;void ImRect_Translate(ImRect* this, const ImVec2 d)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_Translate, "ptr", this, "int64", NumGet(d, "int64"))
	    return dll_rtn
	}
	
	TranslateX(dx)
	{
		;void ImRect_TranslateX(ImRect* this, float dx)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_TranslateX, "ptr", this, "float", dx)
	    return dll_rtn
	}
	
	TranslateY(dy)
	{
		;void ImRect_TranslateY(ImRect* this, float dy)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_TranslateY, "ptr", this, "float", dy)
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImRect_destroy(ImRect* this)
	    dll_rtn := DllCall(Cimgui_dll.ImRect_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImVec1_AHK extends ImVec1
{
	static ImVec1_Nil()
	{
		;ImVec1* ImVec1_ImVec1_Nil()
	    dll_rtn := DllCall(Cimgui_dll.ImVec1_ImVec1_Nil, "ptr")
	    return dll_rtn
	}
	
	static ImVec1_Float(_x)
	{
		;ImVec1* ImVec1_ImVec1_Float(float _x)
	    dll_rtn := DllCall(Cimgui_dll.ImVec1_ImVec1_Float, "float", _x, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImVec1_destroy(ImVec1* this)
	    dll_rtn := DllCall(Cimgui_dll.ImVec1_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImVec2_AHK extends ImVec2
{
	static ImVec2_Nil()
	{
		;ImVec2* ImVec2_ImVec2_Nil()
	    dll_rtn := DllCall(Cimgui_dll.ImVec2_ImVec2_Nil, "ptr")
	    return dll_rtn
	}
	
	static ImVec2_Float(_x, _y)
	{
		;ImVec2* ImVec2_ImVec2_Float(float _x, float _y)
	    dll_rtn := DllCall(Cimgui_dll.ImVec2_ImVec2_Float, "float", _x, "float", _y, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImVec2_destroy(ImVec2* this)
	    dll_rtn := DllCall(Cimgui_dll.ImVec2_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImVec2ih_AHK extends ImVec2ih
{
	static ImVec2ih_Nil()
	{
		;ImVec2ih* ImVec2ih_ImVec2ih_Nil()
	    dll_rtn := DllCall(Cimgui_dll.ImVec2ih_ImVec2ih_Nil, "ptr")
	    return dll_rtn
	}
	
	static ImVec2ih_short(_x, _y)
	{
		;ImVec2ih* ImVec2ih_ImVec2ih_short(short _x, short _y)
	    dll_rtn := DllCall(Cimgui_dll.ImVec2ih_ImVec2ih_short, "short", _x, "short", _y, "ptr")
	    return dll_rtn
	}
	
	static ImVec2ih_Vec2(rhs)
	{
		;ImVec2ih* ImVec2ih_ImVec2ih_Vec2(const ImVec2 rhs)
	    dll_rtn := DllCall(Cimgui_dll.ImVec2ih_ImVec2ih_Vec2, "int64", NumGet(rhs, "int64"), "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImVec2ih_destroy(ImVec2ih* this)
	    dll_rtn := DllCall(Cimgui_dll.ImVec2ih_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
class ImVec4_AHK extends ImVec4
{
	static ImVec4_Nil()
	{
		;ImVec4* ImVec4_ImVec4_Nil()
	    dll_rtn := DllCall(Cimgui_dll.ImVec4_ImVec4_Nil, "ptr")
	    return dll_rtn
	}
	
	static ImVec4_Float(_x, _y, _z, _w)
	{
		;ImVec4* ImVec4_ImVec4_Float(float _x, float _y, float _z, float _w)
	    dll_rtn := DllCall(Cimgui_dll.ImVec4_ImVec4_Float, "float", _x, "float", _y, "float", _z, "float", _w, "ptr")
	    return dll_rtn
	}
	
	static free(self)
	{
		if(this.HasOwnProp('__Delete'))
	        return
	    ;void ImVec4_destroy(ImVec4* this)
	    dll_rtn := DllCall(Cimgui_dll.ImVec4_destroy, "ptr", self)
	    return dll_rtn
	}
	
}
