function(cxx_module_import_flag
	target_name
	module_name
	out_module_import_flag
)
	set("${out_module_import_flag}"
		"-fmodule-file=${module_name}=$<TARGET_OBJECTS:${target_name}>"
	PARENT_SCOPE
	)

endfunction()
