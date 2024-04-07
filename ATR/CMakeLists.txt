add_subdirectory(Member)
add_subdirectory(Layout)
add_single_file_modules(
	Erase.cpp
)

add_single_file_modules(
	Dependency.cpp
	DependencyIDMap.cpp
	Address.cpp
	Base.cpp
	Instance.cpp
)

add_subdirectory(Virtual)
add_subdirectory(District)

add_single_file_modules(
	Literals.cpp
	ATR.cpp
)
