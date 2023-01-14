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
	P_or_Q
)
add_negation_test(
	P_or_Q_or_R
)

add_negation_test(
	PQ_or_PR
)
add_negation_test(
	PQ_or_PR_or_nPnQ
)
add_negation_test(
	PQ_or_PR_or_QR
)

add_negation_test(
	PQ_or_nPnQ
)
add_negation_test(
	PQ_or_nPnQ_or_R
)
add_negation_test(
	PQ_or_nPnQ_or_nQR
)

add_negation_test(
	PQ_or_nPR
)
add_negation_test(
	PQ_or_nPR_or_nQnR
)

add_negation_test(
	PnR_or_nPnQ_or_QR
)

add_negation_test(
	PQ_or_R
)

add_negation_test(
	PQR_or_PnQnR
)
add_negation_test(
	PQR_or_PnQnR_or_nPQnR
)
add_negation_test(
	PQR_or_PnQnR_or_nPQnR_or_nPnQR
)

add_negation_test(
	PQR_or_nPnQ
)
add_negation_test(
	PQR_or_nPnQ_or_nPnR
)
add_negation_test(
	PQR_or_nPnQ_or_nPnR_or_nQnR
)
add_negation_test(
	PQR_or_nPnQnR
)
