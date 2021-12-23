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
	-Werror
	-Weverything
	-Wno-padded
	#triggered when using std::sort with defaulted comparison
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
	-frelaxed-template-template-args
)

add_compile_options(
	${CXX_STANDARD_LIBRARY_FLAG}
	${WARNING_FLAGS}
	${MODULE_FLAGS}
	${ADDITIONAL_COMPILE_OPTIIONS}
)
add_link_options(
	${CXX_STANDARD_LIBRARY_FLAG}
)

include(CXX20Modules.cmake)

add_subdirectory(
	Std
)

add_subdirectory(
	Meta
)

add_executable(
	${PROJECT_NAME} main.cpp
)

add_module_dependencies(${PROJECT_NAME}
	Std
	Meta
)
