add_single_file_modules(
	Literals.cpp

	Erase.cpp
	Dependency.cpp
	Address.cpp
	Layout.cpp
)

add_subdirectory(Member)

add_single_file_modules(
	DependencyIDMap.cpp
)

add_subdirectory(Layout)
add_subdirectory(Virtual)

add_single_file_modules(
	Instance.cpp

	ATR.cpp
)
