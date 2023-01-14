add_subdirectory(Cache)

add_single_file_modules(
	Term.cpp
	Data.cpp
)
function(add_logic_test
	test_name
)
	add_module_object_library(
		"Test.Meta.Logic.${test_name}"
		"${test_name}.cpp"
	)
endfunction()


add_logic_test(BitLiteralIterator)

add_subdirectory(Conjunction)
add_subdirectory(Disjunction)
add_subdirectory(Equivalence)
add_subdirectory(Negation)
