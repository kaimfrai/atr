add_subdirectory(
	Pack
)
add_subdirectory(
	Logic
)
add_subdirectory(
	TypeTraits
)
add_subdirectory(
	Concepts
)

add_module(Meta
	Meta.cpp
)

add_dependencies(Meta
	Meta.Pack
	Meta.Logic
	Meta.TypeTraits
	Meta.Concepts
)
