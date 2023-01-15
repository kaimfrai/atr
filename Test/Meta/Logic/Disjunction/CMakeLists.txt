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
	P_Q
)
add_disjunction_test(
	P_Q_R
)

add_disjunction_test(
	PQ_PR
)
add_disjunction_test(
	PQ_PR_nPnQ
)
add_disjunction_test(
	PQ_PR_QR
)

add_disjunction_test(
	PQ_nPnQ
)
add_disjunction_test(
	PQ_nPnQ_R
)
add_disjunction_test(
	PQ_nPnQ_nQR
)

add_disjunction_test(
	PQ_nPR
)
add_disjunction_test(
	PQ_nPR_nQnR
)

add_disjunction_test(
	PnR_nPnQ_QR
)

add_disjunction_test(
	PQ_R
)

add_disjunction_test(
	PQR_PnQnR
)
add_disjunction_test(
	PQR_PnQnR_nPQnR
)
add_disjunction_test(
	PQR_PnQnR_nPQnR_nPnQR
)

add_disjunction_test(
	PQR_nPnQ
)
add_disjunction_test(
	PQR_nPnQ_nPnR
)
add_disjunction_test(
	PQR_nPnQ_nPnR_nQnR
)
add_disjunction_test(
	PQR_nPnQnR
)
