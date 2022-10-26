include(CMake/CXX20Modules/${CMAKE_CXX_COMPILER_ID}.cmake)

function(
	ensure_module_variable_set
	variable_name
)
	if	(NOT ${variable_name})
		message(FATAL_ERROR "${CMAKE_CXX_COMPILER_ID}.cmake does not appear to define ${variable_name}!")
	endif()
endfunction()

ensure_module_variable_set(PREBUILT_MODULE_PATH)
ensure_module_variable_set(MODULE_INTERFACE_EXTENSION)
ensure_module_variable_set(MODULE_FLAGS)
ensure_module_variable_set(STANDARD_LIBRARY_INCLUDE_PATH)

file(
MAKE_DIRECTORY
	${PREBUILT_MODULE_PATH}
)

set(REGEX_WHITESPACE "[ \t]+")
set(REGEX_ID "[a-zA-Z_][a-zA-Z0-9_.]*")
set(REGEX_FILE "[a-zA-Z0-9_./\:]+")
set(REGEX_HEADER "<${REGEX_FILE}>|\"${REGEX_FILE}\"")
set(REGEX_NAME "${REGEX_ID}(:${REGEX_ID})?")
set(REGEX_MODULE "(^|[\n\r])(export${REGEX_WHITESPACE})?module${REGEX_WHITESPACE}")
set(REGEX_IMPORT "(^|[\n\r])(export${REGEX_WHITESPACE})?import${REGEX_WHITESPACE}")

function(invoke_preprocessor
	file_name
	out_preprocessed_file
)
	get_source_file_property(
		file_path
		"${file_name}"
		LOCATION
	)

	file(READ
		${file_path}
		file_content
	)

	#module declarations and imports
	string(
	REGEX MATCHALL
		"${REGEX_MODULE}${REGEX_NAME}|${REGEX_IMPORT}(:?${REGEX_ID}|${REGEX_HEADER})"
		file_content
		"${file_content}"
	)

	set(${out_preprocessed_file} "${file_content}" PARENT_SCOPE)

endfunction()

function(read_module_name
	module_source_file
	preprocessed_file
	must_have_module_name
	out_module_name
	out_module_binary
	out_module_object
)
	string(
	REGEX MATCH
		"${REGEX_MODULE}${REGEX_NAME}"
		module_name
		"${preprocessed_file}"
	)
	list(
	TRANSFORM
		module_name
	REPLACE
		"${REGEX_MODULE}"
		""
	)

	if	(NOT module_name AND ${must_have_module_name})
		message(FATAL_ERROR "File '${module_source_file}' did not specify a valid module name!")
	endif()

	set(
	${out_module_name}
		${module_name}
	PARENT_SCOPE
	)

	string(
	REPLACE
		":"
		"-"
		module_binary
		"${module_name}"
	)
	set(
	${out_module_binary}
		"${PREBUILT_MODULE_PATH}/${module_binary}${MODULE_INTERFACE_EXTENSION}"
	PARENT_SCOPE
	)
	set(
	${out_module_object}
		"${PREBUILT_MODULE_PATH}/${module_binary}${CMAKE_CXX_OUTPUT_EXTENSION}"
	PARENT_SCOPE
	)

endfunction()

function(add_system_header_unit
	header_unit_file
)
	get_compile_system_header_unit_command(
		"${STANDARD_LIBRARY_INCLUDE_PATH}/${header_unit_file}"
		"${PREBUILT_MODULE_PATH}/${binary_file}${MODULE_INTERFACE_EXTENSION}"
		compile_header_unit_command
	)

	add_custom_command(
	OUTPUT
		${PREBUILT_MODULE_PATH}/${binary_file}${MODULE_INTERFACE_EXTENSION}
	COMMAND
		${compile_header_unit_command}
	VERBATIM
	DEPENDS
		"${STANDARD_LIBRARY_INCLUDE_PATH}/${header_unit_file}"
	COMMENT
		"Generating precompiled system header unit ${header_unit_file}"
	)

endfunction()

function(add_system_header_units
)
	foreach(system_header IN LISTS ARGN)
		add_system_header_unit(${system_header})
	endforeach()

endfunction()

function(add_user_header_unit
	header_unit
)
	cmake_path(GET header_unit FILENAME header_unit_file)

	get_compile_user_header_unit_command(
		"${header_unit}"
		"${PREBUILT_MODULE_PATH}/${header_unit_file}${MODULE_INTERFACE_EXTENSION}"
		compile_header_unit_command
	)

	add_custom_command(
	OUTPUT
		${PREBUILT_MODULE_PATH}/${header_unit_file}${MODULE_INTERFACE_EXTENSION}
	COMMAND
		${compile_header_unit_command}
	VERBATIM
	DEPENDS
		${header_unit}
	COMMENT
		"Generating precompiled user header unit ${header_unit_file}"
	)

endfunction()

function(read_module_dependencies
	preprocessed_file
	module_name
	out_module_target_dependencies
	out_module_dependency_binaries
)
	set(dependency_binaries)

	string(REGEX MATCHALL "${REGEX_MODULE}${REGEX_NAME}" module_declaration "${preprocessed_file}")
	if (NOT ${module_declaration} MATCHES "^export" AND NOT ${module_declaration} MATCHES ":")
		list(
		TRANSFORM
			module_declaration
		REPLACE
			"${REGEX_MODULE}"
			""
		)
		list(APPEND dependency_binaries ${module_declaration})
	endif()

	string(REGEX MATCHALL "${REGEX_IMPORT}${REGEX_ID}" module_target_dependencies "${preprocessed_file}")
	list(TRANSFORM module_target_dependencies REPLACE "${REGEX_IMPORT}" "")

	list(APPEND dependency_binaries ${module_target_dependencies})

	set(${out_module_target_dependencies} ${module_target_dependencies} PARENT_SCOPE)

	string(REGEX MATCHALL "${REGEX_IMPORT}:${REGEX_ID}" module_partitions "${preprocessed_file}")

	list(TRANSFORM module_partitions REPLACE "${REGEX_IMPORT}:" "")
	list(TRANSFORM module_partitions PREPEND "${module_name}-")

	list(APPEND dependency_binaries ${module_partitions})

	string(REGEX MATCHALL "${REGEX_IMPORT}${REGEX_HEADER}" header_units "${preprocessed_file}")

	list(TRANSFORM header_units REPLACE "${REGEX_IMPORT}(<|\")" "")
	list(TRANSFORM header_units REPLACE "(>|\")" "")

	list(APPEND dependency_binaries ${header_units})

	list(TRANSFORM dependency_binaries PREPEND ${PREBUILT_MODULE_PATH}/)
	list(TRANSFORM dependency_binaries APPEND ${MODULE_INTERFACE_EXTENSION})

	set(${out_module_dependency_binaries} ${dependency_binaries} PARENT_SCOPE)

endfunction()

function(add_module_source_dependencies
	source_file
	module_dependency_files
)
	list(LENGTH module_dependency_files module_dependency_count)
	if(${module_dependency_count} GREATER 0)
		get_module_dependency_flag_list(
			"${module_dependency_files}"
			module_dependency_flag_list
		)
		set_source_files_properties(
		"${source_file}"
		PROPERTIES
		OBJECT_DEPENDS
			"${module_dependency_files}"
		COMPILE_OPTIONS
			"${module_dependency_flag_list}"
		LANGUAGE
			CXX
		)

	endif()

endfunction()

function(add_module_command
	module_interface_file
	module_binary
	module_object
	module_name
	module_dependency_binaries
)
	get_compile_module_interface_command(
		"${module_interface_file}"
		"${module_binary}"
		"${module_object}"
		"${module_dependency_binaries}"
		compile_module_interface_command
		compile_module_object_command
	)

	add_custom_command(
	OUTPUT
		${module_binary}
	COMMAND
		${compile_module_interface_command}
	VERBATIM
	DEPENDS
		${module_interface_file}
		${module_dependency_binaries}
	COMMENT
		"Generating precompiled module interface ${module_name}"
	)

	add_custom_command(
	OUTPUT
		${module_object}
	COMMAND
		${compile_module_object_command}
	VERBATIM
	DEPENDS
		${module_binary}
	COMMENT
		"Generating precompiled module object ${module_name}"
	)

endfunction()

function(add_module_partition
	module_name
	partition_name
	partition_binary
	partition_object
	interface_file
	preprocessed_module_file
)
	target_sources(
		"${module_name}"
	PRIVATE
		"${partition_object}"
	)

	read_module_dependencies(
		"${preprocessed_module_file}"
		"${module_name}"
		module_target_dependencies
		module_dependency_binaries
	)

	target_link_libraries(
		"${module_name}"
	INTERFACE
		${module_target_dependencies}
	)

	add_module_command(
		"${interface_file}"
		"${partition_binary}"
		"${partition_object}"
		"${partition_name}"
		"${module_dependency_binaries}"
	)

endfunction()

function(add_module_implementation
	source_file
	module_name
	module_binary
)
	invoke_preprocessor(
		"${source_file}"
		preprocessed_module_file
	)
	read_module_name(
		"${source_file}"
		"${preprocessed_module_file}"
		TRUE
		module_implementation_name
		module_implementation_binary
		module_implementation_object
	)

	if	(NOT "${module_implementation_name}" STREQUAL "${module_name}")
		message(FATAL_ERROR "Implementation ${source_file} does not appear to belong to module ${module_name}!")
	endif()

	read_module_dependencies(
		"${preprocessed_module_file}"
		"${module_name}"
		module_target_dependencies
		module_dependency_binaries
	)

	target_link_libraries(
		"${module_name}"
	INTERFACE
		${module_target_dependencies}
	)

	add_module_source_dependencies(
		"${source_file}"
		"${module_dependency_binaries}"
	)

endfunction()

function(add_module
	module_interface_file
)
	cmake_parse_arguments(
		MODULE
		""
		""
		"PARTITION;IMPLEMENTATION"
		${ARGN}
	)

	invoke_preprocessor(
		${module_interface_file}
		preprocessed_module_file
	)
	read_module_name(
		${module_interface_file}
		"${preprocessed_module_file}"
		TRUE
		module_name
		module_binary
		module_object
	)

	get_module_dependency_flag_list(
		"${module_binary}"
		primary_module_flag
	)

	add_library(
		"${module_name}"
	STATIC
		${MODULE_IMPLEMENTATION}
	)

	set_target_properties("${module_name}" PROPERTIES LINKER_LANGUAGE CXX)

	add_module_partition(
		"${module_name}"
		"${module_name}"
		"${module_binary}"
		"${module_object}"
		"${module_interface_file}"
		"${preprocessed_module_file}"
	)

	foreach(partition_file IN LISTS MODULE_PARTITION)
		invoke_preprocessor(
			"${partition_file}"
			preprocessed_partition_file
		)
		read_module_name(
			"${partition_file}"
			"${preprocessed_partition_file}"
			TRUE
			partition_name
			partition_binary
			partition_object
		)

		if	(NOT ${partition_name} MATCHES "^${module_name}:")
			message(FATAL_ERROR "Partition ${partition_file} does not appear to belong to module ${module_name} with primary interface declared in ${module_interface_file}!")
		endif()

		add_module_partition(
			"${module_name}"
			"${partition_name}"
			"${partition_binary}"
			"${partition_object}"
			"${partition_file}"
			"${preprocessed_partition_file}"
		)
	endforeach()

	foreach(module_implementation IN LISTS MODULE_IMPLEMENTATION)
		add_module_implementation(
			"${module_implementation}"
			"${module_name}"
			"${module_binary}"
		)
	endforeach()

endfunction()

function(add_module_dependencies
	target_name
)
	foreach(source_file IN LISTS ARGN)

		invoke_preprocessor(
			"${source_file}"
			preprocessed_module_file
		)
		read_module_name(
			"${source_file}"
			"${preprocessed_module_file}"
			FALSE
			module_name
			module_binary
			module_object
		)
		read_module_dependencies(
			"${preprocessed_module_file}"
			"${module_name}"
			module_target_dependencies
			module_dependency_binaries
		)

		target_link_libraries(
			"${target_name}"
		PUBLIC
			${module_target_dependencies}
		)

		add_module_source_dependencies(
			"${source_file}"
			"${module_dependency_binaries}"
		)

	endforeach()

endfunction()

function(add_module_object_library
	target_name
)
	add_library(
		${target_name}
	OBJECT
		${ARGN}
	)

	target_compile_options(
		"${target_name}"
	PRIVATE
		${MODULE_FLAGS}
	)

	add_module_dependencies(
		"${target_name}"
		${ARGN}
	)

endfunction()

function(add_module_executable
	target_name
)
	add_executable(
		${target_name}
		${ARGN}
	)

	target_compile_options(
		"${target_name}"
	PRIVATE
		${MODULE_FLAGS}
	)

	add_module_dependencies(
		"${target_name}"
		${ARGN}
	)

endfunction()
