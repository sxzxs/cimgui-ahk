#include <ctypes>
#include ./cimgui_enum.ah2
#include ./cimgui_typedef.ah2
#include ./cimgui_template.ah2

class StbUndoRecord extends ctypes.struct 
{
   static fields := [["int", "where"],["int", "insert_length"],["int", "delete_length"],["int", "char_storage"]]
}
class StbUndoState extends ctypes.struct 
{
   static fields := [[StbUndoRecord, "undo_rec[99]"],["ImWchar", "undo_char[999]"],["short", "undo_point"],["short", "redo_point"],["int", "undo_char_point"],["int", "redo_char_point"]]
}
class STB_TexteditState extends ctypes.struct 
{
   static fields := [["int", "cursor"],["int", "select_start"],["int", "select_end"],["unsigned char", "insert_mode"],["int", "row_count_per_page"],["unsigned char", "cursor_at_end_of_line"],["unsigned char", "initialized"],["unsigned char", "has_preferred_x"],["unsigned char", "single_line"],["unsigned char", "padding1"],["unsigned char", "padding2"],["unsigned char", "padding3"],["float", "preferred_x"],[StbUndoState, "undostate"]]
}
class StbTexteditRow extends ctypes.struct 
{
   static fields := [["float", "x0"],["float", "x1"],["float", "baseline_y_delta"],["float", "ymin"],["float", "ymax"],["int", "num_chars"]]
}
class ImVec2 extends ctypes.struct 
{
   static fields := [["float", "x"],["float", "y"]]
}
class ImVec4 extends ctypes.struct 
{
   static fields := [["float", "x"],["float", "y"],["float", "z"],["float", "w"]]
}
class ImGuiStyle extends ctypes.struct 
{
   static fields := [["float", "Alpha"],["float", "DisabledAlpha"],[ImVec2, "WindowPadding"],["float", "WindowRounding"],["float", "WindowBorderSize"],[ImVec2, "WindowMinSize"],[ImVec2, "WindowTitleAlign"],["ImGuiDir", "WindowMenuButtonPosition"],["float", "ChildRounding"],["float", "ChildBorderSize"],["float", "PopupRounding"],["float", "PopupBorderSize"],[ImVec2, "FramePadding"],["float", "FrameRounding"],["float", "FrameBorderSize"],[ImVec2, "ItemSpacing"],[ImVec2, "ItemInnerSpacing"],[ImVec2, "CellPadding"],[ImVec2, "TouchExtraPadding"],["float", "IndentSpacing"],["float", "ColumnsMinSpacing"],["float", "ScrollbarSize"],["float", "ScrollbarRounding"],["float", "GrabMinSize"],["float", "GrabRounding"],["float", "LogSliderDeadzone"],["float", "TabRounding"],["float", "TabBorderSize"],["float", "TabMinWidthForCloseButton"],["ImGuiDir", "ColorButtonPosition"],[ImVec2, "ButtonTextAlign"],[ImVec2, "SelectableTextAlign"],["float", "SeparatorTextBorderSize"],[ImVec2, "SeparatorTextAlign"],[ImVec2, "SeparatorTextPadding"],[ImVec2, "DisplayWindowPadding"],[ImVec2, "DisplaySafeAreaPadding"],["float", "DockingSeparatorSize"],["float", "MouseCursorScale"],["bool", "AntiAliasedLines"],["bool", "AntiAliasedLinesUseTex"],["bool", "AntiAliasedFill"],["float", "CurveTessellationTol"],["float", "CircleTessellationMaxError"],[ImVec4, "Colors[55]"],["float", "HoverStationaryDelay"],["float", "HoverDelayShort"],["float", "HoverDelayNormal"],["ImGuiHoveredFlags", "HoverFlagsForTooltipMouse"],["ImGuiHoveredFlags", "HoverFlagsForTooltipNav"]]
}
class ImGuiKeyData extends ctypes.struct 
{
   static fields := [["bool", "Down"],["float", "DownDuration"],["float", "DownDurationPrev"],["float", "AnalogValue"]]
}
class ImGuiIO extends ctypes.struct 
{
   static fields := [["ImGuiConfigFlags", "ConfigFlags"],["ImGuiBackendFlags", "BackendFlags"],[ImVec2, "DisplaySize"],["float", "DeltaTime"],["float", "IniSavingRate"],["char*", "IniFilename"],["char*", "LogFilename"],["void*", "UserData"],[ImFontAtlas, "*Fonts"],["float", "FontGlobalScale"],["bool", "FontAllowUserScaling"],[ImFont, "*FontDefault"],[ImVec2, "DisplayFramebufferScale"],["bool", "ConfigDockingNoSplit"],["bool", "ConfigDockingWithShift"],["bool", "ConfigDockingAlwaysTabBar"],["bool", "ConfigDockingTransparentPayload"],["bool", "ConfigViewportsNoAutoMerge"],["bool", "ConfigViewportsNoTaskBarIcon"],["bool", "ConfigViewportsNoDecoration"],["bool", "ConfigViewportsNoDefaultParent"],["bool", "MouseDrawCursor"],["bool", "ConfigMacOSXBehaviors"],["bool", "ConfigInputTrickleEventQueue"],["bool", "ConfigInputTextCursorBlink"],["bool", "ConfigInputTextEnterKeepActive"],["bool", "ConfigDragClickToInputText"],["bool", "ConfigWindowsResizeFromEdges"],["bool", "ConfigWindowsMoveFromTitleBarOnly"],["float", "ConfigMemoryCompactTimer"],["float", "MouseDoubleClickTime"],["float", "MouseDoubleClickMaxDist"],["float", "MouseDragThreshold"],["float", "KeyRepeatDelay"],["float", "KeyRepeatRate"],["bool", "ConfigDebugBeginReturnValueOnce"],["bool", "ConfigDebugBeginReturnValueLoop"],["bool", "ConfigDebugIgnoreFocusLoss"],["bool", "ConfigDebugIniSettings"],["char*", "BackendPlatformName"],["char*", "BackendRendererName"],["void*", "BackendPlatformUserData"],["void*", "BackendRendererUserData"],["void*", "BackendLanguageUserData"],["func", "GetClipboardTextFn"],["func", "SetClipboardTextFn"],["void*", "ClipboardUserData"],["func", "SetPlatformImeDataFn"],["void*", "_UnusedPadding"],["ImWchar", "PlatformLocaleDecimalPoint"],["bool", "WantCaptureMouse"],["bool", "WantCaptureKeyboard"],["bool", "WantTextInput"],["bool", "WantSetMousePos"],["bool", "WantSaveIniSettings"],["bool", "NavActive"],["bool", "NavVisible"],["float", "Framerate"],["int", "MetricsRenderVertices"],["int", "MetricsRenderIndices"],["int", "MetricsRenderWindows"],["int", "MetricsActiveWindows"],["int", "MetricsActiveAllocations"],[ImVec2, "MouseDelta"],["int", "KeyMap[652]"],["bool", "KeysDown[652]"],["float", "NavInputs[16]"],[ImGuiContext, "*Ctx"],[ImVec2, "MousePos"],["bool", "MouseDown[5]"],["float", "MouseWheel"],["float", "MouseWheelH"],["ImGuiMouseSource", "MouseSource"],["ImGuiID", "MouseHoveredViewport"],["bool", "KeyCtrl"],["bool", "KeyShift"],["bool", "KeyAlt"],["bool", "KeySuper"],["ImGuiKeyChord", "KeyMods"],[ImGuiKeyData, "KeysData[652]"],["bool", "WantCaptureMouseUnlessPopupClose"],[ImVec2, "MousePosPrev"],[ImVec2, "MouseClickedPos[5]"],["double", "MouseClickedTime[5]"],["bool", "MouseClicked[5]"],["bool", "MouseDoubleClicked[5]"],["ImU16", "MouseClickedCount[5]"],["ImU16", "MouseClickedLastCount[5]"],["bool", "MouseReleased[5]"],["bool", "MouseDownOwned[5]"],["bool", "MouseDownOwnedUnlessPopupClose[5]"],["bool", "MouseWheelRequestAxisSwap"],["float", "MouseDownDuration[5]"],["float", "MouseDownDurationPrev[5]"],[ImVec2, "MouseDragMaxDistanceAbs[5]"],["float", "MouseDragMaxDistanceSqr[5]"],["float", "PenPressure"],["bool", "AppFocusLost"],["bool", "AppAcceptingEvents"],["ImS8", "BackendUsingLegacyKeyArrays"],["bool", "BackendUsingLegacyNavInputArray"],["ImWchar16", "InputQueueSurrogate"],[ImVector_ImWchar, "InputQueueCharacters"]]
}
class ImGuiInputTextCallbackData extends ctypes.struct 
{
   static fields := [[ImGuiContext, "*Ctx"],["ImGuiInputTextFlags", "EventFlag"],["ImGuiInputTextFlags", "Flags"],["void*", "UserData"],["ImWchar", "EventChar"],["ImGuiKey", "EventKey"],["char*", "Buf"],["int", "BufTextLen"],["int", "BufSize"],["bool", "BufDirty"],["int", "CursorPos"],["int", "SelectionStart"],["int", "SelectionEnd"]]
}
class ImGuiSizeCallbackData extends ctypes.struct 
{
   static fields := [["void*", "UserData"],[ImVec2, "Pos"],[ImVec2, "CurrentSize"],[ImVec2, "DesiredSize"]]
}
class ImGuiWindowClass extends ctypes.struct 
{
   static fields := [["ImGuiID", "ClassId"],["ImGuiID", "ParentViewportId"],["ImGuiViewportFlags", "ViewportFlagsOverrideSet"],["ImGuiViewportFlags", "ViewportFlagsOverrideClear"],["ImGuiTabItemFlags", "TabItemFlagsOverrideSet"],["ImGuiDockNodeFlags", "DockNodeFlagsOverrideSet"],["bool", "DockingAlwaysTabBar"],["bool", "DockingAllowUnclassed"]]
}
class ImGuiPayload extends ctypes.struct 
{
   static fields := [["void*", "Data"],["int", "DataSize"],["ImGuiID", "SourceId"],["ImGuiID", "SourceParentId"],["int", "DataFrameCount"],["char", "DataType[33]"],["bool", "Preview"],["bool", "Delivery"]]
}
class ImGuiTableColumnSortSpecs extends ctypes.struct 
{
   static fields := [["ImGuiID", "ColumnUserID"],["ImS16", "ColumnIndex"],["ImS16", "SortOrder"],["ImGuiSortDirection", "SortDirection"]]
}
class ImGuiTableSortSpecs extends ctypes.struct 
{
   static fields := [[ImGuiTableColumnSortSpecs, "*Specs"],["int", "SpecsCount"],["bool", "SpecsDirty"]]
}
class ImGuiOnceUponAFrame extends ctypes.struct 
{
   static fields := [["int", "RefFrame"]]
}
class ImGuiTextFilter extends ctypes.struct 
{
   static fields := [["char", "InputBuf[256]"],[ImVector_ImGuiTextRange, "Filters"],["int", "CountGrep"]]
}
class ImGuiTextRange extends ctypes.struct 
{
   static fields := [["char*", "b"],["char*", "e"]]
}
class ImGuiTextBuffer extends ctypes.struct 
{
   static fields := [[ImVector_char, "Buf"]]
}
class ImGuiStorage extends ctypes.struct 
{
   static fields := [[ImVector_ImGuiStoragePair, "Data"]]
}
class ImGuiStoragePair extends ctypes.struct 
{
   static fields := [["ImGuiID", "key"],[ctypes.struct("union { int val_i; float val_f; void* val_p;}"),"union"]]
}
class ImGuiListClipper extends ctypes.struct 
{
   static fields := [[ImGuiContext, "*Ctx"],["int", "DisplayStart"],["int", "DisplayEnd"],["int", "ItemsCount"],["float", "ItemsHeight"],["float", "StartPosY"],["void*", "TempData"]]
}
class ImColor extends ctypes.struct 
{
   static fields := [[ImVec4, "Value"]]
}
class ImDrawCmd extends ctypes.struct 
{
   static fields := [[ImVec4, "ClipRect"],["ImTextureID", "TextureId"],["unsigned int", "VtxOffset"],["unsigned int", "IdxOffset"],["unsigned int", "ElemCount"],["ImDrawCallback", "UserCallback"],["void*", "UserCallbackData"]]
}
class ImDrawVert extends ctypes.struct 
{
   static fields := [[ImVec2, "pos"],[ImVec2, "uv"],["ImU32", "col"]]
}
class ImDrawCmdHeader extends ctypes.struct 
{
   static fields := [[ImVec4, "ClipRect"],["ImTextureID", "TextureId"],["unsigned int", "VtxOffset"]]
}
class ImDrawChannel extends ctypes.struct 
{
   static fields := [[ImVector_ImDrawCmd, "_CmdBuffer"],[ImVector_ImDrawIdx, "_IdxBuffer"]]
}
class ImDrawListSplitter extends ctypes.struct 
{
   static fields := [["int", "_Current"],["int", "_Count"],[ImVector_ImDrawChannel, "_Channels"]]
}
class ImDrawList extends ctypes.struct 
{
   static fields := [[ImVector_ImDrawCmd, "CmdBuffer"],[ImVector_ImDrawIdx, "IdxBuffer"],[ImVector_ImDrawVert, "VtxBuffer"],["ImDrawListFlags", "Flags"],["unsigned int", "_VtxCurrentIdx"],[ImDrawListSharedData, "*_Data"],["char*", "_OwnerName"],[ImDrawVert, "*_VtxWritePtr"],["ImDrawIdx*", "_IdxWritePtr"],[ImVector_ImVec4, "_ClipRectStack"],[ImVector_ImTextureID, "_TextureIdStack"],[ImVector_ImVec2, "_Path"],[ImDrawCmdHeader, "_CmdHeader"],[ImDrawListSplitter, "_Splitter"],["float", "_FringeScale"]]
}
class ImDrawData extends ctypes.struct 
{
   static fields := [["bool", "Valid"],["int", "CmdListsCount"],["int", "TotalIdxCount"],["int", "TotalVtxCount"],[ImVector_ImDrawListPtr, "CmdLists"],[ImVec2, "DisplayPos"],[ImVec2, "DisplaySize"],[ImVec2, "FramebufferScale"],[ImGuiViewport, "*OwnerViewport"]]
}
class ImFontConfig extends ctypes.struct 
{
   static fields := [["void*", "FontData"],["int", "FontDataSize"],["bool", "FontDataOwnedByAtlas"],["int", "FontNo"],["float", "SizePixels"],["int", "OversampleH"],["int", "OversampleV"],["bool", "PixelSnapH"],[ImVec2, "GlyphExtraSpacing"],[ImVec2, "GlyphOffset"],["ImWchar*", "GlyphRanges"],["float", "GlyphMinAdvanceX"],["float", "GlyphMaxAdvanceX"],["bool", "MergeMode"],["unsigned int", "FontBuilderFlags"],["float", "RasterizerMultiply"],["ImWchar", "EllipsisChar"],["char", "Name[40]"],[ImFont, "*DstFont"]]
}
class ImFontGlyph extends ctypes.struct 
{
   static fields := [["unsigned int", "Colored"],["unsigned int", "Visible"],["unsigned int", "Codepoint"],["float", "AdvanceX"],["float", "X0"],["float", "Y0"],["float", "X1"],["float", "Y1"],["float", "U0"],["float", "V0"],["float", "U1"],["float", "V1"]]
}
class ImFontGlyphRangesBuilder extends ctypes.struct 
{
   static fields := [[ImVector_ImU32, "UsedChars"]]
}
class ImFontAtlasCustomRect extends ctypes.struct 
{
   static fields := [["unsigned short", "Width"],["unsigned short", "Height"],["unsigned short", "X"],["unsigned short", "Y"],["unsigned int", "GlyphID"],["float", "GlyphAdvanceX"],[ImVec2, "GlyphOffset"],[ImFont, "*Font"]]
}
class ImFontAtlas extends ctypes.struct 
{
   static fields := [["ImFontAtlasFlags", "Flags"],["ImTextureID", "TexID"],["int", "TexDesiredWidth"],["int", "TexGlyphPadding"],["bool", "Locked"],["void*", "UserData"],["bool", "TexReady"],["bool", "TexPixelsUseColors"],["unsigned char*", "TexPixelsAlpha8"],["unsigned int*", "TexPixelsRGBA32"],["int", "TexWidth"],["int", "TexHeight"],[ImVec2, "TexUvScale"],[ImVec2, "TexUvWhitePixel"],[ImVector_ImFontPtr, "Fonts"],[ImVector_ImFontAtlasCustomRect, "CustomRects"],[ImVector_ImFontConfig, "ConfigData"],[ImVec4, "TexUvLines[64]"],[ImFontBuilderIO, "*FontBuilderIO"],["unsigned int", "FontBuilderFlags"],["int", "PackIdMouseCursors"],["int", "PackIdLines"]]
}
class ImFont extends ctypes.struct 
{
   static fields := [[ImVector_float, "IndexAdvanceX"],["float", "FallbackAdvanceX"],["float", "FontSize"],[ImVector_ImWchar, "IndexLookup"],[ImVector_ImFontGlyph, "Glyphs"],[ImFontGlyph, "*FallbackGlyph"],[ImFontAtlas, "*ContainerAtlas"],[ImFontConfig, "*ConfigData"],["short", "ConfigDataCount"],["ImWchar", "FallbackChar"],["ImWchar", "EllipsisChar"],["short", "EllipsisCharCount"],["float", "EllipsisWidth"],["float", "EllipsisCharStep"],["bool", "DirtyLookupTables"],["float", "Scale"],["float", "Ascent"],["float", "Descent"],["int", "MetricsTotalSurface"],["ImU8", "Used4kPagesMap[2]"]]
}
class ImGuiViewport extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImGuiViewportFlags", "Flags"],[ImVec2, "Pos"],[ImVec2, "Size"],[ImVec2, "WorkPos"],[ImVec2, "WorkSize"],["float", "DpiScale"],["ImGuiID", "ParentViewportId"],[ImDrawData, "*DrawData"],["void*", "RendererUserData"],["void*", "PlatformUserData"],["void*", "PlatformHandle"],["void*", "PlatformHandleRaw"],["bool", "PlatformWindowCreated"],["bool", "PlatformRequestMove"],["bool", "PlatformRequestResize"],["bool", "PlatformRequestClose"]]
}
class ImGuiPlatformIO extends ctypes.struct 
{
   static fields := [["func", "Platform_CreateWindow"],["func", "Platform_DestroyWindow"],["func", "Platform_ShowWindow"],["func", "Platform_SetWindowPos"],["func", "Platform_GetWindowPos"],["func", "Platform_SetWindowSize"],["func", "Platform_GetWindowSize"],["func", "Platform_SetWindowFocus"],["func", "Platform_GetWindowFocus"],["func", "Platform_GetWindowMinimized"],["func", "Platform_SetWindowTitle"],["func", "Platform_SetWindowAlpha"],["func", "Platform_UpdateWindow"],["func", "Platform_RenderWindow"],["func", "Platform_SwapBuffers"],["func", "Platform_GetWindowDpiScale"],["func", "Platform_OnChangedViewport"],["func", "Platform_CreateVkSurface"],["func", "Renderer_CreateWindow"],["func", "Renderer_DestroyWindow"],["func", "Renderer_SetWindowSize"],["func", "Renderer_RenderWindow"],["func", "Renderer_SwapBuffers"],[ImVector_ImGuiPlatformMonitor, "Monitors"],[ImVector_ImGuiViewportPtr, "Viewports"]]
}
class ImGuiPlatformMonitor extends ctypes.struct 
{
   static fields := [[ImVec2, "MainPos"],[ImVec2, "MainSize"],[ImVec2, "WorkPos"],[ImVec2, "WorkSize"],["float", "DpiScale"],["void*", "PlatformHandle"]]
}
class ImGuiPlatformImeData extends ctypes.struct 
{
   static fields := [["bool", "WantVisible"],[ImVec2, "InputPos"],["float", "InputLineHeight"]]
}
class ImVec1 extends ctypes.struct 
{
   static fields := [["float", "x"]]
}
class ImVec2ih extends ctypes.struct 
{
   static fields := [["short", "x"],["short", "y"]]
}
class ImRect extends ctypes.struct 
{
   static fields := [[ImVec2, "Min"],[ImVec2, "Max"]]
}
class ImBitVector extends ctypes.struct 
{
   static fields := [[ImVector_ImU32, "Storage"]]
}
class ImGuiTextIndex extends ctypes.struct 
{
   static fields := [[ImVector_int, "LineOffsets"],["int", "EndOffset"]]
}
class ImDrawListSharedData extends ctypes.struct 
{
   static fields := [[ImVec2, "TexUvWhitePixel"],[ImFont, "*Font"],["float", "FontSize"],["float", "CurveTessellationTol"],["float", "CircleSegmentMaxError"],[ImVec4, "ClipRectFullscreen"],["ImDrawListFlags", "InitialFlags"],[ImVector_ImVec2, "TempBuffer"],[ImVec2, "ArcFastVtx[48]"],["float", "ArcFastRadiusCutoff"],["ImU8", "CircleSegmentCounts[64]"],[ImVec4, "*TexUvLines"]]
}
class ImDrawDataBuilder extends ctypes.struct 
{
   static fields := [[ImVector_ImDrawListPtr, "*Layers[2]"],[ImVector_ImDrawListPtr, "LayerData1"]]
}
class ImGuiDataVarInfo extends ctypes.struct 
{
   static fields := [["ImGuiDataType", "Type"],["ImU32", "Count"],["ImU32", "Offset"]]
}
class ImGuiDataTypeTempStorage extends ctypes.struct 
{
   static fields := [["ImU8", "Data[8]"]]
}
class ImGuiDataTypeInfo extends ctypes.struct 
{
   static fields := [["size_t", "Size"],["char*", "Name"],["char*", "PrintFmt"],["char*", "ScanFmt"]]
}
class ImGuiColorMod extends ctypes.struct 
{
   static fields := [["ImGuiCol", "Col"],[ImVec4, "BackupValue"]]
}
class ImGuiStyleMod extends ctypes.struct 
{
   static fields := [["ImGuiStyleVar", "VarIdx"],[ctypes.struct("union { int BackupInt[2]; float BackupFloat[2];}"),"union"]]
}
class ImGuiComboPreviewData extends ctypes.struct 
{
   static fields := [[ImRect, "PreviewRect"],[ImVec2, "BackupCursorPos"],[ImVec2, "BackupCursorMaxPos"],[ImVec2, "BackupCursorPosPrevLine"],["float", "BackupPrevLineTextBaseOffset"],["ImGuiLayoutType", "BackupLayout"]]
}
class ImGuiGroupData extends ctypes.struct 
{
   static fields := [["ImGuiID", "WindowID"],[ImVec2, "BackupCursorPos"],[ImVec2, "BackupCursorMaxPos"],[ImVec1, "BackupIndent"],[ImVec1, "BackupGroupOffset"],[ImVec2, "BackupCurrLineSize"],["float", "BackupCurrLineTextBaseOffset"],["ImGuiID", "BackupActiveIdIsAlive"],["bool", "BackupActiveIdPreviousFrameIsAlive"],["bool", "BackupHoveredIdIsAlive"],["bool", "EmitItem"]]
}
class ImGuiMenuColumns extends ctypes.struct 
{
   static fields := [["ImU32", "TotalWidth"],["ImU32", "NextTotalWidth"],["ImU16", "Spacing"],["ImU16", "OffsetIcon"],["ImU16", "OffsetLabel"],["ImU16", "OffsetShortcut"],["ImU16", "OffsetMark"],["ImU16", "Widths[4]"]]
}
class ImGuiInputTextDeactivatedState extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],[ImVector_char, "TextA"]]
}
class ImGuiInputTextState extends ctypes.struct 
{
   static fields := [[ImGuiContext, "*Ctx"],["ImGuiID", "ID"],["int", "CurLenW"],["int", "CurLenA"],[ImVector_ImWchar, "TextW"],[ImVector_char, "TextA"],[ImVector_char, "InitialTextA"],["bool", "TextAIsValid"],["int", "BufCapacityA"],["float", "ScrollX"],[STB_TexteditState, "Stb"],["float", "CursorAnim"],["bool", "CursorFollow"],["bool", "SelectedAllMouseLock"],["bool", "Edited"],["ImGuiInputTextFlags", "Flags"]]
}
class ImGuiPopupData extends ctypes.struct 
{
   static fields := [["ImGuiID", "PopupId"],[ImGuiWindow, "*Window"],[ImGuiWindow, "*BackupNavWindow"],["int", "ParentNavLayer"],["int", "OpenFrameCount"],["ImGuiID", "OpenParentId"],[ImVec2, "OpenPopupPos"],[ImVec2, "OpenMousePos"]]
}
class ImGuiNextWindowData extends ctypes.struct 
{
   static fields := [["ImGuiNextWindowDataFlags", "Flags"],["ImGuiCond", "PosCond"],["ImGuiCond", "SizeCond"],["ImGuiCond", "CollapsedCond"],["ImGuiCond", "DockCond"],[ImVec2, "PosVal"],[ImVec2, "PosPivotVal"],[ImVec2, "SizeVal"],[ImVec2, "ContentSizeVal"],[ImVec2, "ScrollVal"],["bool", "PosUndock"],["bool", "CollapsedVal"],[ImRect, "SizeConstraintRect"],["ImGuiSizeCallback", "SizeCallback"],["void*", "SizeCallbackUserData"],["float", "BgAlphaVal"],["ImGuiID", "ViewportId"],["ImGuiID", "DockId"],[ImGuiWindowClass, "WindowClass"],[ImVec2, "MenuBarOffsetMinVal"]]
}
class ImGuiNextItemData extends ctypes.struct 
{
   static fields := [["ImGuiNextItemDataFlags", "Flags"],["ImGuiItemFlags", "ItemFlags"],["float", "Width"],["ImGuiID", "FocusScopeId"],["ImGuiCond", "OpenCond"],["bool", "OpenVal"]]
}
class ImGuiLastItemData extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImGuiItemFlags", "InFlags"],["ImGuiItemStatusFlags", "StatusFlags"],[ImRect, "Rect"],[ImRect, "NavRect"],[ImRect, "DisplayRect"]]
}
class ImGuiNavTreeNodeData extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImGuiItemFlags", "InFlags"],[ImRect, "NavRect"]]
}
class ImGuiStackSizes extends ctypes.struct 
{
   static fields := [["short", "SizeOfIDStack"],["short", "SizeOfColorStack"],["short", "SizeOfStyleVarStack"],["short", "SizeOfFontStack"],["short", "SizeOfFocusScopeStack"],["short", "SizeOfGroupStack"],["short", "SizeOfItemFlagsStack"],["short", "SizeOfBeginPopupStack"],["short", "SizeOfDisabledStack"]]
}
class ImGuiWindowStackData extends ctypes.struct 
{
   static fields := [[ImGuiWindow, "*Window"],[ImGuiLastItemData, "ParentLastItemDataBackup"],[ImGuiStackSizes, "StackSizesOnBegin"]]
}
class ImGuiShrinkWidthItem extends ctypes.struct 
{
   static fields := [["int", "Index"],["float", "Width"],["float", "InitialWidth"]]
}
class ImGuiPtrOrIndex extends ctypes.struct 
{
   static fields := [["void*", "Ptr"],["int", "Index"]]
}
class ImGuiInputEventMousePos extends ctypes.struct 
{
   static fields := [["float", "PosX"],["float", "PosY"],["ImGuiMouseSource", "MouseSource"]]
}
class ImGuiInputEventMouseWheel extends ctypes.struct 
{
   static fields := [["float", "WheelX"],["float", "WheelY"],["ImGuiMouseSource", "MouseSource"]]
}
class ImGuiInputEventMouseButton extends ctypes.struct 
{
   static fields := [["int", "Button"],["bool", "Down"],["ImGuiMouseSource", "MouseSource"]]
}
class ImGuiInputEventMouseViewport extends ctypes.struct 
{
   static fields := [["ImGuiID", "HoveredViewportID"]]
}
class ImGuiInputEventKey extends ctypes.struct 
{
   static fields := [["ImGuiKey", "Key"],["bool", "Down"],["float", "AnalogValue"]]
}
class ImGuiInputEventText extends ctypes.struct 
{
   static fields := [["unsigned int", "Char"]]
}
class ImGuiInputEventAppFocused extends ctypes.struct 
{
   static fields := [["bool", "Focused"]]
}
class ImGuiInputEvent extends ctypes.struct 
{
   static fields := [["ImGuiInputEventType", "Type"],["ImGuiInputSource", "Source"],["ImU32", "EventId"],[ctypes.struct("union { ImGuiInputEventMousePos MousePos; ImGuiInputEventMouseWheel MouseWheel; ImGuiInputEventMouseButton MouseButton; ImGuiInputEventMouseViewport MouseViewport; ImGuiInputEventKey Key; ImGuiInputEventText Text; ImGuiInputEventAppFocused AppFocused;}"),"union"],["bool", "AddedByTestEngine"]]
}
class ImGuiKeyRoutingData extends ctypes.struct 
{
   static fields := [["ImGuiKeyRoutingIndex", "NextEntryIndex"],["ImU16", "Mods"],["ImU8", "RoutingNextScore"],["ImGuiID", "RoutingCurr"],["ImGuiID", "RoutingNext"]]
}
class ImGuiKeyRoutingTable extends ctypes.struct 
{
   static fields := [["ImGuiKeyRoutingIndex", "Index[140]"],[ImVector_ImGuiKeyRoutingData, "Entries"],[ImVector_ImGuiKeyRoutingData, "EntriesNext"]]
}
class ImGuiKeyOwnerData extends ctypes.struct 
{
   static fields := [["ImGuiID", "OwnerCurr"],["ImGuiID", "OwnerNext"],["bool", "LockThisFrame"],["bool", "LockUntilRelease"]]
}
class ImGuiListClipperRange extends ctypes.struct 
{
   static fields := [["int", "Min"],["int", "Max"],["bool", "PosToIndexConvert"],["ImS8", "PosToIndexOffsetMin"],["ImS8", "PosToIndexOffsetMax"]]
}
class ImGuiListClipperData extends ctypes.struct 
{
   static fields := [[ImGuiListClipper, "*ListClipper"],["float", "LossynessOffset"],["int", "StepNo"],["int", "ItemsFrozen"],[ImVector_ImGuiListClipperRange, "Ranges"]]
}
class ImGuiNavItemData extends ctypes.struct 
{
   static fields := [[ImGuiWindow, "*Window"],["ImGuiID", "ID"],["ImGuiID", "FocusScopeId"],[ImRect, "RectRel"],["ImGuiItemFlags", "InFlags"],["float", "DistBox"],["float", "DistCenter"],["float", "DistAxial"]]
}
class ImGuiOldColumnData extends ctypes.struct 
{
   static fields := [["float", "OffsetNorm"],["float", "OffsetNormBeforeResize"],["ImGuiOldColumnFlags", "Flags"],[ImRect, "ClipRect"]]
}
class ImGuiOldColumns extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImGuiOldColumnFlags", "Flags"],["bool", "IsFirstFrame"],["bool", "IsBeingResized"],["int", "Current"],["int", "Count"],["float", "OffMinX"],["float", "OffMaxX"],["float", "LineMinY"],["float", "LineMaxY"],["float", "HostCursorPosY"],["float", "HostCursorMaxPosX"],[ImRect, "HostInitialClipRect"],[ImRect, "HostBackupClipRect"],[ImRect, "HostBackupParentWorkRect"],[ImVector_ImGuiOldColumnData, "Columns"],[ImDrawListSplitter, "Splitter"]]
}
class ImGuiDockNode extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImGuiDockNodeFlags", "SharedFlags"],["ImGuiDockNodeFlags", "LocalFlags"],["ImGuiDockNodeFlags", "LocalFlagsInWindows"],["ImGuiDockNodeFlags", "MergedFlags"],["ImGuiDockNodeState", "State"],[ImGuiDockNode, "*ParentNode"],[ImGuiDockNode, "*ChildNodes[2]"],[ImVector_ImGuiWindowPtr, "Windows"],[ImGuiTabBar, "*TabBar"],[ImVec2, "Pos"],[ImVec2, "Size"],[ImVec2, "SizeRef"],["ImGuiAxis", "SplitAxis"],[ImGuiWindowClass, "WindowClass"],["ImU32", "LastBgColor"],[ImGuiWindow, "*HostWindow"],[ImGuiWindow, "*VisibleWindow"],[ImGuiDockNode, "*CentralNode"],[ImGuiDockNode, "*OnlyNodeWithWindows"],["int", "CountNodeWithWindows"],["int", "LastFrameAlive"],["int", "LastFrameActive"],["int", "LastFrameFocused"],["ImGuiID", "LastFocusedNodeId"],["ImGuiID", "SelectedTabId"],["ImGuiID", "WantCloseTabId"],["ImGuiID", "RefViewportId"],["ImGuiDataAuthority", "AuthorityForPos"],["ImGuiDataAuthority", "AuthorityForSize"],["ImGuiDataAuthority", "AuthorityForViewport"],["bool", "IsVisible"],["bool", "IsFocused"],["bool", "IsBgDrawnThisFrame"],["bool", "HasCloseButton"],["bool", "HasWindowMenuButton"],["bool", "HasCentralNodeChild"],["bool", "WantCloseAll"],["bool", "WantLockSizeOnce"],["bool", "WantMouseMove"],["bool", "WantHiddenTabBarUpdate"],["bool", "WantHiddenTabBarToggle"]]
}
class ImGuiWindowDockStyle extends ctypes.struct 
{
   static fields := [["ImU32", "Colors[6]"]]
}
class ImGuiDockContext extends ctypes.struct 
{
   static fields := [[ImGuiStorage, "Nodes"],[ImVector_ImGuiDockRequest, "Requests"],[ImVector_ImGuiDockNodeSettings, "NodesSettings"],["bool", "WantFullRebuild"]]
}
class ImGuiViewportP extends ctypes.struct 
{
   static fields := [[ImGuiViewport, "_ImGuiViewport"],[ImGuiWindow, "*Window"],["int", "Idx"],["int", "LastFrameActive"],["int", "LastFocusedStampCount"],["ImGuiID", "LastNameHash"],[ImVec2, "LastPos"],["float", "Alpha"],["float", "LastAlpha"],["bool", "LastFocusedHadNavWindow"],["short", "PlatformMonitor"],["int", "BgFgDrawListsLastFrame[2]"],[ImDrawList, "*BgFgDrawLists[2]"],[ImDrawData, "DrawDataP"],[ImDrawDataBuilder, "DrawDataBuilder"],[ImVec2, "LastPlatformPos"],[ImVec2, "LastPlatformSize"],[ImVec2, "LastRendererSize"],[ImVec2, "WorkOffsetMin"],[ImVec2, "WorkOffsetMax"],[ImVec2, "BuildWorkOffsetMin"],[ImVec2, "BuildWorkOffsetMax"]]
}
class ImGuiWindowSettings extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],[ImVec2ih, "Pos"],[ImVec2ih, "Size"],[ImVec2ih, "ViewportPos"],["ImGuiID", "ViewportId"],["ImGuiID", "DockId"],["ImGuiID", "ClassId"],["short", "DockOrder"],["bool", "Collapsed"],["bool", "WantApply"],["bool", "WantDelete"]]
}
class ImGuiSettingsHandler extends ctypes.struct 
{
   static fields := [["char*", "TypeName"],["ImGuiID", "TypeHash"],["func", "ClearAllFn"],["func", "ReadInitFn"],["func", "ReadOpenFn"],["func", "ReadLineFn"],["func", "ApplyAllFn"],["func", "WriteAllFn"],["void*", "UserData"]]
}
class ImGuiLocEntry extends ctypes.struct 
{
   static fields := [["ImGuiLocKey", "Key"],["char*", "Text"]]
}
class ImGuiMetricsConfig extends ctypes.struct 
{
   static fields := [["bool", "ShowDebugLog"],["bool", "ShowStackTool"],["bool", "ShowWindowsRects"],["bool", "ShowWindowsBeginOrder"],["bool", "ShowTablesRects"],["bool", "ShowDrawCmdMesh"],["bool", "ShowDrawCmdBoundingBoxes"],["bool", "ShowAtlasTintedWithTextColor"],["bool", "ShowDockingNodes"],["int", "ShowWindowsRectsType"],["int", "ShowTablesRectsType"]]
}
class ImGuiStackLevelInfo extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImS8", "QueryFrameCount"],["bool", "QuerySuccess"],["ImGuiDataType", "DataType"],["char", "Desc[57]"]]
}
class ImGuiStackTool extends ctypes.struct 
{
   static fields := [["int", "LastActiveFrame"],["int", "StackLevel"],["ImGuiID", "QueryId"],[ImVector_ImGuiStackLevelInfo, "Results"],["bool", "CopyToClipboardOnCtrlC"],["float", "CopyToClipboardLastTime"]]
}
class ImGuiContextHook extends ctypes.struct 
{
   static fields := [["ImGuiID", "HookId"],["ImGuiContextHookType", "Type"],["ImGuiID", "Owner"],["ImGuiContextHookCallback", "Callback"],["void*", "UserData"]]
}
class ImGuiContext extends ctypes.struct  
{
}
ImGuiContext.fields := [["bool", "Initialized"],["bool", "FontAtlasOwnedByContext"],[ImGuiIO, "IO"],[ImGuiPlatformIO, "PlatformIO"],[ImGuiStyle, "Style"],["ImGuiConfigFlags", "ConfigFlagsCurrFrame"],["ImGuiConfigFlags", "ConfigFlagsLastFrame"],[ImFont, "*Font"],["float", "FontSize"],["float", "FontBaseSize"],[ImDrawListSharedData, "DrawListSharedData"],["double", "Time"],["int", "FrameCount"],["int", "FrameCountEnded"],["int", "FrameCountPlatformEnded"],["int", "FrameCountRendered"],["bool", "WithinFrameScope"],["bool", "WithinFrameScopeWithImplicitWindow"],["bool", "WithinEndChild"],["bool", "GcCompactAll"],["bool", "TestEngineHookItems"],["void*", "TestEngine"],[ImVector_ImGuiInputEvent, "InputEventsQueue"],[ImVector_ImGuiInputEvent, "InputEventsTrail"],["ImGuiMouseSource", "InputEventsNextMouseSource"],["ImU32", "InputEventsNextEventId"],[ImVector_ImGuiWindowPtr, "Windows"],[ImVector_ImGuiWindowPtr, "WindowsFocusOrder"],[ImVector_ImGuiWindowPtr, "WindowsTempSortBuffer"],[ImVector_ImGuiWindowStackData, "CurrentWindowStack"],[ImGuiStorage, "WindowsById"],["int", "WindowsActiveCount"],[ImVec2, "WindowsHoverPadding"],[ImGuiWindow, "*CurrentWindow"],[ImGuiWindow, "*HoveredWindow"],[ImGuiWindow, "*HoveredWindowUnderMovingWindow"],[ImGuiWindow, "*MovingWindow"],[ImGuiWindow, "*WheelingWindow"],[ImVec2, "WheelingWindowRefMousePos"],["int", "WheelingWindowStartFrame"],["float", "WheelingWindowReleaseTimer"],[ImVec2, "WheelingWindowWheelRemainder"],[ImVec2, "WheelingAxisAvg"],["ImGuiID", "DebugHookIdInfo"],["ImGuiID", "HoveredId"],["ImGuiID", "HoveredIdPreviousFrame"],["bool", "HoveredIdAllowOverlap"],["bool", "HoveredIdDisabled"],["float", "HoveredIdTimer"],["float", "HoveredIdNotActiveTimer"],["ImGuiID", "ActiveId"],["ImGuiID", "ActiveIdIsAlive"],["float", "ActiveIdTimer"],["bool", "ActiveIdIsJustActivated"],["bool", "ActiveIdAllowOverlap"],["bool", "ActiveIdNoClearOnFocusLoss"],["bool", "ActiveIdHasBeenPressedBefore"],["bool", "ActiveIdHasBeenEditedBefore"],["bool", "ActiveIdHasBeenEditedThisFrame"],[ImVec2, "ActiveIdClickOffset"],[ImGuiWindow, "*ActiveIdWindow"],["ImGuiInputSource", "ActiveIdSource"],["int", "ActiveIdMouseButton"],["ImGuiID", "ActiveIdPreviousFrame"],["bool", "ActiveIdPreviousFrameIsAlive"],["bool", "ActiveIdPreviousFrameHasBeenEditedBefore"],[ImGuiWindow, "*ActiveIdPreviousFrameWindow"],["ImGuiID", "LastActiveId"],["float", "LastActiveIdTimer"],[ImGuiKeyOwnerData, "KeysOwnerData[140]"],[ImGuiKeyRoutingTable, "KeysRoutingTable"],["ImU32", "ActiveIdUsingNavDirMask"],["bool", "ActiveIdUsingAllKeyboardKeys"],["ImU32", "ActiveIdUsingNavInputMask"],["ImGuiID", "CurrentFocusScopeId"],["ImGuiItemFlags", "CurrentItemFlags"],["ImGuiID", "DebugLocateId"],[ImGuiNextItemData, "NextItemData"],[ImGuiLastItemData, "LastItemData"],[ImGuiNextWindowData, "NextWindowData"],[ImVector_ImGuiColorMod, "ColorStack"],[ImVector_ImGuiStyleMod, "StyleVarStack"],[ImVector_ImFontPtr, "FontStack"],[ImVector_ImGuiID, "FocusScopeStack"],[ImVector_ImGuiItemFlags, "ItemFlagsStack"],[ImVector_ImGuiGroupData, "GroupStack"],[ImVector_ImGuiPopupData, "OpenPopupStack"],[ImVector_ImGuiPopupData, "BeginPopupStack"],[ImVector_ImGuiNavTreeNodeData, "NavTreeNodeStack"],["int", "BeginMenuCount"],[ImVector_ImGuiViewportPPtr, "Viewports"],["float", "CurrentDpiScale"],[ImGuiViewportP, "*CurrentViewport"],[ImGuiViewportP, "*MouseViewport"],[ImGuiViewportP, "*MouseLastHoveredViewport"],["ImGuiID", "PlatformLastFocusedViewportId"],[ImGuiPlatformMonitor, "FallbackMonitor"],["int", "ViewportCreatedCount"],["int", "PlatformWindowsCreatedCount"],["int", "ViewportFocusedStampCount"],[ImGuiWindow, "*NavWindow"],["ImGuiID", "NavId"],["ImGuiID", "NavFocusScopeId"],["ImGuiID", "NavActivateId"],["ImGuiID", "NavActivateDownId"],["ImGuiID", "NavActivatePressedId"],["ImGuiActivateFlags", "NavActivateFlags"],["ImGuiID", "NavJustMovedToId"],["ImGuiID", "NavJustMovedToFocusScopeId"],["ImGuiKeyChord", "NavJustMovedToKeyMods"],["ImGuiID", "NavNextActivateId"],["ImGuiActivateFlags", "NavNextActivateFlags"],["ImGuiInputSource", "NavInputSource"],["ImGuiNavLayer", "NavLayer"],["bool", "NavIdIsAlive"],["bool", "NavMousePosDirty"],["bool", "NavDisableHighlight"],["bool", "NavDisableMouseHover"],["bool", "NavAnyRequest"],["bool", "NavInitRequest"],["bool", "NavInitRequestFromMove"],[ImGuiNavItemData, "NavInitResult"],["bool", "NavMoveSubmitted"],["bool", "NavMoveScoringItems"],["bool", "NavMoveForwardToNextFrame"],["ImGuiNavMoveFlags", "NavMoveFlags"],["ImGuiScrollFlags", "NavMoveScrollFlags"],["ImGuiKeyChord", "NavMoveKeyMods"],["ImGuiDir", "NavMoveDir"],["ImGuiDir", "NavMoveDirForDebug"],["ImGuiDir", "NavMoveClipDir"],[ImRect, "NavScoringRect"],[ImRect, "NavScoringNoClipRect"],["int", "NavScoringDebugCount"],["int", "NavTabbingDir"],["int", "NavTabbingCounter"],[ImGuiNavItemData, "NavMoveResultLocal"],[ImGuiNavItemData, "NavMoveResultLocalVisible"],[ImGuiNavItemData, "NavMoveResultOther"],[ImGuiNavItemData, "NavTabbingResultFirst"],["ImGuiKeyChord", "ConfigNavWindowingKeyNext"],["ImGuiKeyChord", "ConfigNavWindowingKeyPrev"],[ImGuiWindow, "*NavWindowingTarget"],[ImGuiWindow, "*NavWindowingTargetAnim"],[ImGuiWindow, "*NavWindowingListWindow"],["float", "NavWindowingTimer"],["float", "NavWindowingHighlightAlpha"],["bool", "NavWindowingToggleLayer"],[ImVec2, "NavWindowingAccumDeltaPos"],[ImVec2, "NavWindowingAccumDeltaSize"],["float", "DimBgRatio"],["bool", "DragDropActive"],["bool", "DragDropWithinSource"],["bool", "DragDropWithinTarget"],["ImGuiDragDropFlags", "DragDropSourceFlags"],["int", "DragDropSourceFrameCount"],["int", "DragDropMouseButton"],[ImGuiPayload, "DragDropPayload"],[ImRect, "DragDropTargetRect"],["ImGuiID", "DragDropTargetId"],["ImGuiDragDropFlags", "DragDropAcceptFlags"],["float", "DragDropAcceptIdCurrRectSurface"],["ImGuiID", "DragDropAcceptIdCurr"],["ImGuiID", "DragDropAcceptIdPrev"],["int", "DragDropAcceptFrameCount"],["ImGuiID", "DragDropHoldJustPressedId"],[ImVector_unsigned_char, "DragDropPayloadBufHeap"],["unsigned char", "DragDropPayloadBufLocal[16]"],["int", "ClipperTempDataStacked"],[ImVector_ImGuiListClipperData, "ClipperTempData"],[ImGuiTable, "*CurrentTable"],["int", "TablesTempDataStacked"],[ImVector_ImGuiTableTempData, "TablesTempData"],["ImPool_ImGuiTable", "Tables"],[ImVector_float, "TablesLastTimeActive"],[ImVector_ImDrawChannel, "DrawChannelsTempMergeBuffer"],[ImGuiTabBar, "*CurrentTabBar"],["ImPool_ImGuiTabBar", "TabBars"],[ImVector_ImGuiPtrOrIndex, "CurrentTabBarStack"],[ImVector_ImGuiShrinkWidthItem, "ShrinkWidthBuffer"],["ImGuiID", "HoverItemDelayId"],["ImGuiID", "HoverItemDelayIdPreviousFrame"],["float", "HoverItemDelayTimer"],["float", "HoverItemDelayClearTimer"],["ImGuiID", "HoverItemUnlockedStationaryId"],["ImGuiID", "HoverWindowUnlockedStationaryId"],["ImGuiMouseCursor", "MouseCursor"],["float", "MouseStationaryTimer"],[ImVec2, "MouseLastValidPos"],[ImGuiInputTextState, "InputTextState"],[ImGuiInputTextDeactivatedState, "InputTextDeactivatedState"],[ImFont, "InputTextPasswordFont"],["ImGuiID", "TempInputId"],["ImGuiColorEditFlags", "ColorEditOptions"],["ImGuiID", "ColorEditCurrentID"],["ImGuiID", "ColorEditSavedID"],["float", "ColorEditSavedHue"],["float", "ColorEditSavedSat"],["ImU32", "ColorEditSavedColor"],[ImVec4, "ColorPickerRef"],[ImGuiComboPreviewData, "ComboPreviewData"],["float", "SliderGrabClickOffset"],["float", "SliderCurrentAccum"],["bool", "SliderCurrentAccumDirty"],["bool", "DragCurrentAccumDirty"],["float", "DragCurrentAccum"],["float", "DragSpeedDefaultRatio"],["float", "ScrollbarClickDeltaToGrabCenter"],["float", "DisabledAlphaBackup"],["short", "DisabledStackSize"],["short", "LockMarkEdited"],["short", "TooltipOverrideCount"],[ImVector_char, "ClipboardHandlerData"],[ImVector_ImGuiID, "MenusIdSubmittedThisFrame"],[ImGuiPlatformImeData, "PlatformImeData"],[ImGuiPlatformImeData, "PlatformImeDataPrev"],["ImGuiID", "PlatformImeViewport"],[ImGuiDockContext, "DockContext"],["func", "DockNodeWindowMenuHandler"],["bool", "SettingsLoaded"],["float", "SettingsDirtyTimer"],[ImGuiTextBuffer, "SettingsIniData"],[ImVector_ImGuiSettingsHandler, "SettingsHandlers"],["ImChunkStream_ImGuiWindowSettings", "SettingsWindows"],["ImChunkStream_ImGuiTableSettings", "SettingsTables"],[ImVector_ImGuiContextHook, "Hooks"],["ImGuiID", "HookIdNext"],["char*", "LocalizationTable[10]"],["bool", "LogEnabled"],["ImGuiLogType", "LogType"],["ImFileHandle", "LogFile"],[ImGuiTextBuffer, "LogBuffer"],["char*", "LogNextPrefix"],["char*", "LogNextSuffix"],["float", "LogLinePosY"],["bool", "LogLineFirstItem"],["int", "LogDepthRef"],["int", "LogDepthToExpand"],["int", "LogDepthToExpandDefault"],["ImGuiDebugLogFlags", "DebugLogFlags"],[ImGuiTextBuffer, "DebugLogBuf"],[ImGuiTextIndex, "DebugLogIndex"],["ImU8", "DebugLogClipperAutoDisableFrames"],["ImU8", "DebugLocateFrames"],["ImS8", "DebugBeginReturnValueCullDepth"],["bool", "DebugItemPickerActive"],["ImU8", "DebugItemPickerMouseButton"],["ImGuiID", "DebugItemPickerBreakId"],[ImGuiMetricsConfig, "DebugMetricsConfig"],[ImGuiStackTool, "DebugStackTool"],[ImGuiDockNode, "*DebugHoveredDockNode"],["float", "FramerateSecPerFrame[60]"],["int", "FramerateSecPerFrameIdx"],["int", "FramerateSecPerFrameCount"],["float", "FramerateSecPerFrameAccum"],["int", "WantCaptureMouseNextFrame"],["int", "WantCaptureKeyboardNextFrame"],["int", "WantTextInputNextFrame"],[ImVector_char, "TempBuffer"]]
class ImGuiWindowTempData extends ctypes.struct 
{
   static fields := [[ImVec2, "CursorPos"],[ImVec2, "CursorPosPrevLine"],[ImVec2, "CursorStartPos"],[ImVec2, "CursorMaxPos"],[ImVec2, "IdealMaxPos"],[ImVec2, "CurrLineSize"],[ImVec2, "PrevLineSize"],["float", "CurrLineTextBaseOffset"],["float", "PrevLineTextBaseOffset"],["bool", "IsSameLine"],["bool", "IsSetPos"],[ImVec1, "Indent"],[ImVec1, "ColumnsOffset"],[ImVec1, "GroupOffset"],[ImVec2, "CursorStartPosLossyness"],["ImGuiNavLayer", "NavLayerCurrent"],["short", "NavLayersActiveMask"],["short", "NavLayersActiveMaskNext"],["bool", "NavIsScrollPushableX"],["bool", "NavHideHighlightOneFrame"],["bool", "NavWindowHasScrollY"],["bool", "MenuBarAppending"],[ImVec2, "MenuBarOffset"],[ImGuiMenuColumns, "MenuColumns"],["int", "TreeDepth"],["ImU32", "TreeJumpToParentOnPopMask"],[ImVector_ImGuiWindowPtr, "ChildWindows"],[ImGuiStorage, "*StateStorage"],[ImGuiOldColumns, "*CurrentColumns"],["int", "CurrentTableIdx"],["ImGuiLayoutType", "LayoutType"],["ImGuiLayoutType", "ParentLayoutType"],["float", "ItemWidth"],["float", "TextWrapPos"],[ImVector_float, "ItemWidthStack"],[ImVector_float, "TextWrapPosStack"]]
}
class ImGuiWindow extends ctypes.struct 
{
   static fields := [[ImGuiContext, "*Ctx"],["char*", "Name"],["ImGuiID", "ID"],["ImGuiWindowFlags", "Flags"],["ImGuiWindowFlags", "FlagsPreviousFrame"],[ImGuiWindowClass, "WindowClass"],[ImGuiViewportP, "*Viewport"],["ImGuiID", "ViewportId"],[ImVec2, "ViewportPos"],["int", "ViewportAllowPlatformMonitorExtend"],[ImVec2, "Pos"],[ImVec2, "Size"],[ImVec2, "SizeFull"],[ImVec2, "ContentSize"],[ImVec2, "ContentSizeIdeal"],[ImVec2, "ContentSizeExplicit"],[ImVec2, "WindowPadding"],["float", "WindowRounding"],["float", "WindowBorderSize"],["float", "DecoOuterSizeX1"],["float", "DecoOuterSizeY1"],["float", "DecoOuterSizeX2"],["float", "DecoOuterSizeY2"],["float", "DecoInnerSizeX1"],["float", "DecoInnerSizeY1"],["int", "NameBufLen"],["ImGuiID", "MoveId"],["ImGuiID", "TabId"],["ImGuiID", "ChildId"],[ImVec2, "Scroll"],[ImVec2, "ScrollMax"],[ImVec2, "ScrollTarget"],[ImVec2, "ScrollTargetCenterRatio"],[ImVec2, "ScrollTargetEdgeSnapDist"],[ImVec2, "ScrollbarSizes"],["bool", "ScrollbarX"],["bool", "ScrollbarY"],["bool", "ViewportOwned"],["bool", "Active"],["bool", "WasActive"],["bool", "WriteAccessed"],["bool", "Collapsed"],["bool", "WantCollapseToggle"],["bool", "SkipItems"],["bool", "Appearing"],["bool", "Hidden"],["bool", "IsFallbackWindow"],["bool", "IsExplicitChild"],["bool", "HasCloseButton"],["signed char", "ResizeBorderHeld"],["short", "BeginCount"],["short", "BeginCountPreviousFrame"],["short", "BeginOrderWithinParent"],["short", "BeginOrderWithinContext"],["short", "FocusOrder"],["ImGuiID", "PopupId"],["ImS8", "AutoFitFramesX"],["ImS8", "AutoFitFramesY"],["ImS8", "AutoFitChildAxises"],["bool", "AutoFitOnlyGrows"],["ImGuiDir", "AutoPosLastDirection"],["ImS8", "HiddenFramesCanSkipItems"],["ImS8", "HiddenFramesCannotSkipItems"],["ImS8", "HiddenFramesForRenderOnly"],["ImS8", "DisableInputsFrames"],["ImGuiCond", "SetWindowPosAllowFlags"],["ImGuiCond", "SetWindowSizeAllowFlags"],["ImGuiCond", "SetWindowCollapsedAllowFlags"],["ImGuiCond", "SetWindowDockAllowFlags"],[ImVec2, "SetWindowPosVal"],[ImVec2, "SetWindowPosPivot"],[ImVector_ImGuiID, "IDStack"],[ImGuiWindowTempData, "DC"],[ImRect, "OuterRectClipped"],[ImRect, "InnerRect"],[ImRect, "InnerClipRect"],[ImRect, "WorkRect"],[ImRect, "ParentWorkRect"],[ImRect, "ClipRect"],[ImRect, "ContentRegionRect"],[ImVec2ih, "HitTestHoleSize"],[ImVec2ih, "HitTestHoleOffset"],["int", "LastFrameActive"],["int", "LastFrameJustFocused"],["float", "LastTimeActive"],["float", "ItemWidthDefault"],[ImGuiStorage, "StateStorage"],[ImVector_ImGuiOldColumns, "ColumnsStorage"],["float", "FontWindowScale"],["float", "FontDpiScale"],["int", "SettingsOffset"],[ImDrawList, "*DrawList"],[ImDrawList, "DrawListInst"],[ImGuiWindow, "*ParentWindow"],[ImGuiWindow, "*ParentWindowInBeginStack"],[ImGuiWindow, "*RootWindow"],[ImGuiWindow, "*RootWindowPopupTree"],[ImGuiWindow, "*RootWindowDockTree"],[ImGuiWindow, "*RootWindowForTitleBarHighlight"],[ImGuiWindow, "*RootWindowForNav"],[ImGuiWindow, "*NavLastChildNavWindow"],["ImGuiID", "NavLastIds[2]"],[ImRect, "NavRectRel[2]"],[ImVec2, "NavPreferredScoringPosRel[2]"],["ImGuiID", "NavRootFocusScopeId"],["int", "MemoryDrawListIdxCapacity"],["int", "MemoryDrawListVtxCapacity"],["bool", "MemoryCompacted"],["bool", "DockIsActive"],["bool", "DockNodeIsVisible"],["bool", "DockTabIsVisible"],["bool", "DockTabWantClose"],["short", "DockOrder"],[ImGuiWindowDockStyle, "DockStyle"],[ImGuiDockNode, "*DockNode"],[ImGuiDockNode, "*DockNodeAsHost"],["ImGuiID", "DockId"],["ImGuiItemStatusFlags", "DockTabItemStatusFlags"],[ImRect, "DockTabItemRect"]]
}
class ImGuiTabItem extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImGuiTabItemFlags", "Flags"],[ImGuiWindow, "*Window"],["int", "LastFrameVisible"],["int", "LastFrameSelected"],["float", "Offset"],["float", "Width"],["float", "ContentWidth"],["float", "RequestedWidth"],["ImS32", "NameOffset"],["ImS16", "BeginOrder"],["ImS16", "IndexDuringLayout"],["bool", "WantClose"]]
}
class ImGuiTabBar extends ctypes.struct 
{
   static fields := [[ImVector_ImGuiTabItem, "Tabs"],["ImGuiTabBarFlags", "Flags"],["ImGuiID", "ID"],["ImGuiID", "SelectedTabId"],["ImGuiID", "NextSelectedTabId"],["ImGuiID", "VisibleTabId"],["int", "CurrFrameVisible"],["int", "PrevFrameVisible"],[ImRect, "BarRect"],["float", "CurrTabsContentsHeight"],["float", "PrevTabsContentsHeight"],["float", "WidthAllTabs"],["float", "WidthAllTabsIdeal"],["float", "ScrollingAnim"],["float", "ScrollingTarget"],["float", "ScrollingTargetDistToVisibility"],["float", "ScrollingSpeed"],["float", "ScrollingRectMinX"],["float", "ScrollingRectMaxX"],["ImGuiID", "ReorderRequestTabId"],["ImS16", "ReorderRequestOffset"],["ImS8", "BeginCount"],["bool", "WantLayout"],["bool", "VisibleTabWasSubmitted"],["bool", "TabsAddedNew"],["ImS16", "TabsActiveCount"],["ImS16", "LastTabItemIdx"],["float", "ItemSpacingY"],[ImVec2, "FramePadding"],[ImVec2, "BackupCursorPos"],[ImGuiTextBuffer, "TabsNames"]]
}
class ImGuiTableColumn extends ctypes.struct 
{
   static fields := [["ImGuiTableColumnFlags", "Flags"],["float", "WidthGiven"],["float", "MinX"],["float", "MaxX"],["float", "WidthRequest"],["float", "WidthAuto"],["float", "StretchWeight"],["float", "InitStretchWeightOrWidth"],[ImRect, "ClipRect"],["ImGuiID", "UserID"],["float", "WorkMinX"],["float", "WorkMaxX"],["float", "ItemWidth"],["float", "ContentMaxXFrozen"],["float", "ContentMaxXUnfrozen"],["float", "ContentMaxXHeadersUsed"],["float", "ContentMaxXHeadersIdeal"],["ImS16", "NameOffset"],["ImGuiTableColumnIdx", "DisplayOrder"],["ImGuiTableColumnIdx", "IndexWithinEnabledSet"],["ImGuiTableColumnIdx", "PrevEnabledColumn"],["ImGuiTableColumnIdx", "NextEnabledColumn"],["ImGuiTableColumnIdx", "SortOrder"],["ImGuiTableDrawChannelIdx", "DrawChannelCurrent"],["ImGuiTableDrawChannelIdx", "DrawChannelFrozen"],["ImGuiTableDrawChannelIdx", "DrawChannelUnfrozen"],["bool", "IsEnabled"],["bool", "IsUserEnabled"],["bool", "IsUserEnabledNextFrame"],["bool", "IsVisibleX"],["bool", "IsVisibleY"],["bool", "IsRequestOutput"],["bool", "IsSkipItems"],["bool", "IsPreserveWidthAuto"],["ImS8", "NavLayerCurrent"],["ImU8", "AutoFitQueue"],["ImU8", "CannotSkipItemsQueue"],["ImU8", "SortDirection"],["ImU8", "SortDirectionsAvailCount"],["ImU8", "SortDirectionsAvailMask"],["ImU8", "SortDirectionsAvailList"]]
}
class ImGuiTableCellData extends ctypes.struct 
{
   static fields := [["ImU32", "BgColor"],["ImGuiTableColumnIdx", "Column"]]
}
class ImGuiTableInstanceData extends ctypes.struct 
{
   static fields := [["ImGuiID", "TableInstanceID"],["float", "LastOuterHeight"],["float", "LastFirstRowHeight"],["float", "LastFrozenHeight"],["int", "HoveredRowLast"],["int", "HoveredRowNext"]]
}
class ImGuiTable extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImGuiTableFlags", "Flags"],["void*", "RawData"],[ImGuiTableTempData, "*TempData"],["ImSpan_ImGuiTableColumn", "Columns"],["ImSpan_ImGuiTableColumnIdx", "DisplayOrderToIndex"],["ImSpan_ImGuiTableCellData", "RowCellData"],["ImBitArrayPtr", "EnabledMaskByDisplayOrder"],["ImBitArrayPtr", "EnabledMaskByIndex"],["ImBitArrayPtr", "VisibleMaskByIndex"],["ImGuiTableFlags", "SettingsLoadedFlags"],["int", "SettingsOffset"],["int", "LastFrameActive"],["int", "ColumnsCount"],["int", "CurrentRow"],["int", "CurrentColumn"],["ImS16", "InstanceCurrent"],["ImS16", "InstanceInteracted"],["float", "RowPosY1"],["float", "RowPosY2"],["float", "RowMinHeight"],["float", "RowCellPaddingY"],["float", "RowTextBaseline"],["float", "RowIndentOffsetX"],["ImGuiTableRowFlags", "RowFlags"],["ImGuiTableRowFlags", "LastRowFlags"],["int", "RowBgColorCounter"],["ImU32", "RowBgColor[2]"],["ImU32", "BorderColorStrong"],["ImU32", "BorderColorLight"],["float", "BorderX1"],["float", "BorderX2"],["float", "HostIndentX"],["float", "MinColumnWidth"],["float", "OuterPaddingX"],["float", "CellPaddingX"],["float", "CellSpacingX1"],["float", "CellSpacingX2"],["float", "InnerWidth"],["float", "ColumnsGivenWidth"],["float", "ColumnsAutoFitWidth"],["float", "ColumnsStretchSumWeights"],["float", "ResizedColumnNextWidth"],["float", "ResizeLockMinContentsX2"],["float", "RefScale"],[ImRect, "OuterRect"],[ImRect, "InnerRect"],[ImRect, "WorkRect"],[ImRect, "InnerClipRect"],[ImRect, "BgClipRect"],[ImRect, "Bg0ClipRectForDrawCmd"],[ImRect, "Bg2ClipRectForDrawCmd"],[ImRect, "HostClipRect"],[ImRect, "HostBackupInnerClipRect"],[ImGuiWindow, "*OuterWindow"],[ImGuiWindow, "*InnerWindow"],[ImGuiTextBuffer, "ColumnsNames"],[ImDrawListSplitter, "*DrawSplitter"],[ImGuiTableInstanceData, "InstanceDataFirst"],[ImVector_ImGuiTableInstanceData, "InstanceDataExtra"],[ImGuiTableColumnSortSpecs, "SortSpecsSingle"],[ImVector_ImGuiTableColumnSortSpecs, "SortSpecsMulti"],[ImGuiTableSortSpecs, "SortSpecs"],["ImGuiTableColumnIdx", "SortSpecsCount"],["ImGuiTableColumnIdx", "ColumnsEnabledCount"],["ImGuiTableColumnIdx", "ColumnsEnabledFixedCount"],["ImGuiTableColumnIdx", "DeclColumnsCount"],["ImGuiTableColumnIdx", "HoveredColumnBody"],["ImGuiTableColumnIdx", "HoveredColumnBorder"],["ImGuiTableColumnIdx", "AutoFitSingleColumn"],["ImGuiTableColumnIdx", "ResizedColumn"],["ImGuiTableColumnIdx", "LastResizedColumn"],["ImGuiTableColumnIdx", "HeldHeaderColumn"],["ImGuiTableColumnIdx", "ReorderColumn"],["ImGuiTableColumnIdx", "ReorderColumnDir"],["ImGuiTableColumnIdx", "LeftMostEnabledColumn"],["ImGuiTableColumnIdx", "RightMostEnabledColumn"],["ImGuiTableColumnIdx", "LeftMostStretchedColumn"],["ImGuiTableColumnIdx", "RightMostStretchedColumn"],["ImGuiTableColumnIdx", "ContextPopupColumn"],["ImGuiTableColumnIdx", "FreezeRowsRequest"],["ImGuiTableColumnIdx", "FreezeRowsCount"],["ImGuiTableColumnIdx", "FreezeColumnsRequest"],["ImGuiTableColumnIdx", "FreezeColumnsCount"],["ImGuiTableColumnIdx", "RowCellDataCurrent"],["ImGuiTableDrawChannelIdx", "DummyDrawChannel"],["ImGuiTableDrawChannelIdx", "Bg2DrawChannelCurrent"],["ImGuiTableDrawChannelIdx", "Bg2DrawChannelUnfrozen"],["bool", "IsLayoutLocked"],["bool", "IsInsideRow"],["bool", "IsInitializing"],["bool", "IsSortSpecsDirty"],["bool", "IsUsingHeaders"],["bool", "IsContextPopupOpen"],["bool", "IsSettingsRequestLoad"],["bool", "IsSettingsDirty"],["bool", "IsDefaultDisplayOrder"],["bool", "IsResetAllRequest"],["bool", "IsResetDisplayOrderRequest"],["bool", "IsUnfrozenRows"],["bool", "IsDefaultSizingPolicy"],["bool", "HasScrollbarYCurr"],["bool", "HasScrollbarYPrev"],["bool", "MemoryCompacted"],["bool", "HostSkipItems"]]
}
class ImGuiTableTempData extends ctypes.struct 
{
   static fields := [["int", "TableIndex"],["float", "LastTimeActive"],[ImVec2, "UserOuterSize"],[ImDrawListSplitter, "DrawSplitter"],[ImRect, "HostBackupWorkRect"],[ImRect, "HostBackupParentWorkRect"],[ImVec2, "HostBackupPrevLineSize"],[ImVec2, "HostBackupCurrLineSize"],[ImVec2, "HostBackupCursorMaxPos"],[ImVec1, "HostBackupColumnsOffset"],["float", "HostBackupItemWidth"],["int", "HostBackupItemWidthStackSize"]]
}
class ImGuiTableColumnSettings extends ctypes.struct 
{
   static fields := [["float", "WidthOrWeight"],["ImGuiID", "UserID"],["ImGuiTableColumnIdx", "Index"],["ImGuiTableColumnIdx", "DisplayOrder"],["ImGuiTableColumnIdx", "SortOrder"],["ImU8", "SortDirection"],["ImU8", "IsEnabled"],["ImU8", "IsStretch"]]
}
class ImGuiTableSettings extends ctypes.struct 
{
   static fields := [["ImGuiID", "ID"],["ImGuiTableFlags", "SaveFlags"],["float", "RefScale"],["ImGuiTableColumnIdx", "ColumnsCount"],["ImGuiTableColumnIdx", "ColumnsCountMax"],["bool", "WantApply"]]
}
class ImFontBuilderIO extends ctypes.struct 
{
   static fields := [["func", "FontBuilder_Build"]]
}