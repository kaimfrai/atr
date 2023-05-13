function(read_module_properties
	file_name
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
	set(regex_header
		"(<${regex_file}>|\"${regex_file}\")"
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

	file(READ
		${file_path}
		file_content
	)

	#module declarations and imports
	string(
	REGEX MATCHALL
		"${regex_module}${regex_name}|${regex_import}(:?${regex_id}|${regex_header})"
		file_content
		"${file_content}"
	)

	string(
	REGEX MATCH
		"${regex_module}${regex_name}"
		module_declaration
		"${file_content}"
	)
	set(module_name
		""
	)
	set(module_partition
		""
	)
	set(module_type
		"NONE"
	)
	set(
		module_imports
	)

	list(
	LENGTH
		module_declaration
		module_declaration_count
	)

	if	(	module_declaration_count
		GREATER
			1
		)

		message(
		FATAL_ERROR
			"File ${file_path} contained more than one module declaration!"
		)

	elseif(	module_declaration_count
		EQUAL
			1
		)

		string(
		REGEX REPLACE
			"${regex_module}"
			""
			module_name
			"${module_declaration}"
		)

		if	(	module_name
			MATCHES
				"^${regex_id}:${regex_id}$"
			)

			string(
			REGEX REPLACE
				"${regex_id}:"
				""
				module_partition
				"${module_name}"
			)

			if	(	NOT
					${module_partition}
				MATCHES
					"^(${regex_submodule}\.)*${file_stem}$"
				)
				message(
				WARNING
					"Partition name '${module_name}' does not match file name '${file_path}'"
				)
			endif()

			string(
			REGEX REPLACE
				":${regex_id}"
				""
				module_name
				"${module_name}"
			)

			if	(	${module_declaration}
				MATCHES
					"${regex_new_line}export"
				)
				set(module_type
					"INTERFACE_PARTITION"
				)
			else()
				set(module_type
					"IMPLEMENTATION_PARTITION"
				)
			endif()

		elseif(	${module_declaration}
			MATCHES
				"${regex_new_line}export"
			)

			set(module_type
				"PRIMARY_INTERFACE"
			)

			if	(	NOT
					${module_name}
				MATCHES
					"^(${regex_submodule}\.)*${file_stem}$"
				)
				message(
				WARNING
					"Module name '${module_name}' does not match file name '${file_path}'"
				)
			endif()

		else()

			set(
				module_type
				"IMPLEMENTATION"
			)
			list(
			APPEND
				module_imports
				${module_name}
			)

		endif()

	endif()

	string(
	REGEX MATCHALL
		"${regex_import}${regex_id}"
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
	APPEND
		module_imports
		${named_module_imports}
	)

	if	(module_name)
		string(
		REGEX MATCHALL
			"${regex_import}:${regex_id}"
			partition_imports
			"${file_content}"
		)

		list(
		TRANSFORM
			partition_imports
		REPLACE
			"${regex_import}"
			"${module_name}"
		)

		list(
		APPEND
			module_imports
			${partition_imports}
		)
	endif()

	string(
	REGEX MATCHALL
		"${regex_import}${regex_header}"
		header_unit_imports
		"${file_content}"
	)
	list(
	TRANSFORM
		header_unit_imports
	REPLACE
		"${regex_import}(<|\")(${regex_file})(>|\")"
		"\\4"
	)


	get_source_file_property(
		object_depends
		"${file_path}"
		OBJECT_DEPENDS
	)
	if	(NOT object_depends)
		set(object_depends)
	endif()

	set(
		module_dependency_binaries
		${module_imports}
	)
	list(
	TRANSFORM
		module_dependency_binaries
	REPLACE
		"[.:]"
		"/"
	)

	list(
	TRANSFORM
		module_dependency_binaries
	PREPEND
		"${PREBUILT_MODULE_PATH}/"
	)
	list(
	TRANSFORM
		module_dependency_binaries
	APPEND
		"${MODULE_INTERFACE_EXTENSION}"
	)

	set(
		header_unit_binaries
		${header_unit_imports}
	)
	list(
	TRANSFORM
		header_unit_binaries
	PREPEND
		"${PREBUILT_MODULE_PATH}/"
	)
	list(
	TRANSFORM
		header_unit_binaries
	APPEND
		"${MODULE_INTERFACE_EXTENSION}"
	)

	list(
	APPEND
		object_depends
		${module_dependency_binaries}
		${header_unit_binaries}
	)

	get_source_file_property(
		compile_options
		"${file_path}"
		COMPILE_OPTIONS
	)
	if	(NOT compile_options)
		set(compile_options)
	endif()

	get_module_dependency_flag_list(
		"${module_imports}"
		"${module_dependency_binaries}"
		module_dependency_flag_list
	)
	get_header_dependency_flag_list(
		"${header_unit_binaries}"
		header_dependency_flag_list
	)
	list(
	APPEND
		compile_options
		${module_dependency_flag_list}
		${header_dependency_flag_list}
	)

	if (module_name)

		get_module_output_files(
			"${module_name}"
			"${module_partition}"
			module_interface_file
			module_object_file
		)

	else()

		set(module_interface_file "")
		set(module_object_file "")

	endif()


	set_source_files_properties(
		"${file_path}"
	PROPERTIES
	MODULE_NAME
		"${module_name}"
	MODULE_PARTITION
		"${module_partition}"
	MODULE_INTERFACE_FILE
		"${module_interface_file}"
	MODULE_OBJECT_FILE
		"${module_object_file}"
	MODULE_TYPE
		"${module_type}"
	MODULE_IMPORTS
		"${module_imports}"
	MODULE_DEPENDENCIES
		"${named_module_imports}"
	OBJECT_DEPENDS
		"${object_depends}"
	COMPILE_OPTIONS
		"${compile_options}"
	LANGUAGE
		CXX
	)

endfunction()
