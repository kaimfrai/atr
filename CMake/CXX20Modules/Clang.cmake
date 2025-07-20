set(PREBUILT_MODULE_PATH
	${CMAKE_BINARY_DIR}/modules
CACHE STRING
	"The directory in which prebuilt modules are stored."
)

set(MODULE_INTERFACE_EXTENSION
	.pcm
CACHE STRING
	"The extension used for prebuilt module files."
)

function(get_module_dependency_flag_list
	module_dependency_names
	module_dependency_binaries
	out_module_dependency_flag_list
)
	set(module_dependency_flag_list)
	foreach(name binary IN ZIP_LISTS module_dependency_names module_dependency_binaries)
		list(APPEND module_dependency_flag_list "-fmodule-file=${name}=${binary}")
	endforeach()
	set(
	${out_module_dependency_flag_list}
		${module_dependency_flag_list}
	PARENT_SCOPE
	)

endfunction()

function(get_header_dependency_flag_list
	header_dependency_binaries
	out_header_dependency_flag_list
)
	set(header_dependency_flag_list "${header_dependency_binaries}")

	list(TRANSFORM header_dependency_flag_list PREPEND "-fmodule-file=")

	set(
	${out_header_dependency_flag_list}
		${header_dependency_flag_list}
	PARENT_SCOPE
	)

endfunction()

function(get_cxx_standard_flag
	out_cxx_standard_flag
)
	if	(CMAKE_CXX_STANDARD LESS 20)
		message(FATAL_ERROR "C++ standard required to be at least 20 to use modules!")
	else()
		set(cxx_standard_flag "-std=c++${CMAKE_CXX_STANDARD}")
	endif()

	set(
	${out_cxx_standard_flag}
		${cxx_standard_flag}
	PARENT_SCOPE
	)

endfunction()

function(resolve_generator_expression
	expression
	out_expression
)
	if	(NOT expression)

		set(${out_expression}
			""
		PARENT_SCOPE
		)

	else()

		# keep CXX and Clang generator expressions, discard all others
		# resolve top level generator expressions first as they may contain a list
		string(
		REGEX REPLACE
			"\\$\\<\\$\\<COMPILE_LANGUAGE:CXX\\>:([^>]*)\\>"
			"\\1"
			expression
			"${expression}"
		)

		string(
		REGEX REPLACE
			"\\$\\<\\$\\<COMPILE_LANGUAGE:[^>]*\\>:([^>]*)\\>"
			""
			expression
			"${expression}"
		)

		string(
		REGEX REPLACE
			"\\$\\<\\$\\<CXX_COMPILER_ID:([^>,]+,)*Clang(,[^>,]+)*\\>:([^>]*)\\>"
			"\\3"
			expression
			"${expression}"
		)

		string(
		REGEX REPLACE
			"\\$\\<\\$\\<CXX_COMPILER_ID:[^>]*\\>:([^>]*)\\>"
			""
			expression
			"${expression}"
		)

		list(
		TRANSFORM
			expression
		REPLACE
			"\\$\\<\\$\\<COMPILE_LANGUAGE:CXX\\>:([^>]*)\\>"
			"\\1"
		)
		list(
		FILTER
			expression
		EXCLUDE REGEX
			"\\$\\<\\$\\<COMPILE_LANGUAGE:[^>]*\\>:([^>]*)\\>"
		)

		list(
		TRANSFORM
			expression
		REPLACE
			"\\$\\<\\$\\<CXX_COMPILER_ID:([^>,]+,)*Clang(,[^>,]+)*\\>:([^>]*)\\>"
			"\\3"
		)
		list(
		FILTER
			expression
		EXCLUDE REGEX
			"\\$\\<\\$\\<CXX_COMPILER_ID:[^>]*\\>:([^>]*)\\>"
		)

		set(${out_expression}
			${expression}
		PARENT_SCOPE
		)

	endif()

endfunction()

function(get_file_and_directory_properties
	module_interface_file
	property_name
	out_properties
)
	get_source_file_property(
		file_property
		"${module_interface_file}"
		"${property_name}"
	)
	resolve_generator_expression("${file_property}" file_property)

	get_directory_property(
		directory_property
		"${property_name}"
	)
	resolve_generator_expression("${directory_property}" directory_property)

	set(${out_properties}
		${directory_property}
		${file_property}
	PARENT_SCOPE
	)

endfunction()

function(get_cmake_cxx_flags
	out_cmake_cxx_flags
)
	#flags specific to the current build type
	string(TOUPPER ${CMAKE_BUILD_TYPE} build_type_flags)
	set(build_type_flags "CMAKE_CXX_FLAGS_${build_type_flags}")
	string(REPLACE " " ";" build_type_flags "${${build_type_flags}}")
	resolve_generator_expression("${build_type_flags}" build_type_flags)

	#flags specific to CXX
	string(REPLACE " " ";" cmake_cxx_flags "${CMAKE_CXX_FLAGS}")
	resolve_generator_expression("${cmake_cxx_flags}" cmake_cxx_flags)

	set(${out_cmake_cxx_flags}
		${build_type_flags}
		${cmake_cxx_flags}
	PARENT_SCOPE
	)

endfunction()

function(get_compile_module_command
	module_interface_file
	module_binary
	module_object
	file_type_flag
	out_interface_command
	out_object_command
)
	get_cxx_standard_flag(cxx_standard_flag)
	get_cmake_cxx_flags(cmake_cxx_flags)

	get_file_and_directory_properties("${module_interface_file}" "INCLUDE_DIRECTORIES" include_dirs)
	list(TRANSFORM include_dirs PREPEND -I)

	get_file_and_directory_properties("${module_interface_file}" "COMPILE_OPTIONS" compile_options_flags)

	get_file_and_directory_properties("${module_interface_file}" "MODULE_IMPORT_MODULE_OPTIONS" import_module_flags)
	get_file_and_directory_properties("${module_interface_file}" "MODULE_IMPORT_HEADER_OPTIONS" import_header_flags)

	get_file_and_directory_properties("${module_interface_file}" "COMPILE_DEFINITIONS" compile_definition_flags)
	list(TRANSFORM compile_definition_flags PREPEND -D)

	get_source_file_property(
		real_module_interface_file
		"${module_interface_file}"
		LOCATION
	)

	set(
	interface_command
		${CMAKE_CXX_COMPILER}
		${cxx_standard_flag}
		${cmake_cxx_flags}
		${compile_options_flags}
		${import_module_flags}
		${import_header_flags}
		${compile_definition_flags}
		${include_dirs}
		${file_type_flag}
		--precompile ${real_module_interface_file}
		--output ${module_binary}
	)

	set(
	${out_interface_command}
		${interface_command}
	PARENT_SCOPE
	)

	set(
	object_command
		${CMAKE_CXX_COMPILER}
		${cmake_cxx_flags}
		${import_module_flags}
		${import_header_flags}
		--compile ${module_binary}
		--output ${module_object}
	)

	set(
	${out_object_command}
		${object_command}
	PARENT_SCOPE
	)

endfunction()

function(get_compile_user_header_unit_command
	header_unit_file
	header_unit_binary
	out_command
)
	get_compile_module_command(
		"${header_unit_file}"
		"${header_unit_binary}"
		""
		"-fmodule-header;-xc++-user-header"
		interface_command
		object_command
	)
	set(
	${out_command}
		${interface_command}
	PARENT_SCOPE
	)

endfunction()

function(get_compile_module_interface_command
	module_interface_file
	module_binary
	module_object
	out_compile_module_interface_command
	out_compile_module_object_command
)
	get_compile_module_command(
		"${module_interface_file}"
		"${module_binary}"
		"${module_object}"
		"-xc++-module"
		interface_command
		object_command
	)
	set(
	${out_compile_module_interface_command}
		${interface_command}
	PARENT_SCOPE
	)
	set(
	${out_compile_module_object_command}
		${object_command}
	PARENT_SCOPE
	)

endfunction()

set_property(
SOURCE
	"${CXX20_MODULES_PATH}/include/std.hpp"
APPEND PROPERTY
COMPILE_OPTIONS
	"${STANDARD_LIBRARY_FLAG}"
)

set_property(
SOURCE
	"${CXX20_MODULES_PATH}/Std.cpp"
APPEND PROPERTY
COMPILE_OPTIONS
	-Wno-reserved-identifier
)

function(
	get_module_output_files
	module_name
	module_partition_name
	out_module_interface
	out_module_object
)

	string(
	REPLACE
		"."
		"/"
		module_path
		"${module_name}"
	)
	set(
		module_path
		"${PREBUILT_MODULE_PATH}/${module_path}"
	)

	if (module_partition_name)

		file(
		MAKE_DIRECTORY
			"${module_path}"
		)

		set(
			module_path
			"${module_path}/${module_partition_name}"
		)

	else()

		cmake_path(
		GET
			module_path
		PARENT_PATH
			module_parent_path
		)

		file(
		MAKE_DIRECTORY
			"${module_parent_path}"
		)

	endif()

	set(
		"${out_module_interface}"
		"${module_path}${MODULE_INTERFACE_EXTENSION}"
	PARENT_SCOPE
	)
	set(
		"${out_module_object}"
		"${module_path}${CMAKE_CXX_OUTPUT_EXTENSION}"
	PARENT_SCOPE
	)

endfunction()
