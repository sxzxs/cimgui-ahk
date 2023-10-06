#Requires AutoHotkey v2.0
class Cimgui_dll
{
    static module := Map()
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
        ;属性比map要快一些
		LibAddr this.lib, this
        ;this.module := get_module_exports(this.lib)
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

get_module_exports(mod) {
	if !mod
		mod := DllCall('GetModuleHandleW', 'ptr', 0, 'ptr')
	else if (DllCall('GetModuleFileNameW', 'ptr', mod, 'ptr*', 0, 'uint', 1), A_LastError = 126)
		Throw OSError()
	data_directory_offset := NumGet(mod, 60, 'uint') + 104 + A_PtrSize * 4
	entry_export := mod + NumGet(mod, data_directory_offset, 'uint')
	entry_export_end := entry_export + NumGet(mod, data_directory_offset + 4, 'uint')
	func_tbl_offset := NumGet(entry_export, 0x1c, 'uint')
	name_tbl_offset := NumGet(entry_export, 0x20, 'uint')
	ordinal_tbl_offset := NumGet(entry_export, 0x24, 'uint')
	exports := Map()
	loop NumGet(entry_export, 0x18, 'uint') {
		ordinal := NumGet(mod, ordinal_tbl_offset, 'ushort')
		fn_ptr := mod + NumGet(mod, func_tbl_offset + ordinal * 4, 'uint')
		if entry_export <= fn_ptr && fn_ptr < entry_export_end {
			fn_name := StrSplit(StrGet(fn_ptr, 'cp0'), '.')
			fn_ptr := DllCall('GetProcAddress', 'ptr', DllCall('GetModuleHandle', 'str', fn_name[1], 'ptr'), 'astr', fn_name[2], 'ptr')
		}
		exports[StrGet(mod + NumGet(mod, name_tbl_offset, 'uint'), 'cp0')] := fn_ptr
		name_tbl_offset += 4, ordinal_tbl_offset += 2
	}
	return exports
}
