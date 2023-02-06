add_single_file_modules(
	ATR.cpp

	Literals.cpp

	Erase.cpp
	Address.cpp
	Dependency.cpp

	DependencyIDMap.cpp

	Instance.cpp
)

add_subdirectory(Layout)
add_subdirectory(Member)
add_subdirectory(Offset)
add_subdirectory(Virtual)
