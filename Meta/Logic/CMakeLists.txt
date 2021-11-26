add_module(Meta.Logic
	Logic.cpp

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

add_dependencies(Meta.Logic
	Meta.Pack
	Meta.TypeTraits
)

add_subdirectory(
	Test
)
