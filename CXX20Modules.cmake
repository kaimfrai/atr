function(invoke_preprocessor
	file_name
	out_preprocessed_file
)
	execute_process(
	COMMAND
		${CMAKE_CXX_COMPILER}
		#${CXX_STANDARD_VERSION_FLAG}
		${CXX_STANDARD_LIBRARY_FLAG}
		${WARNING_FLAGS}
		${ADDITIONAL_COMPILE_OPTIIONS}
		--preprocess --no-line-commands
		${CMAKE_CURRENT_SOURCE_DIR}/${file_name}
	OUTPUT_VARIABLE
		preprocessed_file
	)
	set(${out_preprocessed_file} ${preprocessed_file} PARENT_SCOPE)
endfunction()

function(read_module_name
	preprocessed_file
	out_module_name
	out_module_file
)
	string(REGEX MATCH "export[ \t\r\n]+module[ \t\r\n]+[a-zA-Z_][a-zA-Z0-9_.]*" module_name "${preprocessed_file}")
	list(TRANSFORM module_name REPLACE "export[ \t\r\n]+module[ \t\r\n]+" "")

	set(${out_module_name} ${module_name} PARENT_SCOPE)
	set(${out_module_file} ${PREBUILT_MODULE_PATH}/${module_name}.pcm PARENT_SCOPE)
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
	list(TRANSFORM module_dependency_files APPEND .pcm)
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
	invoke_preprocessor(${module_interface_file} preprocessed_module_file)
	read_module_name("${preprocessed_module_file}" module_name module_file)
	read_module_dependencies("${preprocessed_module_file}" module_dependencies module_dependency_files)

	add_custom_command(
	OUTPUT
		${module_file}
	COMMAND
		${CMAKE_CXX_COMPILER}
		${CXX_STANDARD_VERSION_FLAG}
		${CXX_STANDARD_LIBRARY_FLAG}
		${WARNING_FLAGS}
		${MODULE_FLAGS}
		${ADDITIONAL_COMPILE_OPTIIONS}
		--compile ${CMAKE_CURRENT_SOURCE_DIR}/${module_interface_file}
		-Xclang -emit-module-interface
		-o ${module_file}
	VERBATIM
	MAIN_DEPENDENCY
		${module_interface_file}
	DEPENDS
		${module_dependency_files}
	COMMENT
		"Generating precompiled module ${module_name}"
	)

	add_library(
		${module_name}
	INTERFACE
		${module_interface_file}
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
