add_library(
	Meta.Type.Test
OBJECT
	Equality.cpp
	Pointer.cpp
)

add_module_dependencies(
	Meta.Type.Test
)
