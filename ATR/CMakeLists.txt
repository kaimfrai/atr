add_single_file_modules(
	Erase.cpp
	Dependency.cpp
	Address.cpp
)

add_subdirectory(Member)
add_subdirectory(Layout)

add_single_file_modules(
	DependencyIDMap.cpp
	Instance.cpp
)

add_subdirectory(Virtual)

add_single_file_modules(
	Literals.cpp
	ATR.cpp
)
