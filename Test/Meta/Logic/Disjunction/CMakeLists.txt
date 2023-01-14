function(add_disjunction_test
	test_name
)
	add_module_object_library(
		"Test.Meta.Logic.Disjunction.${test_name}"
		"${test_name}.cpp"
	)
endfunction()

add_disjunction_test(
	T
)
add_disjunction_test(
	F
)

add_disjunction_test(
	P
)
add_disjunction_test(
	nP
)

add_disjunction_test(
	P_and_Q
)
add_disjunction_test(
	P_and_Q_and_R
)

add_disjunction_test(
	P_or_Q
)
add_disjunction_test(
	P_or_Q_or_R
)

add_disjunction_test(
	P_and_Q_or_P_and_R
)
add_disjunction_test(
	P_and_Q_or_P_and_R_or_nP_and_nQ
)
add_disjunction_test(
	P_and_Q_or_P_and_R_or_Q_and_R
)

add_disjunction_test(
	P_and_Q_or_nP_and_nQ
)
add_disjunction_test(
	P_and_Q_or_nP_and_nQ_or_R
)
add_disjunction_test(
	P_and_Q_or_nP_and_nQ_or_nQ_and_R
)

add_disjunction_test(
	P_and_Q_or_nP_and_R
)
add_disjunction_test(
	P_and_Q_or_nP_and_R_or_nQ_and_nR
)

add_disjunction_test(
	P_and_nR_or_nP_and_nQ_or_Q_and_R
)

add_disjunction_test(
	P_and_Q_or_R
)

add_disjunction_test(
	P_and_Q_and_R_or_P_and_nQ_and_nR
)
add_disjunction_test(
	P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR
)
add_disjunction_test(
	P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R
)

add_disjunction_test(
	P_and_Q_and_R_or_nP_and_nQ
)
add_disjunction_test(
	P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR
)
add_disjunction_test(
	P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR
)
add_disjunction_test(
	P_and_Q_and_R_or_nP_and_nQ_and_nR
)
