function(read_module_name
	file_name
	out_module_name
	out_module_file
)
	file(STRINGS ${file_name} module_name REGEX "export module ")
	list(TRANSFORM module_name REPLACE "export module " "")
	string(STRIP ${module_name} module_name)

	set(${out_module_name} ${module_name} PARENT_SCOPE)
	set(${out_module_file} ${PREBUILT_MODULE_PATH}/${module_name}.pcm PARENT_SCOPE)
endfunction()

function(read_module_dependencies
	file_name
	out_module_dependencies
	out_module_dependency_files
)
	file(STRINGS ${file_name} module_dependencies REGEX "import [^\<]")
	list(FILTER module_dependencies EXCLUDE REGEX "^/")
	list(TRANSFORM module_dependencies REPLACE "export " "")
	list(TRANSFORM module_dependencies REPLACE "import " "")
	list(TRANSFORM module_dependencies STRIP)

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
	read_module_name(${module_interface_file} module_name module_file)
	read_module_dependencies(${module_interface_file} module_dependencies module_dependency_files)

	add_custom_command(
	OUTPUT
		${module_file}
	COMMAND
		${CMAKE_CXX_COMPILER}
		${CXX_STANDARD_VERSION_FLAG}
		${CXX_STANDARD_LIBRARY_FLAG}
		${WARNING_FLAGS}
		${MODULE_FLAGS}
		-c ${CMAKE_CURRENT_SOURCE_DIR}/${module_interface_file}
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
		read_module_dependencies(${source_file} module_dependencies module_dependency_files)
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
