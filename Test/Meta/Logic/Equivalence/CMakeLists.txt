function(add_equivalence_test
	test_name
)
	add_module_object_library("Test.Meta.Logic.Equivalence_${test_name}" "${test_name}.cpp")
endfunction()

add_equivalence_test(T)
add_equivalence_test(F)

add_equivalence_test(p)
add_equivalence_test(-p)

add_equivalence_test(p_and_q)
add_equivalence_test(p_and_q_and_r)

add_equivalence_test(p_or_q)
add_equivalence_test(p_or_q_or_r)

add_equivalence_test(p_and_q_or_p_and_r)
add_equivalence_test(p_and_q_or_p_and_r_or_-p_and_-q)
add_equivalence_test(p_and_q_or_p_and_r_or_q_and_r)

add_equivalence_test(p_and_q_or_-p_and_-q)
add_equivalence_test(p_and_q_or_-p_and_-q_or_r)
add_equivalence_test(p_and_q_or_-p_and_-q_or_-q_and_r)

add_equivalence_test(p_and_q_or_-p_and_r)
add_equivalence_test(p_and_q_or_-p_and_r_or_-q_and_-r)

add_equivalence_test(p_and_-r_or_-p_and_-q_or_q_and_r)

add_equivalence_test(p_and_q_or_r)

add_equivalence_test(p_and_q_and_r_or_p_and_-q_and_-r)
add_equivalence_test(p_and_q_and_r_or_p_and_-q_and_-r_or_-p_and_q_and_-r)
add_equivalence_test(p_and_q_and_r_or_p_and_-q_and_-r_or_-p_and_q_and_-r_or_-p_and_-q_and_r)

add_equivalence_test(p_and_q_and_r_or_-p_and_-q)
add_equivalence_test(p_and_q_and_r_or_-p_and_-q_or_-p_and_-r)
add_equivalence_test(p_and_q_and_r_or_-p_and_-q_or_-p_and_-r_or_-q_and_-r)
add_equivalence_test(p_and_q_and_r_or_-p_and_-q_and_-r)
