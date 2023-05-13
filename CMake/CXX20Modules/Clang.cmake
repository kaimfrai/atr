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

set(STANDARD_HEADER_UNITS
	cassert
	cctype
	cerrno
	cfenv
	cfloat
	cinttypes
	climits
	clocale
	cmath
	csetjmp
	csignal
	cstdarg
	cstddef
	cstdint
	cstdio
	cstdlib
	cstring
	ctime
	cuchar
	cwchar
	cwctype

	algorithm
	any
	array
	atomic
	barrier
	bit
	bitset
	charconv
	chrono
	compare
	complex
	concepts
	condition_variable
	coroutine
	deque
	exception
	execution
	expected
	filesystem
	#flat_map
	#flat_set
	format
	forward_list
	fstream
	functional
	future
	#generator
	initializer_list
	iomanip
	ios
	iosfwd
	iostream
	istream
	iterator
	latch
	limits
	list
	locale
	map
	#mdspan
	memory
	memory_resource
	mutex
	new
	numbers
	numeric
	optional
	ostream
	#print
	queue
	random
	ranges
	ratio
	regex
	scoped_allocator
	semaphore
	set
	shared_mutex
	source_location
	span
	#spanstream
	sstream
	stack
	#stacktrace
	stdexcept
	#stdfloat
	#stop_token
	streambuf
	string
	string_view
	#syncstream
	system_error
	thread
	tuple
	typeindex
	typeinfo
	type_traits
	unordered_map
	unordered_set
	utility
	valarray
	variant
	vector
	version
)

if	(COMPILER_SEARCH_PATHS)
	set(STANDARD_LIBRARY_INCLUDE_PATH ${COMPILER_SEARCH_PATHS}/include/c++/v1 CACHE STRING "Path for standard library includes")
else()
	find_path(STANDARD_LIBRARY_INCLUDE_PATH ${STANDARD_HEADER_UNITS} PATH_SUFFIXES include/c++/v1 REQUIRED DOC "Path for standard library includes")
	file(REAL_PATH "${STANDARD_LIBRARY_INCLUDE_PATH}" STANDARD_LIBRARY_INCLUDE_PATH EXPAND_TILDE)
endif()

if	(EXISTS "${STANDARD_LIBRARY_INCLUDE_PATH}" AND IS_DIRECTORY "${STANDARD_LIBRARY_INCLUDE_PATH}")

	message("Found standard library at ${STANDARD_LIBRARY_INCLUDE_PATH}")

	foreach(header IN LISTS STANDARD_HEADER_UNITS)

		if	(NOT EXISTS "${STANDARD_LIBRARY_INCLUDE_PATH}/${header}")
			message(WARNING "Standard library did not contain header <${header}>!")
		endif()

	endforeach()

else()
	message(FATAL_ERROR "Could not find standard library at ${STANDARD_LIBRARY_INCLUDE_PATH}")
endif()

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
		${compile_definition_flags}
		${module_dependency_flag_list}
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

function(get_compile_system_header_unit_command
	header_unit_file
	header_unit_binary
	out_command
)
	get_compile_module_command(
		"${header_unit_file}"
		"${header_unit_binary}"
		""
		"--no-warnings;-fmodule-header=system;-xc++-system-header"
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

function(
	force_import_std
	file
)
	set_property(
	SOURCE "${file}"
	APPEND PROPERTY
		COMPILE_OPTIONS
		"-fmodule-file=${PREBUILT_MODULE_PATH}/std.hpp${MODULE_INTERFACE_EXTENSION}"
		"--include${CXX20_MODULES_PATH}/include/import_std.hpp"
	)

	set_property(
	SOURCE "${file}"
	APPEND PROPERTY
		OBJECT_DEPENDS
		"${PREBUILT_MODULE_PATH}/std.hpp${MODULE_INTERFACE_EXTENSION}"
	)

endfunction()
