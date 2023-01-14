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
	PQ
)
add_disjunction_test(
	PQR
)

add_disjunction_test(
	P_or_Q
)
add_disjunction_test(
	P_or_Q_or_R
)

add_disjunction_test(
	PQ_or_PR
)
add_disjunction_test(
	PQ_or_PR_or_nPnQ
)
add_disjunction_test(
	PQ_or_PR_or_QR
)

add_disjunction_test(
	PQ_or_nPnQ
)
add_disjunction_test(
	PQ_or_nPnQ_or_R
)
add_disjunction_test(
	PQ_or_nPnQ_or_nQR
)

add_disjunction_test(
	PQ_or_nPR
)
add_disjunction_test(
	PQ_or_nPR_or_nQnR
)

add_disjunction_test(
	PnR_or_nPnQ_or_QR
)

add_disjunction_test(
	PQ_or_R
)

add_disjunction_test(
	PQR_or_PnQnR
)
add_disjunction_test(
	PQR_or_PnQnR_or_nPQnR
)
add_disjunction_test(
	PQR_or_PnQnR_or_nPQnR_or_nPnQR
)

add_disjunction_test(
	PQR_or_nPnQ
)
add_disjunction_test(
	PQR_or_nPnQ_or_nPnR
)
add_disjunction_test(
	PQR_or_nPnQ_or_nPnR_or_nQnR
)
add_disjunction_test(
	PQR_or_nPnQnR
)
