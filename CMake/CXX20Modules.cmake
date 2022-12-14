cmake_path(REMOVE_EXTENSION CMAKE_CURRENT_LIST_FILE OUTPUT_VARIABLE CXX20_MODULES_PATH)

include(${CXX20_MODULES_PATH}/${CMAKE_CXX_COMPILER_ID}.cmake)
include(${CXX20_MODULES_PATH}/Dependency.cmake)

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


function(add_system_header_unit
	header_unit_file
)
	file(REAL_PATH
		"${header_unit_file}"
		header_unit_path
	EXPAND_TILDE
	BASE_DIRECTORY
		"${STANDARD_LIBRARY_INCLUDE_PATH}"
	)
	read_module_properties("${header_unit_path}")
	get_source_file_property(module_dependencies "${header_unit_path}" OBJECT_DEPENDS)

	get_compile_system_header_unit_command(
		"${header_unit_path}"
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
		"${header_unit_path}"
		${module_dependencies}
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
	file(REAL_PATH "${header_unit}" header_unit_path EXPAND_TILDE)
	cmake_path(GET header_unit FILENAME header_unit_file)

	read_module_properties("${header_unit_path}")
	get_source_file_property(module_dependencies "${header_unit_path}" OBJECT_DEPENDS)

	get_compile_user_header_unit_command(
		"${header_unit_path}"
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
		${header_unit_path}
		${module_dependencies}
	COMMENT
		"Generating precompiled user header unit ${header_unit_file}"
	)

endfunction()

function(add_module_unit_command
	module_unit_file
	module_unit_name
	module_interface
	module_object
)

	get_compile_module_interface_command(
		"${module_unit_file}"
		"${module_interface}"
		"${module_object}"
		compile_module_interface_command
		compile_module_object_command
	)

	get_source_file_property(module_dependencies "${module_unit_file}" OBJECT_DEPENDS)

	add_custom_command(
	OUTPUT
		${module_interface}
	COMMAND
		${compile_module_interface_command}
	VERBATIM
	DEPENDS
		${module_unit_file}
		${module_dependencies}
	COMMENT
		"Generating precompiled module interface ${module_unit_name}"
	)

	add_custom_command(
	OUTPUT
		${module_object}
	COMMAND
		${compile_module_object_command}
	VERBATIM
	DEPENDS
		${module_interface}
	COMMENT
		"Generating precompiled module object ${module_unit_name}"
	)
endfunction()

function(link_module_dependencies
	module_unit_file
	target_name
	link_visibility
)
	get_source_file_property(module_dependencies "${module_unit_file}" "MODULE_DEPENDENCIES")
	target_link_libraries(
		"${target_name}"
	"${link_visibility}"
		${module_dependencies}
	)

endfunction()


function(add_module
	module_interface_file
)
	read_module_properties("${module_interface_file}")

	get_source_file_property(module_type "${module_interface_file}" "MODULE_TYPE")
	if	(NOT "${module_type}" STREQUAL "PRIMARY_INTERFACE")
		message(FATAL_ERROR "The file '${module_interface_file}' is of module type '${module_type}'! Expected 'PRIMARY_INTERFACE'!")
	endif()

	get_source_file_property(module_name "${module_interface_file}" "MODULE_NAME")

	add_module_unit_command(
		"${module_interface_file}"
		"${module_name}"
		"${PREBUILT_MODULE_PATH}/${module_name}${MODULE_INTERFACE_EXTENSION}"
		"${PREBUILT_MODULE_PATH}/${module_name}${CMAKE_CXX_OUTPUT_EXTENSION}"
	)

	add_library(
		"${module_name}"
	STATIC
		"${PREBUILT_MODULE_PATH}/${module_name}${CMAKE_CXX_OUTPUT_EXTENSION}"
	)

	set_target_properties("${module_name}" PROPERTIES LINKER_LANGUAGE CXX)

	link_module_dependencies("${module_interface_file}" "${module_name}" "INTERFACE")

	foreach(unit_file IN LISTS ARGN)

		read_module_properties("${unit_file}")

		get_source_file_property(file_module_name "${unit_file}" "MODULE_NAME")
		if	(NOT "${module_name}" STREQUAL "${file_module_name}")
			message(FATAL_ERROR "The file '${unit_file}' is part of module '${file_module_name}'! Expected '${module_name}'!")
		endif()

		get_source_file_property(file_module_type "${unit_file}" "MODULE_TYPE")
		if	("${file_module_type}" MATCHES "_PARTITION$")

			get_source_file_property(partition_name "${unit_file}" "MODULE_PARTITION")

			target_sources(
				"${module_name}"
			PRIVATE
				"${PREBUILT_MODULE_PATH}/${module_name}-${partition_name}${CMAKE_CXX_OUTPUT_EXTENSION}"
			)

			add_module_unit_command(
				"${unit_file}"
				"${module_name}:${partition_name}"
				"${PREBUILT_MODULE_PATH}/${module_name}-${partition_name}${MODULE_INTERFACE_EXTENSION}"
				"${PREBUILT_MODULE_PATH}/${module_name}-${partition_name}${CMAKE_CXX_OUTPUT_EXTENSION}"
			)

		elseif("${file_module_type}" STREQUAL "IMPLEMENTATION")

			target_sources("${module_name}" PRIVATE "${unit_file}")

		else()
			message(
			FATAL_ERROR
				"The file '${unit_file}' is of module type '${file_module_type}'! Expected 'INTERFACE_PARTITION', 'IMPLEMENTATION_PARTITION' or 'IMPLEMENTATION'!"
			)
		endif()

		link_module_dependencies("${unit_file}" "${module_name}" "INTERFACE")

	endforeach()

endfunction()

function(add_module_dependencies
	target_name
)
	foreach(source_file IN LISTS ARGN)

		read_module_properties("${source_file}")

		link_module_dependencies("${source_file}" "${target_name}" "PUBLIC")

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

function(
	add_standard_module
)
	add_user_header_unit(
		${CXX20_MODULES_PATH}/include/std.hpp
	)

	include_directories(${CXX20_MODULES_PATH}/include/)

	add_module(${CXX20_MODULES_PATH}/Std.cpp)


endfunction()

add_standard_module()
