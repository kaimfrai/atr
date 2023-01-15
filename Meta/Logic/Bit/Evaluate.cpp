export module Meta.Logic.Bit.Evaluate;

import Meta.Logic.BitTerm;
import Meta.Logic.BitClause;
import Meta.Bit.Field.Set;
import Meta.Bit.Index.Arithmetic;

import Std;

export namespace
	Meta::Logic::Bit
{
	[[nodiscard]]
	auto constexpr
	(	EvaluateTerm
	)	(	BitTerm const
			&	i_rTerm
		,	::std::span<bool const>
				i_vPreset
		)
		noexcept
	->	bool
	{
		BitClause::FieldType
			nPresetMask
		{	0uz
		};
		for	(	BitClause::IndexType
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
