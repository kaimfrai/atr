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
	P_or_Q
)
add_equivalence_test(
	P_or_Q_or_R
)

add_equivalence_test(
	PQ_or_PR
)
add_equivalence_test(
	PQ_or_PR_or_nPnQ
)
add_equivalence_test(
	PQ_or_PR_or_QR
)

add_equivalence_test(
	PQ_or_nPnQ
)
add_equivalence_test(
	PQ_or_nPnQ_or_R
)
add_equivalence_test(
	PQ_or_nPnQ_or_nQR
)

add_equivalence_test(
	PQ_or_nPR
)
add_equivalence_test(
	PQ_or_nPR_or_nQnR
)

add_equivalence_test(
	PnR_or_nPnQ_or_QR
)

add_equivalence_test(
	PQ_or_R
)

add_equivalence_test(
	PQR_or_PnQnR
)
add_equivalence_test(
	PQR_or_PnQnR_or_nPQnR
)
add_equivalence_test(
	PQR_or_PnQnR_or_nPQnR_or_nPnQR
)

add_equivalence_test(
	PQR_or_nPnQ
)
add_equivalence_test(
	PQR_or_nPnQ_or_nPnR
)
add_equivalence_test(
	PQR_or_nPnQ_or_nPnR_or_nQnR
)
add_equivalence_test(
	PQR_or_nPnQnR
)
