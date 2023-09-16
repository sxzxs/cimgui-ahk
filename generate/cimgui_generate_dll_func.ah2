#include <log>
#Requires AutoHotkey v2.0

all_functions_in_dll := A_Clipboard

result := ''

;this.igShowDemoWindow := this.GPA('igShowDemoWindow')
Loop parse, all_functions_in_dll, "`n", "`r"
{
    logger.info(A_LoopField)
    out := StrSplit(A_LoopField, ',')
    logger.info(out)
    out[3] := Trim(out[3]) 
    result .= 'this.' out[3] ' := this.GPA("' out[3] '")`r`n'
}

A_Clipboard := result
logger.info(result)