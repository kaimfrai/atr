add_single_file_modules(
	Literals.cpp

	Erase.cpp
	Dependency.cpp
	Address.cpp
)

add_subdirectory(Member)
add_subdirectory(Layout)
add_subdirectory(Offset)

add_single_file_modules(
	DependencyIDMap.cpp
	Instance.cpp
)

add_subdirectory(Virtual)

add_single_file_modules(
	ATR.cpp
)
