add_single_file_modules(
	Object.cpp
)

add_subdirectory(Aggregate)

add_single_file_modules(
	Aggregate.cpp
	TupleList.cpp
	Value.cpp
)
