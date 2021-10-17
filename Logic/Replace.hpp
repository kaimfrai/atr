#pragma once

#include "MakeTerm.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

/// Replaces all instances of a given sub-Term within a Term and returns the
/// modified term.
template
	<	ProtoTerm
			t_tSubTerm
	>
struct
	Replace
{
	consteval
	(	Replace
	)	(	t_tSubTerm
		)
	{}

	template
		<	ProtoTerm
				t_tReplacement
		>
	struct
		Replacement
	{
		auto consteval
		(	operator()
		)	(	t_tSubTerm
			)	const
		->	t_tReplacement
		{	return{};	}

		auto consteval
		(	operator()
		)	(	ProtoLiteral auto
					i_vOther
			)	const
		->	ProtoLiteral auto
		{	return i_vOther;	}

		template<ProtoDisjunctionClause... t_tpDisjunction>
		auto consteval
		(	operator()
		)	(	And<t_tpDisjunction...>
			)	const
		->	ProtoConjunctive auto
		{
			return
				MakeConjunction
				(	operator()
					(	t_tpDisjunction()
					)
					...
				)
			;
		}

		template<ProtoConjunctionClause... t_tpConjunction>
		auto consteval
		(	operator()
		)	(	Or<t_tpConjunction...>
			)	const
		->	ProtoDisjunctive auto
		{
			return
				MakeDisjunction
				(	operator()
					(	t_tpConjunction()
					)
					...
				)
			;
		}
	};

	template
		<	ProtoTerm
				t_tReplacement
		>
	auto consteval
	(	By
	)	(	t_tReplacement
		)	const
	->	Replacement<t_tReplacement>
	{	return {};	}
};

template
	<	ProtoTerm
			t_tSubTerm
	>
(	Replace
)	(	t_tSubTerm
	)
->	Replace
	<	t_tSubTerm
	>
;
