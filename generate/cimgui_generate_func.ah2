#Requires AutoHotkey v2.0
#include <log>
#include <ctypes>
#include ../lib/cimgui_structs.ah2
#include ../lib/cimgui_dll.ah2

info := ctypes.__get_typeinfo('bool')
logger.info(info)
info := ctypes.__get_typeinfo('bool*')
logger.info(info)

; 先遍历一遍所有函数的参数，看是否都能转换到基础类型，ptr和 vector123

json_str := FileRead(A_ScriptDir "\..\cimgui\generator\output\definitions.json")
js := json.parse(json_str)

result_str := ''

no_recognized_type := []
struct_no_ptr := []

func_all_map := Map()
func_all_str := ''
for k, v in js
{
    for i, j in v
    {
        is_class_func := false
        func_str := ''
        if (!Cimgui_dll.HasProp(j['ov_cimguiname']))
            continue
        ret := ''
        if(j.Has('ret'))
            ret := j['ret']
        else
        {
            p := InStr(j['ov_cimguiname'], '_')
            class_name := SubStr(j['ov_cimguiname'], 1, p - 1)
            func_name := SubStr(j['ov_cimguiname'], p + 1)
            ret := class_name '*'
            is_class_func := true
        }

        original_func := ';' ret ' ' j['ov_cimguiname'] StrReplace(j['args'], ',', ', ')

        if(j['ov_cimguiname'] = 'igImTriangleBarycentricCoords')
        {
            logger.info('in')
        }

        ;获取ahk 函数参数
        ahk_func := '('
        i := 1
        for m, n in j['argsT']
        {
            dll_type := convert_to_dll_type(n['name'], n['type'])
            tp := n['name']
            if(tp = 'self')
                continue
            d := ','
            if(i == 1)
               d := '' 
            if(n.Has('reftoptr'))
                ahk_func .= d '&' tp
            else if(InStr(dll_type, '&'))
                ahk_func .= d '&' tp
            else
                ahk_func .= d tp

            ;添加默认参数
            default_value := ''
            if(j['defaults'].has(n['name']))
            {
                default := j['defaults'][n['name']]
                default := StrReplace(default, 'NULL', 0)
                default := StrReplace(default, '(', '([')
                default := StrReplace(default, ')', '])')
                default := StrReplace(default, 'FLT_MAX', '3.402823466e+38')
                default := StrReplace(default, 'FLT_MIN', '1.175494351e-38')
                if(SubStr(default, -1) = 'f')
                {
                    default := SubStr(default, 1, -1)
                }
                default_value .= ' := ' default
            }
            ahk_func .= default_value

            i++
        }
        ahk_func .= ')'
        ahk_func := StrReplace(ahk_func, ',', ', ')
        ahk_func := StrReplace(ahk_func, '*', '&')
        ahk_func := StrReplace(ahk_func, '...', 'p*')
        ahk_func := StrReplace(ahk_func, 'self')

        delete_str := ''
        if(InStr(original_func, '_destroy('))
        {
            delete_str := '
            (
                if(this.HasOwnProp('__Delete'))
                        return
            )'
            delete_str .= '`n    '
        }

        func_str .= j['ov_cimguiname'] ahk_func '`n{`n' A_Tab delete_str original_func '`n    dll_rtn := DllCall(Cimgui_dll.' j['ov_cimguiname']

        for m, n in j['argsT']
        {
            if (j['ov_cimguiname'] = 'igInputScalar')
            {
                logger.info('in')
            }
            dll_type := convert_to_dll_type(n['name'], n['type'])
            if(InStr(original_func, '_destroy('))
            {
                dll_type := StrReplace(dll_type, 'self', 'self_this')
            }
            func_str .= dll_type
            if(n['type'] = '...' && n['name'] = '...')
                func_str .= ', p*'
            logger.info(dll_type)
        }
        if(is_class_func)        
            ret_type := ', "ptr"'
        else
        {
            dll_type := convert_to_dll_type('#', j['ret'])
            dll_type := StrReplace(dll_type, ', #')
            dll_type := StrReplace(dll_type, ', &#')
            if(InStr(dll_type, '*'))
                dll_type := ', "ptr"'
            ret_type := dll_type
        }
        if(InStr(func_str, ', p*'))
        {
            if(!(InStr(ret_type, 'int') || ret_type = ''))
            {
                ;MsgBox('参数有...,但是返回值不能省略')

            }
        }
        else
            func_str .= ret_type

        func_str .= ')`n    return dll_rtn`n}`n'

        if(InStr(func_str, 'self') || is_class_func)
        {
            func_str := StrReplace(func_str, 'self', 'this')
            ;分类
            p := InStr(j['ov_cimguiname'], '_')
            class_name := SubStr(j['ov_cimguiname'], 1, p - 1)
            func_name := SubStr(j['ov_cimguiname'], p + 1)
            if(is_class_func)
                func_str := 'static ' StrReplace(func_str, j['ov_cimguiname'], func_name,,, 1)
            else
                func_str := StrReplace(func_str, j['ov_cimguiname'], func_name,,, 1)
        }
        else
            class_name := 'Cimgui'

        if(!func_all_map.Has(class_name))
        {
            func_all_map[class_name] := []
        }
        func_all_map[class_name].Push(func_str)

        func_all_str .= func_str
    }
}

class_func_str := ''
for k,v in func_all_map
{
    if(k = 'Cimgui')
        class_func_str .= 'class ' k '_AHK`n{`n'
    else
        class_func_str .= 'class ' k '_AHK extends ' k '`n{`n'

    for i,j in v
    {
        class_func_str .= line_add_tab(j)
    }
    class_func_str .= '}`n'
}

class_func_str := StrReplace(class_func_str, 'a_min,', 'a_min_,')
class_func_str := StrReplace(class_func_str, '(in)', '(in_)')
class_func_str := StrReplace(class_func_str, ' in)', ' in_)')
class_func_str := StrReplace(class_func_str, ' in,', ' in_,')
class_func_str := StrReplace(class_func_str, 'destroy()', 'static free(self)')
class_func_str := StrReplace(class_func_str, 'sizeof([float])', '4')
class_func_str := StrReplace(class_func_str, '"ushort*", &glyph_ranges', '"ptr", glyph_ranges')
class_func_str := StrReplace(class_func_str, '&glyph_ranges := 0', 'glyph_ranges := 0')
class_func_str := StrReplace(class_func_str, 'this_this', 'self')
class_func_str := StrReplace(class_func_str, '0.0f', '0.0')

A_Clipboard := class_func_str
logger.info(func_all_str)
logger.info(no_recognized_type)
logger.info(struct_no_ptr)

convert_to_dll_type(name, tp)
{
    original_type := tp
    dll_type := ''
    tp := StrReplace(tp, 'const ')
    ;tp := StrReplace(tp, 'bool', 'char')
    if (tp = '...')
    {
        dll_type := ''
        return dll_type
    }
    else if (instr(tp, 'char* const[]'))
    {
        dll_type := ', "ptr", ' name
        return dll_type
    }
    else if (InStr(tp, '(*)'))
    {
        dll_type := ', "ptr", ' name
        return dll_type
    }

    try
    {
        ctypes.__get_typeinfo(tp)
    }
    catch as e
    {
        logger.err(tp)
        no_recognized_type.Push(tp)
        return
    }

    info := ctypes.__get_typeinfo(tp)
    tp := info.name
    is_base := whether_it_is_a_base_type_or_a_pointer_to_a_base_type(info.name)

    if (!is_base && info.type != 'ptr')
    {
        if (rtn := RegExMatch(tp, 'char\[(\d+)\]', &SubPat))
        {
            dll_type := ', "ptr", ' name
        }
        else if (rtn := RegExMatch(tp, 'uchar\[(\d+)\]', &SubPat))
        {
            dll_type := ', "ptr", ' name
        }
        else if (rtn := RegExMatch(tp, 'float\[(\d+)\]', &SubPat))
        {
            dll_type := ', "ptr", ' name
        }
        else if (rtn := RegExMatch(tp, 'int\[(\d+)\]', &SubPat))
        {
            dll_type := ', "ptr", ' name
        }
        else if (rtn := RegExMatch(tp, 'ImVec\d\[(\d+)\]', &SubPat))
        {
            dll_type := ', "ptr", ' name
        }
        else if (rtn := RegExMatch(tp, 'ImVec2$'))
        {
            dll_type := Format(', "int64", NumGet({}, "int64")', name)
        }
        else if (rtn := RegExMatch(tp, 'ImVec4$'))
        {
            dll_type := ', "ptr", ' name
        }
        else if (rtn := RegExMatch(tp, 'ImRect$'))
        {
            dll_type := ', "ptr", ' name
        }
        else if (rtn := RegExMatch(tp, 'ImGuiListClipperRange|ImGuiListClipperRange'))
        {
            dll_type := ', "ptr", ' name
        }
        else
        {
            struct_no_ptr.Push(tp)
        }
        return dll_type
    }

    if (is_base)
    {
        if (tp = 'char*' && original_type != 'bool*')
        {
            dll_type := ', "ptr", ' name
        }
        else if (tp = 'char**')
        {
            dll_type := ', "ptr", ' name
        }
        else if (tp = 'ptr')
        {
            dll_type := ', "ptr", ' name
        }
        else if (info.type = 'ptr')
        {
            dll_type := ', "' tp '", &' name
        }
        else
        {
            dll_type := ', "' tp '", ' name
        }
    }
    else
    {
        dll_type := ', "ptr", ' name
    }
    return dll_type
}

whether_it_is_a_base_type_or_a_pointer_to_a_base_type(tp)
{
    base_type := ['char', 'uchar', 'short', 'ushort', 'int', 'uint', 'int64', 'uint64', 'ptr', 'uptr', 'float', 'double', 'bool']
    base_type_ptr := ['char*', 'uchar*', 'short*', 'ushort*', 'int*', 'uint*', 'int64*', 'uint64*', 'ptr*', 'uptr*', 'float*', 'double*', 'bool*']

    for k, v in base_type
    {
        if (StrReplace(tp, '*') = v)
            return 1
    }
    return 0
}

line_add_tab(in_str)
{
    out_str := ''
    Loop parse, in_str, "`n", "`r"
    {
        out_str .=  A_Tab A_LoopField '`n'
    }
    return out_str
}