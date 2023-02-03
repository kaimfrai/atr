add_single_file_modules(
	ATR.cpp

	DataMember.cpp
	LayoutConfig.cpp

	Literals.cpp

	Erase.cpp
	Address.cpp
	Dependency.cpp

	Concatenate.cpp
	DependencyIDMap.cpp

	Instance.cpp
)

add_subdirectory(Layout)
add_subdirectory(Member)
add_subdirectory(Virtual)
