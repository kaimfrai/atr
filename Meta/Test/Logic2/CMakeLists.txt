add_module(
	Data.cpp
)

function(add_logic2_test
	test_name
)
	add_module_object_library("Meta.Logic2.Test.${test_name}" "${test_name}.cpp")
endfunction()

add_logic2_test(Equivalence)
add_logic2_test(Negation)

add_logic2_test(Constant_and_Constant)
add_logic2_test(Constant_or_Constant)
add_logic2_test(Constant_and_Literal)
add_logic2_test(Constant_or_Literal)
add_logic2_test(Constant_and_Clause)
add_logic2_test(Constant_or_Clause)
add_logic2_test(Constant_and_Term)
add_logic2_test(Constant_or_Term)

add_logic2_test(Literal_and_Constant)
add_logic2_test(Literal_or_Constant)
add_logic2_test(Literal_and_Literal)
add_logic2_test(Literal_or_Literal)
add_logic2_test(Literal_and_Clause)
add_logic2_test(Literal_or_Clause)
add_logic2_test(Literal_and_Term)
add_logic2_test(Literal_or_Term)

add_logic2_test(Clause_and_Constant)
add_logic2_test(Clause_or_Constant)
add_logic2_test(Clause_and_Literal)
add_logic2_test(Clause_or_Literal)
add_logic2_test(Clause_and_Clause)
add_logic2_test(Clause_or_Clause)
add_logic2_test(Clause_and_Term)
add_logic2_test(Clause_or_Term)
