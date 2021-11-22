add_module(Logic

	TermTag.hpp
	Concepts.hpp
	Types.hpp

	Equivalence.hpp

	Substitute.hpp
	LiteralRedundancy.hpp
	ClauseRedundancy.hpp
	LiteralFilter.hpp
	ClauseFilter.hpp
	Simplifier.hpp

	Negation.hpp
	Disjunction.hpp
	Conjunction.hpp
)

add_dependencies(
	Logic
		Pack
)

add_subdirectory(
	Test
)
