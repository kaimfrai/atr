function(cxx_module_import_flag
	target_name
	module_name
	out_module_import_flag
)
	set("${out_module_import_flag}"
		"-fmodule-file=${module_name}=$<LIST:TRANSFORM,$<TARGET_OBJECTS:${target_name}>,APPEND,${CMAKE_PCM_IMPORT_EXTENSION}>"
	PARENT_SCOPE
	)

endfunction()
