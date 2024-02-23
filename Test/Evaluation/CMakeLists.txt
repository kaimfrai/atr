add_module(SizeCheck.cpp)

add_subdirectory(
	Archetype
)

add_module_object_tests(
	TransformReduce
	CRTP
	Replication
	Virtual
)
