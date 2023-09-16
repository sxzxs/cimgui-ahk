#include <log>

json_str := FileRead(A_ScriptDir "\..\cimgui\generator\output\structs_and_enums.json")
js := json.parse(json_str)

result_str := ''
for k,v in js['enums']
{
	for i,j in v
	{
		logger.info(j['name'])
		result_str .= j['name'] ' := ' j['calc_value'] ' `;' j['value'] '`n'
	}
	result_str .= '`n'
}
logger.info(result_str)
A_Clipboard := result_str