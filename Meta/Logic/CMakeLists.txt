add_module(Meta.Logic
	Logic.cpp

	${PREBUILT_MODULE_PATH}/Meta.Pack.pcm
	${PREBUILT_MODULE_PATH}/Meta.TypeTraits.pcm

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

add_subdirectory(
	Test
)
