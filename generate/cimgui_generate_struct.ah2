;模版那里有点问题

;常量 没有转成数字

;ImGuiContext 里面引用了自身，所以需要把filed放到外面


#include <log>
#include ../lib/cimgui_enum.ah2

;全部struct的字符串
g_all_struct_str := ''
;已经打印的函数
g_printed_func := Map()
g_printed_func_array := []

json_str := FileRead(A_ScriptDir "\..\cimgui\cimgui\generator\output\structs_and_enums.json")
js := json.parse(json_str)

for k,v in js['structs']
{
    print_struct(k)
}

g_all_struct_str := StrReplace(g_all_struct_str, 'const ')
A_Clipboard := g_all_struct_str

;排序结构体
;冒泡排序
out := array_sort(g_printed_func_array, imgui_line_compare)

all_structs_str := ''
for k,v in out
{
    all_structs_str .= g_printed_func[v]
}

;替换到 算数运算
all_structs_str := StrReplace(all_structs_str, '(0xFFFF+1)/4096/8', '2')
all_structs_str := StrReplace(all_structs_str, '(63)+1', '64')
all_structs_str := StrReplace(all_structs_str, '32+1', '33')
all_structs_str := StrReplace(all_structs_str, '(BITCOUNT+31)>>5', '')

;全局替换枚举值为数字
json_str := FileRead(A_ScriptDir "\..\cimgui\cimgui\generator\output\structs_and_enums.json")
js := json.parse(json_str)
for k,v in js['enums']
{
	for i,j in v
	{
		;j['name']  j['calc_value']
        all_structs_str := StrReplace(all_structs_str,'[' j['name'] ']','[' j['calc_value'] ']')
	}
	result_str .= '`n'
}

;去掉所有的const
all_structs_str := StrReplace(all_structs_str, 'const ', '')

logger.info(all_structs_str)
A_Clipboard := all_structs_str

array_sort(in_array, compare_bc := (a, b) => a - b)
{
    out_array := []
    for k,v in in_array
    {
        is_insert := false
        for i, j in out_array
        {
            if(compare_bc(v, j) < 0)
            {
                out_array.InsertAt(i, v)
                is_insert := true
                break
            }
        }
        if(!is_insert)
            out_array.Push(v)
    }
    return out_array
}

imgui_line_compare(str1, str2)
{
    str1 := js['locations'][str1]
    str2 := js['locations'][str2]
    d1 := InStr(str1, ':')
    f1 := SubStr(str1, 1, d1 - 1)
    l1 := SubStr(str1, d1 + 1)
    d2 := InStr(str2, ':')
    f2 := SubStr(str2, 1, d2 - 1)
    l2 := SubStr(str2, d2 + 1)
    convert_file_number(&f1)
    convert_file_number(&f2)
    if(f1 - f2 != 0)
        return f1 - f2
    return l1 - l2
}


print_struct(struct_name)
{
    global g_all_struct_str
    if(!js['structs'].Has(struct_name))
        return
    if(g_printed_func.Has(struct_name))
        return

    if(struct_name = 'ImGuiContext')
    {
        str := 'class ImGuiContext extends ctypes.struct  `n{`n}`nImGuiContext.fields := ['
    }
    else
    {
        str := 'class ' struct_name ' extends ctypes.struct `n{`n   static fields := ['
    }



    for k,v in js['structs'][struct_name]
    {
        /*
        if(v.has('template_type'))
            print_struct(v['template_type'])
        else
            print_struct(v['type'])
        */

        d := k == 1 ? '' : ','

        type := v['type']
        type := StrReplace(type, 'const ', '')
        value := v['name']
        if(InStr(type, 'ImFontBuilderIO'))
        {
            logger.info('')
        }

        if(InStr(type, '(*)'))
        {
            type := 'func'
        }
        if(js['structs'].Has(type))
        {
            str .= d '[' type ', "' value '"]'
        }
        else if(SubStr(type, -1) == '*' && (js['structs'].Has(SubStr(type, 1, -1)) 
            || instr(type, 'ImVector_') 
            || instr(type, 'ImSpan_')
            || instr(type, 'ImChunkStream_')))
        {
            str .= d '[' SubStr(type, 1, -1) ', "*' value '"]'
        }
        else if(instr(type, 'ImVector_'))
        {
            str .= d '[' type ', "' value '"]'
        }
        else if(InStr(type, 'union'))
        {
            str .= d '[ctypes.struct("' type '"),"union"]'
        }
        else
        {
            str .= d '["' type '", "' value '"]'
        }
    }

    if(struct_name = 'ImGuiContext')
    {
        str .= ']`n'
    }
    else
    {
        str .= ']`n}`n'
    }
    g_printed_func[struct_name] := str
    g_printed_func_array.Push(struct_name)
    g_all_struct_str .= str
}


convert_file_number(&file)
{
    switch file
    {
        case 'imgui_internal':
            file := 2
        case 'imgui':
            file := 1
        default:
            file := 0
    }
}