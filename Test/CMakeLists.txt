function(add_module_object_tests
)
	cmake_path(
	RELATIVE_PATH
		CMAKE_CURRENT_SOURCE_DIR
	BASE_DIRECTORY
		"${PROJECT_SOURCE_DIR}"
	OUTPUT_VARIABLE
		module_prefix
	)

	string(
	REPLACE
		"/"
		"."
		module_prefix
		"${module_prefix}"
	)

	foreach(file_name IN LISTS ARGN)
		add_module_object_library(
			"${module_prefix}.${file_name}"
			"${file_name}.cpp"
		)
	endforeach()

endfunction()

add_subdirectory(ATR)
add_subdirectory(CMake)
add_subdirectory(Evaluation)
add_subdirectory(Meta)
