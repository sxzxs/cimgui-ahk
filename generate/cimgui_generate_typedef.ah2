#include <log>

json_str := FileRead(A_ScriptDir "\..\cimgui\generator\output\typedefs_dict.json")
js := json.parse(json_str)

all_str := ''

for k,v in js
{
    if(InStr(v, '(*)'))
        v := 'func'
    all_str .= 'ctypes.types["' k '"] := "' v '"`n'
}

json_str := FileRead(A_ScriptDir "\..\cimgui\generator\output\structs_and_enums.json")
js := json.parse(json_str)
for k,v in js['enumtypes']
{
    all_str .= 'ctypes.types["' k '"] := "' v '"`n'
}

;定义所以得枚举类型为int
json_str := FileRead(A_ScriptDir "\..\cimgui\generator\output\structs_and_enums.json")
js := json.parse(json_str)
result_str := ''
for k,v in js['enums']
{
    all_str .= 'ctypes.types["' k '"] := "int"`n'
}


all_str .= 'ctypes.types["signed long long"] := "int64"`n'
all_str .= 'ctypes.types["unsigned long long"] := "uint64"`n'
all_str .= 'ctypes.types["func"] := "ptr"`n'
all_str .= 'ctypes.types["FILE*"] := "ptr"`n'

all_str .= 'ctypes.types["va_list"] := "char*"`n'


A_Clipboard := all_str
logger.info(all_str)