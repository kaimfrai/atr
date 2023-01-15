function(add_equivalence_test
	test_name
)
	add_module_object_library(
		"Test.Meta.Logic.Equivalence.${test_name}"
		"${test_name}.cpp"
	)
endfunction()

add_equivalence_test(
	T
)
add_equivalence_test(
	F
)

add_equivalence_test(
	P
)
add_equivalence_test(
	nP
)

add_equivalence_test(
	PQ
)
add_equivalence_test(
	PQR
)

add_equivalence_test(
	P_Q
)
add_equivalence_test(
	P_Q_R
)

add_equivalence_test(
	PQ_PR
)
add_equivalence_test(
	PQ_PR_nPnQ
)
add_equivalence_test(
	PQ_PR_QR
)

add_equivalence_test(
	PQ_nPnQ
)
add_equivalence_test(
	PQ_nPnQ_R
)
add_equivalence_test(
	PQ_nPnQ_nQR
)

add_equivalence_test(
	PQ_nPR
)
add_equivalence_test(
	PQ_nPR_nQnR
)

add_equivalence_test(
	PnR_nPnQ_QR
)

add_equivalence_test(
	PQ_R
)

add_equivalence_test(
	PQR_PnQnR
)
add_equivalence_test(
	PQR_PnQnR_nPQnR
)
add_equivalence_test(
	PQR_PnQnR_nPQnR_nPnQR
)

add_equivalence_test(
	PQR_nPnQ
)
add_equivalence_test(
	PQR_nPnQ_nPnR
)
add_equivalence_test(
	PQR_nPnQ_nPnR_nQnR
)
add_equivalence_test(
	PQR_nPnQnR
)
