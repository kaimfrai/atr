cmake_minimum_required(
VERSION
	3.20
	#required for CXX_STANDARD 23
)

project(
	archetype
LANGUAGES
	CXX
)

set(CMAKE_CXX_STANDARD
	23
)
set(CMAKE_CXX_STANDARD_REQUIRED
	TRUE
)
set(CMAKE_CXX_EXTENSIONS
	OFF
)
set(CXX_STANDARD_VERSION_FLAG
	-std=c++2b
)
set(CXX_STANDARD_LIBRARY_FLAG
	-stdlib=libc++
)

set(PREBUILT_MODULE_PATH
	${CMAKE_BINARY_DIR}/modules
)
file(
MAKE_DIRECTORY
	${PREBUILT_MODULE_PATH}
)

set(WARNING_FLAGS
	-Wall
	-Wextra
	-Wpedantic
	-Wmissing-variable-declarations
	-Wcomma
	-Wpadded
	-Werror
	-Weverything
	-Wno-c++98-compat-pedantic		#using c++23
	-Wno-pre-c++17-compat-pedantic	#using c++23
	-Wno-c++20-compat-pedantic		#using c++23
)
set(MODULE_FLAGS
	-fmodules
	-fprebuilt-module-path=${PREBUILT_MODULE_PATH}
	-fbuiltin-module-map
)
add_compile_options(
	${CXX_STANDARD_LIBRARY_FLAG}
	${WARNING_FLAGS}
	${MODULE_FLAGS}
)
add_link_options(
	${CXX_STANDARD_LIBRARY_FLAG}
)

function(add_module
	module_name
	module_interface_file
)
	add_custom_command(
	OUTPUT
		${PREBUILT_MODULE_PATH}/${module_name}.pcm
	COMMAND
		${CMAKE_CXX_COMPILER}
		${CXX_STANDARD_VERSION_FLAG}
		${CXX_STANDARD_LIBRARY_FLAG}
		${WARNING_FLAGS}
		${MODULE_FLAGS}
		-c ${CMAKE_CURRENT_SOURCE_DIR}/${module_interface_file}
		-Xclang -emit-module-interface
		-o ${PREBUILT_MODULE_PATH}/${module_name}.pcm
	VERBATIM
	MAIN_DEPENDENCY
		${module_interface_file}
	DEPENDS
		${ARGN}
	COMMENT
		"Generating precompiled module ${module_name}"
	)

	add_custom_target(
		${module_name}
	DEPENDS
		${PREBUILT_MODULE_PATH}/${module_name}.pcm
	)
endfunction()

add_subdirectory(
	Std
)

add_subdirectory(
	Meta
)

add_executable(
	${PROJECT_NAME} main.cpp
)
add_dependencies(${PROJECT_NAME}
	Meta
)

install(
TARGETS
	${PROJECT_NAME}
RUNTIME
DESTINATION
	bin
)
