add_module(
	Data.cpp
)
function(add_logic_test
	test_name
)
	add_module_object_library("Test.Meta.Logic.${test_name}" "${test_name}.cpp")
endfunction()


add_logic_test(static_assert)

add_subdirectory(Equivalence)
add_subdirectory(Negation)
add_subdirectory(Clause_and_Term)
add_subdirectory(Clause_or_Term)
