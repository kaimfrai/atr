set(PREBUILT_MODULE_PATH
	${CMAKE_BINARY_DIR}/gcm.cache
)

file(
MAKE_DIRECTORY
	${PREBUILT_MODULE_PATH}
)

set(MODULE_INTERFACE_EXTENSION
	.gcm
)

function(
	add_module_source_header_units
	target_name
	source_file
	module_header_units
)
	foreach(header_unit IN LISTS module_header_units)

		add_custom_command(
		OUTPUT
			${PREBUILT_MODULE_PATH}/${CMAKE_CURRENT_SOURCE_DIR}/${header_unit}${MODULE_INTERFACE_EXTENSION}
		COMMAND
			cd ${CMAKE_BINARY_DIR} &&
			${CMAKE_CXX_COMPILER}
			${CXX_STANDARD_VERSION_FLAG}
			${CXX_STANDARD_LIBRARY_FLAG}
			${WARNING_FLAGS}
			-c -x c++-header
			${CMAKE_CURRENT_SOURCE_DIR}/${header_unit}
		VERBATIM
		MAIN_DEPENDENCY
			${header_unit}
		COMMENT
			"Generating header unit ${header_unit}"
		)

		add_library(
			std.${header_unit}
		INTERFACE
			${header_unit}
		)

		add_dependencies(${target_name}
			std.${header_unit}
		)

		set_source_files_properties(
			${source_file}
		OBJECT_DEPENDS
			${PREBUILT_MODULE_PATH}/${CMAKE_CURRENT_SOURCE_DIR}/${header_unit}${MODULE_INTERFACE_EXTENSION}
		)

	endforeach()

endfunction()

function(
	get_compile_module_interface_command
	module_interface_file
	module_file
	out_command
)
	set(compile_module_interface
		${CMAKE_CXX_COMPILER}
		${CXX_STANDARD_VERSION_FLAG}
		${CXX_STANDARD_LIBRARY_FLAG}
		${WARNING_FLAGS}
		-c ${CMAKE_CURRENT_SOURCE_DIR}/${module_interface_file}
		-fmodule-only
	)

	set(${out_command}
		cd ${CMAKE_BINARY_DIR} && ${compile_module_interface}
	PARENT_SCOPE
	)

endfunction()
