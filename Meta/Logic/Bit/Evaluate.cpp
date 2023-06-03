export module Meta.Logic.Bit.Evaluate;

import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.Clause;

import Std;

export namespace
	Meta::Logic::Bit
{
	[[nodiscard]]
	auto constexpr inline
	(	EvaluateTerm
	)	(	Term const
			&	i_rTerm
		,	Clause::FieldType
				i_nPresetMask
		)
		noexcept
	->	bool
	{	return
			i_rTerm
		.	Evaluate
			(	i_nPresetMask
			,	true
			)
		;
	}

	template
		<	::std::size_t
			...	t_npIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	EvaluationField
	)	(	::std::index_sequence
			<	t_npIndex
				...
			>
		,	decltype(t_npIndex)
			...	i_vpResult
		)
		noexcept
	->	Bit::Clause::FieldType
	{	return
		Bit::Clause::FieldType
		{(	...
		bitor
			(	i_vpResult
			<<	t_npIndex
			)
		)};
	}
}
