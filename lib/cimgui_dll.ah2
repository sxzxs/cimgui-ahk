#Requires AutoHotkey v2.0
class Cimgui_dll
{
	static __New()
	{
		SplitPath(A_LineFile, , &dir)
		path := ""
		lib_path := dir
		if (A_IsCompiled)
		{
			path := (A_PtrSize == 4) ? A_ScriptDir . "\lib\dll_32\" : A_ScriptDir . "\lib\dll_64\"
			lib_path := A_ScriptDir . "\lib"
		}
		else
		{
			path := (A_PtrSize == 4) ? dir . "\dll_32\" : dir . "\dll_64\"
		}
		DllCall("SetDllDirectory", "Str", path)
		this.lib := DllCall("LoadLibrary", "Str", 'example_win32_directx11.dll', "ptr")
		LibAddr this.lib, this
	}
	static GPA(function)
	{
		return DllCall("GetProcAddress", 'Ptr', this.lib, 'AStr', function, 'Ptr')
	}
}

LibAddr(h, t := {}) {
	If (s := NumGet(h, 60, "UInt")) > 1
		&& StrGet(h + s, 4, "CP0") == "PE"
		&& NumGet(h + r := s + 4, 16, "Short") != 0
		&& NumGet(h + n := r + 20, 108, "Int") > 1
		&& (Off_Export := NumGet(h + n, 112, "UInt")) > 1  ; 导出表偏移量
		&& (ExportSize := NumGet(h + n, 116, "UInt")) > 1  ; 导出表大小
	{
		of_fn := NumGet(h + Off_Export, 28, "Int")
		nameRef := h + NumGet(h + Off_Export, 32, "Int")
		ordinal := h + NumGet(h + Off_Export, 36, "Int")
		loop NumGet(h + Off_Export, 24, "Int")
			t.%StrGet(h + NumGet(nameRef, "UInt"), "CP0")% := h + NumGet(h + of_fn + (NumGet(ordinal, "Short") * 4), "UInt"),
				nameRef += 4, ordinal += 2
		return t
	}
}
