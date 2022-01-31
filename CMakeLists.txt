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

include(CMake/CXX20Modules.cmake)

add_compile_options(
	${CXX_STANDARD_LIBRARY_FLAG}
	${WARNING_FLAGS}
	${MODULE_FLAGS}
	${ADDITIONAL_COMPILE_OPTIONS}
)
add_link_options(
	${CXX_STANDARD_LIBRARY_FLAG}
)

add_subdirectory(Std)
add_subdirectory(Meta)
add_subdirectory(Test)

add_subdirectory(ThirdParty)

add_subdirectory(Stateless)
add_subdirectory(Fold)
add_subdirectory(Pack)
add_subdirectory(PackTemplate)
add_subdirectory(ATR)
add_subdirectory(Evaluation)

add_subdirectory(Legacy)

add_module(
	TestModule.cpp
IMPLEMENTATION
	Foo.cpp
	Bar.cpp
)

add_module_executable(
${PROJECT_NAME}
	main.cpp
)
