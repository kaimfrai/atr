set(CMAKE_SYSTEM_NAME Linux)

set(CMAKE_C_COMPILER "clang-13")
set(CMAKE_CXX_COMPILER "clang++-13")

set(CXX_STANDARD_VERSION_FLAG
	-std=c++2b
)
set(CXX_STANDARD_LIBRARY_FLAG
	-stdlib=libc++
)
set(PREBUILT_MODULE_PATH
	${CMAKE_BINARY_DIR}/modules/${CMAKE_BUILD_TYPE}
)

file(
MAKE_DIRECTORY
	${PREBUILT_MODULE_PATH}
)

set(MODULE_INTERFACE_EXTENSION
	.pcm
)

set(WARNING_FLAGS
	-Wall
	-Wextra
	-Wpedantic
	#-Wmissing-variable-declarations
	#-Wcomma
	#-Wauto-import
	#-Werror
	#-Weverything
	-Wno-weak-vtables
	-Wno-padded
	#triggered when using std::sort with defaulted comparison
	-Wno-logical-op-parentheses
	-Wno-zero-as-null-pointer-constant
	-Wno-c++98-compat-pedantic		#using c++23
	-Wno-pre-c++17-compat-pedantic	#using c++23
	-Wno-c++20-compat-pedantic		#using c++23
)
set(MODULE_FLAGS
	-fmodules
	-fprebuilt-module-path=${PREBUILT_MODULE_PATH}
	-fbuiltin-module-map
	-fmodules-cache-path=${PREBUILT_MODULE_PATH}
	-Xclang -fdisable-module-hash
)
set(ADDITIONAL_COMPILE_OPTIONS
	-fconstexpr-backtrace-limit=0
	-ftemplate-backtrace-limit=0
	-frelaxed-template-template-args
	-fconstexpr-steps=4294967295
	-ftime-trace
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
	module_file
	out_command
)


	get_directory_property(
		include_directories
		INCLUDE_DIRECTORIES
	)

	if	(include_directories)
		string(PREPEND include_directories "-I")
	endif()

	set(
		command
		${CMAKE_CXX_COMPILER}
		${CXX_STANDARD_VERSION_FLAG}
		${CXX_STANDARD_LIBRARY_FLAG}
		${include_directories}
		${WARNING_FLAGS}
		${MODULE_FLAGS}
		${ADDITIONAL_COMPILE_OPTIONS}
		--compile ${CMAKE_CURRENT_SOURCE_DIR}/${module_interface_file}
		-Xclang -emit-module-interface
		--output ${module_file}
	)

	set(
	${out_command}
		${command}
	PARENT_SCOPE)

endfunction()
