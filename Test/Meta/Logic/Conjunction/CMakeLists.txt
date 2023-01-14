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
	P_or_Q
)
add_conjunction_test(
	P_or_Q_or_R
)

add_conjunction_test(
	PQ_or_PR
)
add_conjunction_test(
	PQ_or_PR_or_nPnQ
)
add_conjunction_test(
	PQ_or_PR_or_QR
)

add_conjunction_test(
	PQ_or_nPnQ
)
add_conjunction_test(
	PQ_or_nPnQ_or_R
)
add_conjunction_test(
	PQ_or_nPnQ_or_nQR
)

add_conjunction_test(
	PQ_or_nPR
)
add_conjunction_test(
	PQ_or_nPR_or_nQnR
)

add_conjunction_test(
	PnR_or_nPnQ_or_QR
)

add_conjunction_test(
	PQ_or_R
)

add_conjunction_test(
	PQR_or_PnQnR
)
add_conjunction_test(
	PQR_or_PnQnR_or_nPQnR
)
add_conjunction_test(
	PQR_or_PnQnR_or_nPQnR_or_nPnQR
)

add_conjunction_test(
	PQR_or_nPnQ
)
add_conjunction_test(
	PQR_or_nPnQ_or_nPnR
)
add_conjunction_test(
	PQR_or_nPnQ_or_nPnR_or_nQnR
)
add_conjunction_test(
	PQR_or_nPnQnR
)
