add_module(Meta.Pack
	Pack.cpp
)

add_dependencies(Meta.Pack
	Meta.Common
	Meta.TypeTraits
)
