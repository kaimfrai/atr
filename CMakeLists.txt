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

add_compile_options(
	${CXX_STANDARD_LIBRARY_FLAG}
	${WARNING_FLAGS}
	${MODULE_FLAGS}
	${ADDITIONAL_COMPILE_OPTIONS}
)
add_link_options(
	${CXX_STANDARD_LIBRARY_FLAG}
)

include(CXX20Modules.cmake)

add_subdirectory(Std)
add_subdirectory(Meta)
add_subdirectory(Test)
add_subdirectory(ThirdParty)
add_subdirectory(Layout)
add_subdirectory(Function)
add_subdirectory(Archetype)
add_subdirectory(Evaluation)
add_subdirectory(Legacy)

add_executable(
	${PROJECT_NAME} main.cpp
)

add_module_dependencies(${PROJECT_NAME}
	Std
	Meta
)
