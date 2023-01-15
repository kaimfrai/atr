export module Meta.Logic.Bit.Evaluate;

import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.Clause;
import Meta.Bit.Field.Set;
import Meta.Bit.Index.Arithmetic;

import Std;

export namespace
	Meta::Logic::Bit
{
	[[nodiscard]]
	auto constexpr
	(	EvaluateTerm
	)	(	Term const
			&	i_rTerm
		,	::std::span<bool const>
				i_vPreset
		)
		noexcept
	->	bool
	{
		Clause::FieldType
			nPresetMask
		{	0uz
		};
		for	(	Clause::IndexType
					nShift
				{}
			;	bool
					bPreset
			:	i_vPreset
			)
		{
			if	(bPreset)
			{	Set
				(	nPresetMask
				,	nShift
				);
			}
			++nShift;
		}
		return
			i_rTerm
		.	Evaluate
			(	nPresetMask
			,	true
			)
		;
	}
}
