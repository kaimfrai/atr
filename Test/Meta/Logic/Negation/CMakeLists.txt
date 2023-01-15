function(add_negation_test
	test_name
)
	add_module_object_library(
		"Test.Meta.Logic.Negation.${test_name}"
		"${test_name}.cpp"
	)
endfunction()

add_negation_test(
	T
)
add_negation_test(
	F
)

add_negation_test(
	P
)
add_negation_test(
	nP
)

add_negation_test(
	PQ
)
add_negation_test(
	PQR
)

add_negation_test(
	P_Q
)
add_negation_test(
	P_Q_R
)

add_negation_test(
	PQ_PR
)
add_negation_test(
	PQ_PR_nPnQ
)
add_negation_test(
	PQ_PR_QR
)

add_negation_test(
	PQ_nPnQ
)
add_negation_test(
	PQ_nPnQ_R
)
add_negation_test(
	PQ_nPnQ_nQR
)

add_negation_test(
	PQ_nPR
)
add_negation_test(
	PQ_nPR_nQnR
)

add_negation_test(
	PnR_nPnQ_QR
)

add_negation_test(
	PQ_R
)

add_negation_test(
	PQR_PnQnR
)
add_negation_test(
	PQR_PnQnR_nPQnR
)
add_negation_test(
	PQR_PnQnR_nPQnR_nPnQR
)

add_negation_test(
	PQR_nPnQ
)
add_negation_test(
	PQR_nPnQ_nPnR
)
add_negation_test(
	PQR_nPnQ_nPnR_nQnR
)
add_negation_test(
	PQR_nPnQnR
)
