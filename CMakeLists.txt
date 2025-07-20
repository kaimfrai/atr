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

#set(CMAKE_CXX_STANDARD
	#23
#)
#set(CMAKE_CXX_STANDARD_REQUIRED
	#TRUE
#)
#set(CMAKE_CXX_EXTENSIONS
	#OFF
#)

include(CMake/CXX20Modules.cmake)

add_subdirectory(Meta)

add_subdirectory(ATR)
add_subdirectory(Evaluation)

add_subdirectory(Test)

file(
CREATE_LINK
	"${CMAKE_BINARY_DIR}/compile_commands.json"
	"${CMAKE_SOURCE_DIR}/compile_commands.json"
SYMBOLIC
)
