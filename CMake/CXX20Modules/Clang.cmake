set(PREBUILT_MODULE_PATH
	${CMAKE_BINARY_DIR}/modules
CACHE STRING
	"The directory in which prebuilt modules are stored."
)
set(MODULE_CACHE_PATH
	${CMAKE_BINARY_DIR}/modules/cache
CACHE STRING
	"The directory in which prebuilt header units are stored."
)

set(MODULE_INTERFACE_EXTENSION
	.pcm
CACHE STRING
	"The extension used for prebuilt module files."
)
set(MODULE_FLAGS
	-fmodules
	-fprebuilt-module-path=${PREBUILT_MODULE_PATH}
	-fbuiltin-module-map
	-fmodules-cache-path=${MODULE_CACHE_PATH}
	-Xclang -fdisable-module-hash
	-Werror=export-using-directive
)

function(
	add_module_source_header_units
	target_name
	source_file
	module_header_units
)
	# handled implicitly
endfunction()

function(
	get_compile_module_interface_command
	module_interface_file
	module_binary
	include_directories
	out_command
)
	if	(include_directories)
		set(absolute_include_dirs "")
		foreach(include_dir IN LISTS include_directories)
			file(REAL_PATH ${include_dir} absolute_dir)
			list(APPEND absolute_include_dirs -I${absolute_dir})
		endforeach()
	endif()

	file(REAL_PATH
		${module_interface_file}
		real_module_interface_file
	BASE_DIRECTORY
		${CMAKE_CURRENT_SOURCE_DIR}
		EXPAND_TILDE
	)

	#flags specific to the current directory
	get_property(
		directory_compile_options
	DIRECTORY
		${CMAKE_CURRENT_SOURCE_DIR}
	PROPERTY
		COMPILE_OPTIONS
	)

	#flags specific to the current build type
	string(TOUPPER ${CMAKE_BUILD_TYPE} build_type_flags)
	set(build_type_flags CMAKE_CXX_FLAGS_${build_type_flags})
	set(build_type_flags ${${build_type_flags}})
	string(REPLACE " " ";" build_type_flags "${${build_type_flags}}")

	#flags specific to CXX
	string(REPLACE " " ";" cmake_cxx_flags "${CMAKE_CXX_FLAGS}")

	# c++ standard flag
	if	(CMAKE_CXX_STANDARD LESS 20)
		message(FATAL_ERROR "C++ standard required to be at least 20 to use modules!")
	elseif(CMAKE_CXX_STANDARD EQUAL 23)
		# should change in the future
		set(cxx_standard_flag "-std=c++2b")
	else()
		set(cxx_standard_flag "-std=c++${CMAKE_CXX_STANDARD}")
	endif()

	set(
	command
		${CMAKE_CXX_COMPILER}
		${cxx_standard_flag}
		${build_type_flags}
		${cmake_cxx_flags}
		${directory_compile_options}
		${MODULE_FLAGS}
		${absolute_include_dirs}
		--compile ${real_module_interface_file}
		-Xclang -emit-module-interface
		--output ${module_binary}
	)

	# keep CXX generator expressions, discard all others
	list(
	TRANSFORM
		command
	REPLACE
		"\\$\\<\\$\\<COMPILE_LANGUAGE:CXX\\>:([^>]*)\\>"
		"\\1"
	)
	list(
	FILTER
		directory_compile_options
	EXCLUDE REGEX
		"\\$\\<\\$\\<COMPILE_LANGUAGE:[^>]*\\>:([^>]*)\\>"
	)

	set(
	${out_command}
		${command}
	PARENT_SCOPE
	)

endfunction()
