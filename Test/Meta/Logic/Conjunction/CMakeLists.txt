function(add_conjunction_test
	test_name
)
	add_module_object_library(
		"Test.Meta.Logic.Conjunction.${test_name}"
		"${test_name}.cpp"
	)
endfunction()

add_conjunction_test(
	T
)
add_conjunction_test(
	F
)

add_conjunction_test(
	P
)
add_conjunction_test(
	nP
)

add_conjunction_test(
	PQ
)
add_conjunction_test(
	PQR
)

add_conjunction_test(
	P_Q
)
add_conjunction_test(
	P_Q_R
)

add_conjunction_test(
	PQ_PR
)
add_conjunction_test(
	PQ_PR_nPnQ
)
add_conjunction_test(
	PQ_PR_QR
)

add_conjunction_test(
	PQ_nPnQ
)
add_conjunction_test(
	PQ_nPnQ_R
)
add_conjunction_test(
	PQ_nPnQ_nQR
)

add_conjunction_test(
	PQ_nPR
)
add_conjunction_test(
	PQ_nPR_nQnR
)

add_conjunction_test(
	PnR_nPnQ_QR
)

add_conjunction_test(
	PQ_R
)

add_conjunction_test(
	PQR_PnQnR
)
add_conjunction_test(
	PQR_PnQnR_nPQnR
)
add_conjunction_test(
	PQR_PnQnR_nPQnR_nPnQR
)

add_conjunction_test(
	PQR_nPnQ
)
add_conjunction_test(
	PQR_nPnQ_nPnR
)
add_conjunction_test(
	PQR_nPnQ_nPnR_nQnR
)
add_conjunction_test(
	PQR_nPnQnR
)
