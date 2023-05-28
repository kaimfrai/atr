add_single_file_modules(
	Count.cpp
	Size.cpp
	PointerCast.cpp
)

add_subdirectory(Count)
add_subdirectory(Size)

add_single_file_modules(
	Alignment.cpp
	Constraint.cpp
	Ceil.cpp
)
