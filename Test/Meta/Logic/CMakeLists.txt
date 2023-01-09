add_module(
	Data.hpp
)
function(add_logic_test
	test_name
)
	add_module_object_library("Test.Meta.Logic.${test_name}" "${test_name}.cpp")
endfunction()


add_logic_test(static_assert)

add_subdirectory(Equivalence)
add_subdirectory(Negation)

add_logic_test(Constant_and_Constant)
add_logic_test(Constant_or_Constant)
add_logic_test(Constant_and_Literal)
add_logic_test(Constant_or_Literal)
add_logic_test(Constant_and_Clause)
add_logic_test(Constant_or_Clause)
add_logic_test(Constant_and_Term)
add_logic_test(Constant_or_Term)

add_logic_test(Literal_and_Constant)
add_logic_test(Literal_or_Constant)
add_logic_test(Literal_and_Literal)
add_logic_test(Literal_or_Literal)
add_logic_test(Literal_and_Clause)
add_logic_test(Literal_or_Clause)
add_logic_test(Literal_and_Term)
add_logic_test(Literal_or_Term)

add_subdirectory(Clause_and_Term)
add_subdirectory(Clause_or_Term)
