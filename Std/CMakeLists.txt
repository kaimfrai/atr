add_module(Std.TypeTraits
	TypeTraits.cpp
)
add_module(Std.Utility
	Utility.cpp
)

add_module(Std
	Std.cpp
)
add_dependencies(Std
	Std.TypeTraits
	Std.Utility
)
