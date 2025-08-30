cmake_path(REMOVE_EXTENSION CMAKE_CURRENT_LIST_FILE OUTPUT_VARIABLE CXX20_MODULES_PATH)

include(${CXX20_MODULES_PATH}/Dependency.cmake)

function(add_module
	module_root_file
)
	setup_module_properties(
		"${module_root_file}"
		""
	root_module_name
	)

	if(
	NOT root_module_name
	)
		message(
		FATAL_ERROR
			"No module definition detected in ${module_root_file}"
		)

	endif()

	foreach(
		file
	IN LISTS
		ARGN
	)
		setup_module_properties(
			"${file}"
			"${root_module_name}"
		module_name
		)

		if(
		NOT	root_module_name
		STREQUAL
			module_name
		)
			message(
			FATAL_ERROR
				"${root_module_name} declares module ${root_module_name} but ${file} declares module ${module_name}!"
			)

		endif()

	endforeach()

endfunction()

function(add_single_file_modules
)
	foreach(
		file
	IN LISTS
		ARGN
	)
		add_module(
			"${file}"
		)

	endforeach()

endfunction()

function(add_module_dependencies
	target_name
)
	foreach(
		source_file
	IN LISTS
		ARGN
	)
		setup_module_properties(
			"${source_file}"
			"${target_name}"
		module_name
		)

		if(	module_name
		)
			message(
			FATAL_ERROR
				"${source_file} declares module ${module_name} but was not expected to declare any module!"
			)

		endif()

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

	add_module_dependencies(
		"${target_name}"
		${ARGN}
	)

endfunction()

find_file(
	std_module_file
NAMES
	std.cc
	std.cppm
PATH_SUFFIXES
	"bits"
PATHS
	${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES}
	"${_CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES_INIT}/c++/*"
DOC
	"C++ std module file"
REQUIRED
)
set_source_files_properties(
	"${std_module_file}"
PROPERTIES
COMPILE_OPTIONS
	"$<$<CXX_COMPILER_ID:Clang>:-Wno-reserved-identifier;-Wno-undef>"
)
add_module(
	"${std_module_file}"
)
