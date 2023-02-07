add_single_file_modules(
	Info.cpp
	List.cpp
	Alias.cpp
)

add_subdirectory(Offset)

add_single_file_modules(
	View.cpp
	Compare.cpp
	Contains.cpp
	Definition.cpp
	Difference.cpp
	InfixDefinition.cpp
	Static.cpp
	Offset.cpp
	OffsetOf.cpp
	PrefixDefinition.cpp
	SuffixDefinition.cpp
	Transform.cpp
	Union.cpp
)
