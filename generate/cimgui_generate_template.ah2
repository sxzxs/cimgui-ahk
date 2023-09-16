#include <log>


json_str := FileRead(A_ScriptDir "\..\cimgui\generator\output\structs_and_enums.json")
js := json.parse(json_str)

all_str := ''

no_function_implemented := Map('ImGuiDockNodeSettings', 0, 'ImGuiDockRequest', 0)
for k,v in js['templates_done']['ImVector']
{
    t := StrReplace(k, ' ', '_')
    t := StrReplace(t, '*', 'Ptr')
    all_str .= 'class ImVector_' t ' extends ctypes.struct `n{`n   static fields := ['

    if(InStr(k, 'ImGuiTableTempData'))
    {
        logger.info('')
    }

    /* ;没有试验成功
    if(SubStr(k, -2) == '**' && js['structs'].Has(SubStr(k, 1, -2)))
    {
        all_str .= '["int", "size"],["int", "Capacity"],[' SubStr(k, 1, -2) ', "**Data"]]`n}`n' 
    }
    else if(SubStr(k, -1) == '*' && js['structs'].Has(SubStr(k, 1, -1)))
    {
        all_str .= '["int", "size"],["int", "Capacity"],[' SubStr(k, 1, -1) ', "*Data"]]`n}`n' 
    }
    else if(js['structs'].Has(k))
    {
        all_str .= '["int", "size"],["int", "Capacity"],[' k ', "*Data"]]`n}`n' 
    }
    else if(no_function_implemented.Has(k))
    {
        all_str .= '["int", "size"],["int", "Capacity"],["ptr", "Data"]]`n}`n' 
    }
    else
    {
        all_str .= '["int", "size"],["int", "Capacity"],["' k '*", "Data"]]`n}`n' 
    }
    */
    ;all_str .= '["int", "size"],["int", "Capacity"],["' k '*", "Data"]]`n}`n' 

    all_str .= '["int", "size"],["int", "Capacity"],["ptr", "Data"]]`n}`n' 
}
all_str .= '
(
class ImVector extends ctypes.struct 
{
    static fields := [["int", "size"],["int", "Capacity"],["ptr", "Data"]]
}

)'


for k,v in js['templates_done']['ImSpan']
{
    t := StrReplace(k, ' ', '_')
    t := StrReplace(t, '*', 'Ptr')
    all_str .= 'class ImSpan_' t ' extends ctypes.struct `n{`n   static fields := ['
    all_str .= '["ptr", "Data"],["ptr", "DataEnd"]]`n}`n' 
}
all_str .= '
(
class ImSpan extends ctypes.struct 
{
   static fields := [["ptr", "Data"],["ptr", "DataEnd"]]
}

)'

;Todo 这里offset 和 sizes 是个数组，有问题
all_str .= '
(
class ImSpanAllocator extends ctypes.struct 
{
   static fields := [["char*", "BasePtr"],["int", "CurrOff"], ["int", "CurrIdx"], ["int", "Offsets"], ["int", "Sizes"]]
}

)'




for k,v in js['templates_done']['ImPool']
{
    t := StrReplace(k, ' ', '_')
    t := StrReplace(t, '*', 'Ptr')
    all_str .= 'class ImPool_' t ' extends ctypes.struct `n{`n   static fields := ['
    all_str .= '[ImVector_' t ', "Buf"],[ImGuiStorage, "Map"], ["int","FreeIdx"], ["int", "AliveCount"]]`n}`n' 
}
all_str .= '
(
class ImPool extends ctypes.struct 
{
   static fields := [[ImVector, "Buf"],[ImGuiStorage, "Map"], ["int","FreeIdx"], ["int", "AliveCount"]]
}

)'


for k,v in js['templates_done']['ImChunkStream']
{
    t := StrReplace(k, ' ', '_')
    t := StrReplace(t, '*', 'Ptr')
    all_str .= 'class ImChunkStream_' t ' extends ctypes.struct `n{`n   static fields := ['
    all_str .= '[ImVector_char, "Buf"]]`n}`n' 
}
all_str .= '
(
class ImChunkStream extends ctypes.struct 
{
   static fields := [[ImVector_char, "Buf"]]
}

)'

/*
for k,v in js['templates_done']['ImBitArray']
{
    t := StrReplace(k, ' ', '_')
    t := StrReplace(t, '*', 'Ptr')
    all_str .= 'class ImBitArray_' t ' extends ctypes.struct `n{`n   static fields := ['
    all_str .= '[ImVector_char, "Buf"]]`n}`n' 
}
*/
all_str .= '
(
class ImBitArray extends ctypes.struct 
{
   static fields := []
}

)'


A_Clipboard := all_str
logger.info(all_str)