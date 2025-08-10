include(${CMAKE_CURRENT_LIST_DIR}/${CMAKE_CXX_COMPILER_ID}.cmake)

function(cxx_module_link_imports
	target_name
	target_depends
)
	foreach(
		dep
	IN LISTS
		target_depends
	)
		get_target_property(
		interface_link_libraries
			"${dep}"
		INTERFACE_LINK_LIBRARIES
		)

		if(	interface_link_libraries
		)
			list(
			APPEND
				target_depends
				${interface_link_libraries}
			)

		endif()

	endforeach()

	list(
	REMOVE_DUPLICATES
		target_depends
	)
	target_link_libraries(
		"${target_name}"
	PUBLIC
		${target_depends}
	)

endfunction()

function(cxx_module_provide_import_flags
	target_name
	module_name
)
	cxx_module_import_flag(
		"${target_name}"
		"${module_name}"
	module_import_flag
	)

	target_compile_options(
		"${target_name}"
	INTERFACE
		"${module_import_flag}"
	)
	target_link_options(
		"${target_name}"
	INTERFACE
		"${module_import_flag}"
	)

endfunction()

function(cxx_module_primary
	file_name
	module_name
)
	add_library(
		"${module_name}"
	OBJECT
		"${file_name}"
	)

	cxx_module_provide_import_flags(
		"${module_name}"
		"${module_name}"
	)

	set_source_files_properties(
		"${file_name}"
	PROPERTIES
		LANGUAGE
			CXXModule
		OBJECT_DEPENDS
			"${ARGN}"
	)

	cxx_module_link_imports(
		"${module_name}"
		"${ARGN}"
	)

endfunction()

function(cxx_module_partition
	file_name
	module_name
	partition_name
)
	add_library(
		"${module_name}-${partition_name}"
	OBJECT
		"${file_name}"
	)

	cxx_module_provide_import_flags(
		"${module_name}-${partition_name}"
		"${module_name}:${partition_name}"
	)

	set_source_files_properties(
		"${file_name}"
	PROPERTIES
		LANGUAGE
			CXXModule
		OBJECT_DEPENDS
			"${ARGN}"
	)

	cxx_module_link_imports(
		"${module_name}-${partition_name}"
		"${ARGN}"
	)

endfunction()

function(cxx_module_implementation
	file_name
	module_name
)
	if(
	NOT TARGET
		"${module_name}+"
	)
		add_library(
			"${module_name}+"
		OBJECT
		)

	endif()

	target_sources(
		"${module_name}+"
	PUBLIC
		"${file_name}"
	)

	set_source_files_properties(
		"${file_name}"
	PROPERTIES
		LANGUAGE
			CXX
		OBJECT_DEPENDS
			"${ARGN}"
	)

	cxx_module_link_imports(
		"${module_name}+"
		"${ARGN}"
	)

endfunction()

function(cxx_module_global
	file_name
	target_name
)
	set_source_files_properties(
		"${file_name}"
	PROPERTIES
		LANGUAGE
			CXX
		OBJECT_DEPENDS
			"${ARGN}"
	)

	cxx_module_link_imports(
		"${target_name}"
		"${ARGN}"
	)

	get_target_property(
	interface_link_libraries
		"${target_name}"
	INTERFACE_LINK_LIBRARIES
	)

	foreach(
		dep
	IN LISTS
		interface_link_libraries
	)
		if(
		TARGET
			"${dep}+"
		)
			target_sources(
				"${target_name}"
			PUBLIC
				$<TARGET_OBJECTS:${dep}+>
			)

		endif()

	endforeach()

endfunction()

function(read_module_properties
	file_name
	target_name
	out_module_name
)
	set(regex_whitespace
		"[ \t]+"
	)
	set(regex_submodule
		"[a-zA-Z_][a-zA-Z0-9_]*"
	)
	set(regex_id
		"[a-zA-Z_][a-zA-Z0-9_.]*"
	)
	set(regex_file
		"[a-zA-Z0-9_./\:]+"
	)
	set(regex_name
		"${regex_id}(:${regex_id})?"
	)
	set(regex_new_line
		"(^|[\n\r])"
	)
	set(regex_module
		"${regex_new_line}(export${regex_whitespace})?module${regex_whitespace}"
	)
	set(regex_import
		"${regex_new_line}(export${regex_whitespace})?import${regex_whitespace}"
	)

	get_source_file_property(
	file_path
		"${file_name}"
	LOCATION
	)
	cmake_path(
	GET
		file_path
	STEM
		file_stem
	)

	file(
	READ
		"${file_path}"
	file_content
	)

	# module declarations and imports
	string(
	REGEX MATCHALL
		"${regex_module}${regex_name}|${regex_import}:?${regex_id}"
	file_content
		"${file_content}"
	)

	string(
	REGEX MATCHALL
		"${regex_import}:?${regex_id}"
	named_module_imports
		"${file_content}"
	)
	list(
	TRANSFORM
		named_module_imports
	REPLACE
		"${regex_import}"
		""
	)
	list(
	REMOVE_DUPLICATES
		named_module_imports
	)

	string(
	REGEX MATCH
		"${regex_module}${regex_name}"
	module_declaration
		"${file_content}"
	)
	list(
	LENGTH
		module_declaration
	module_declaration_count
	)

	if(	module_declaration_count
	GREATER
		1
	)
		message(
		FATAL_ERROR
			"${file_path} contained more than one module declaration!"
		)

	elseif(
		module_declaration_count
	EQUAL
		1
	)
		string(
		REGEX REPLACE
			"${regex_module}"
			""
		full_module_name
			"${module_declaration}"
		)
		string(
		REGEX REPLACE
			":${regex_id}"
			""
		module_name
			"${full_module_name}"
		)

		list(
		TRANSFORM
			named_module_imports
		REPLACE
			":"
			"${module_name}-"
		)

		if(	full_module_name
		MATCHES
			"^${regex_id}:${regex_id}$"
		)

			string(
			REGEX REPLACE
				"${regex_id}:"
				""
			module_partition
				"${full_module_name}"
			)

			if(
			NOT	${module_partition}
			MATCHES
				"^(${regex_submodule}\.)*${file_stem}$"
			)
				message(
				WARNING
					"Partition name '${full_module_name}' does not match file name '${file_path}'"
				)

			endif()

			cxx_module_partition(
				"${file_name}"
				"${module_name}"
				"${module_partition}"
				${named_module_imports}
			)

		elseif(
			${module_declaration}
		MATCHES
			"${regex_new_line}export"
		)

			if(
			NOT	${module_name}
			MATCHES
				"^(${regex_submodule}\.)*${file_stem}$"
			)
				message(
				WARNING
					"Module name '${module_name}' does not match file name '${file_path}'"
				)

			endif()

			cxx_module_primary(
				"${file_name}"
				"${module_name}"
				${named_module_imports}
			)

		else(
		)
			if(
			NOT TARGET
				"${module_name}"
			)
				message(
				SEND_ERROR
					"${file_path} was listed as the first unit in a module but it is an implementation unit!"
				)

			endif()

			cxx_module_implementation(
				"${file_name}"
				"${module_name}"
				${module_name}
				${named_module_imports}
			)

		endif()

		set("${out_module_name}"
			"${module_name}"
		PARENT_SCOPE
		)

	else(
	)
		cxx_module_global(
			"${file_name}"
			"${target_name}"
			${named_module_imports}
		)

		set("${out_module_name}"
			""
		PARENT_SCOPE
		)

	endif()

endfunction()
