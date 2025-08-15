function(cxx_module_import_flag
	module_name
	module_path
	out_module_import_flag
)
	set("${out_module_import_flag}"
		"-fmodule-file=${module_name}=${module_path}"
	PARENT_SCOPE
	)

endfunction()

function(cxx_module_output_flag
	module_path
	out_module_output_flag
)
	set("${out_module_output_flag}"
		"-fmodule-output=${module_path}"
	PARENT_SCOPE
	)

endfunction()

set(CXX_MODULE_EXPLICIT_CXX_FLAG
	"${CMAKE_CXX_COMPILE_OPTIONS_EXPLICIT_LANGUAGE}"
)
set(CMAKE_CXX_COMPILE_OPTIONS_EXPLICIT_LANGUAGE
)

set(CXX_MODULE_EXPLICIT_PCM_FLAG
	"-xc++-module"
)
set(CXX_MODULE_PCM_EXTENSION
	".pcm"
)
