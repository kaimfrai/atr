add_single_file_modules(
	Mask.cpp
	Index.cpp
	IndexIterator.cpp
	Count.cpp
	CountOnes.cpp
	LowestOne.cpp
	OneIndexIterator.cpp
	Width.cpp
)

add_subdirectory(Index)

add_single_file_modules(
	Field.cpp
	OneIndexRange.cpp
)

add_subdirectory(Field)
add_subdirectory(Count)

add_single_file_modules(
	Access.cpp
	ElementReference.cpp
	Iterator.cpp
	Reference.cpp
	Array.cpp
)
