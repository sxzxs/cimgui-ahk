#Requires AutoHotkey v2.0
#include <log>
#include <User32>
winid1 := WinGetID("ahk_class YodaoMainWndClass")
winid2 := WinGetID("ahk_class ImGui Platform")
logger.info(winid1, winid2)
SetParent(winid2, winid2)
WinMove(0,0,,, winid2)
