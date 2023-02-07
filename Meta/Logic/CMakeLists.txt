add_single_file_modules(
	LiteralBase.cpp
)

add_subdirectory(Bit)
add_subdirectory(Erased)

add_single_file_modules(
	Conjunction.cpp
	Constraint.cpp
	Disjunction.cpp
	Equivalence.cpp
	Negation.cpp
	Term.cpp
)
