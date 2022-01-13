include_directories(
	${CMAKE_SOURCE_DIR}
)

add_module(Shapes.cpp)
add_module(Bodies.cpp)
add_executable(
	evaluation_archetype
		Main.cpp
)
target_compile_options(
	evaluation_archetype
		PRIVATE
		-Wno-error
		-Wno-everything
)
add_module_dependencies(evaluation_archetype)
