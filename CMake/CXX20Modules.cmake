include(CMake/CXX20Modules/${CMAKE_CXX_COMPILER_ID}.cmake)

function(invoke_preprocessor
	file_name
	out_preprocessed_file
)
	file(READ
		${CMAKE_CURRENT_SOURCE_DIR}/${file_name}
		file_content
	)
	#pseudo-preprocessor which only ignores comments
	string(REGEX REPLACE
		"(//[^\n]*\n)|(/[*].*[*]/)"
		""
		file_content
		${file_content}
	)
	#module declarations and imports
	string(REGEX MATCHALL
		"(^|[ \n\r\n;])(import|export[ \t\r\n]+module)[ \t\r\n]+(<|\")?[a-zA-Z_][a-zA-Z0-9_.]*(>|\")?"
		file_content
		${file_content}
	)
	set(${out_preprocessed_file} "${file_content}" PARENT_SCOPE)

endfunction()

function(read_module_name
	preprocessed_file
	out_module_name
	out_module_file
)
	string(REGEX MATCH "export[ \t\r\n]+module[ \t\r\n]+[a-zA-Z_][a-zA-Z0-9_.]*" module_name "${preprocessed_file}")
	list(TRANSFORM module_name REPLACE "export[ \t\r\n]+module[ \t\r\n]+" "")

	set(${out_module_name} ${module_name} PARENT_SCOPE)
	set(${out_module_file} ${PREBUILT_MODULE_PATH}/${module_name}${MODULE_INTERFACE_EXTENSION} PARENT_SCOPE)

endfunction()

function(read_module_headerunits
	preprocessed_file
	out_module_headerunits
)
	string(REGEX MATCHALL "import[ \t\r\n]+(<|\")[a-zA-Z_][a-zA-Z0-9_.]*(>|\")" module_dependencies "${preprocessed_file}")
	list(TRANSFORM module_dependencies REPLACE "import[ \t\r\n]+(<|\")" "")
	list(TRANSFORM module_dependencies REPLACE "(>|\")" "")

	set(${out_module_headerunits} ${module_dependencies} PARENT_SCOPE)

endfunction()

function(read_module_dependencies
	preprocessed_file
	out_module_dependencies
	out_module_dependency_files
)
	string(REGEX MATCHALL "import[ \t\r\n]+[a-zA-Z_][a-zA-Z0-9_.]*" module_dependencies "${preprocessed_file}")
	list(TRANSFORM module_dependencies REPLACE "import[ \t\r\n]+" "")

	set(${out_module_dependencies} ${module_dependencies} PARENT_SCOPE)

	set(module_dependency_files ${module_dependencies})
	list(TRANSFORM module_dependency_files PREPEND ${PREBUILT_MODULE_PATH}/)
	list(TRANSFORM module_dependency_files APPEND ${MODULE_INTERFACE_EXTENSION})
	set(${out_module_dependency_files} ${module_dependency_files} PARENT_SCOPE)

endfunction()

function(add_module_source_dependencies
	target_name
	source_file
	module_dependencies
	module_dependency_files
)
	list(LENGTH module_dependencies module_dependency_count)
	if(${module_dependency_count} GREATER 0)
		add_dependencies(${target_name}
			${module_dependencies}
		)

		set_source_files_properties(
			${source_file}
		OBJECT_DEPENDS
			"${module_dependency_files}"
		)
	endif()

endfunction()

function(add_module
	module_interface_file
)
	cmake_parse_arguments(
		MODULE
		""
		""
		"IMPLEMENTATION;BYPRODUCTS;INCLUDES"
		${ARGN}
	)

	invoke_preprocessor(${module_interface_file} preprocessed_module_file)
	read_module_name("${preprocessed_module_file}" module_name module_file)

	if	(NOT module_name)
		message(FATAL_ERROR "File ${module_interface_file} did not specify a valid module name!")
	endif()

	read_module_dependencies("${preprocessed_module_file}" module_dependencies module_dependency_files)
	read_module_headerunits("${preprocessed_module_file}" module_header_units)

	get_compile_module_interface_command(
		${module_interface_file}
		${module_file}
		"${MODULE_INCLUDES}"
		compile_module_interface_command
	)

	add_custom_command(
	OUTPUT
		${module_file}
	COMMAND
		${compile_module_interface_command}
	VERBATIM
	MAIN_DEPENDENCY
		${module_interface_file}
	DEPENDS
		${module_dependency_files}
	BYPRODUCTS
		${MODULE_BYPRODUCTS}
	COMMENT
		"Generating precompiled module ${module_name}"
	)

	if	("${MODULE_IMPLEMENTATION}" STREQUAL "")

		add_library(
			${module_name}
		INTERFACE
			${module_interface_file}
		)
	else()
		add_library(
			${module_name}
		OBJECT
			${module_interface_file}
			${MODULE_IMPLEMENTATION}
		)

		target_compile_options(
			${module_name}
		PRIVATE
			-fmodule-file=${module_file}
		)
	endif()

	add_module_source_header_units(
		${module_name}
		${module_interface_file}
		"${module_header_units}"
	)

	add_module_source_dependencies(
		${module_name}
		${module_interface_file}
		"${module_dependencies}"
		"${module_dependency_files}"
	)
endfunction()

function(add_module_dependencies
	target_name
)
	get_target_property(target_source_files
		${target_name}
		SOURCES
	)

	foreach(source_file IN LISTS target_source_files)

		invoke_preprocessor(${source_file} preprocessed_module_file)
		read_module_dependencies("${preprocessed_module_file}" module_dependencies module_dependency_files)
		add_module_source_dependencies(
			${target_name}
			${source_file}
			"${module_dependencies}"
			"${module_dependency_files}"
		)

		#add a link dependency for non-interface libraries
		foreach(dependency IN LISTS module_dependencies)
			get_target_property(dependency_type ${dependency} TYPE)
			if	(	${dependency_type} MATCHES "[A-Z]+_LIBRARY"
				AND	NOT
					${dependency_type} STREQUAL "INTERFACE_LIBRARY"
				)
				target_link_libraries(
					${target_name}
					${dependency}
				)
			endif()
		endforeach()

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
		${target_name}
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
		${target_name}
	)

endfunction()