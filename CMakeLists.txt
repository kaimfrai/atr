cmake_minimum_required(VERSION 3.18)

project(archetype LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_EXTENSIONS OFF)
set(PREBUILT_MODULE_PATH ${CMAKE_BINARY_DIR}/modules)
file(MAKE_DIRECTORY ${PREBUILT_MODULE_PATH})

set(WARNING_FLAGS
	-Wall
	-Wextra
	-Wpedantic
	-Wmissing-variable-declarations
	-Wcomma
	-Wpadded
	#-Werror
	-Weverything
	-Wno-c++98-compat-pedantic						# we're using c++23
	-Wno-c++20-compat-pedantic
	#-Wno-redundant-parens							# redundant parenthesis help understanding
)
set(MODULE_FLAGS
	-fmodules
	-fbuiltin-module-map
	-fimplicit-module-maps
	-fprebuilt-module-path=${PREBUILT_MODULE_PATH}
)
add_compile_options(
	${WARNING_FLAGS}
	${MODULE_FLAGS}
)

add_subdirectory(Logic)

add_executable(${PROJECT_NAME} main.cpp)
add_dependencies(${PROJECT_NAME} Logic)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
