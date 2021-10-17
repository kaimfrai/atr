cmake_minimum_required(VERSION 3.18)

project(archetype LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_EXTENSIONS OFF)
set(PREBUILT_MODULE_PATH ${CMAKE_BINARY_DIR}/modules)
file(MAKE_DIRECTORY ${PREBUILT_MODULE_PATH})

add_compile_options(
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
	-Wno-float-equal								# generally sensible
	-Wno-switch-enum								# triggers even when a default is present
	-Wno-double-promotion							# sensible implicit conversion
	-Wno-float-conversion							# sensible implicit conversion
	-Wno-implicit-float-conversion					# sensible implicit conversion
	-Wno-redundant-parens							# redundant parenthesis help understanding
)
add_compile_options(
	-fmodules
	-fbuiltin-module-map
	-fimplicit-module-maps
	-fprebuilt-module-path=${PREBUILT_MODULE_PATH}
)

add_custom_target(
	Logic
	COMMAND
	${CMAKE_CXX_COMPILER}
	-std=c++20
	-fmodules
	-c ${CMAKE_CURRENT_SOURCE_DIR}/Logic.cpp
	-Xclang -emit-module-interface
	-o ${PREBUILT_MODULE_PATH}/Logic.pcm
	-fprebuilt-module-path=${PREBUILT_MODULE_PATH}
)

add_executable(${PROJECT_NAME} main.cpp)
add_dependencies(${PROJECT_NAME} Logic)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
