cmake_minimum_required(VERSION 3.0)

project(archetype LANGUAGES CXX)

add_executable(${PROJECT_NAME} main.cpp)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_EXTENSIONS OFF)

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

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
