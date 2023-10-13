export module Evaluation.Archetype.BasicShape;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Color">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Member("Red", Type<float>)
			.	Member("Green", Type<float>)
			.	Member("Blue", Type<float>)
			.	Member("Alpha", Type<float>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Point">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Member("Lateral", Type<float>)
			.	Member("Longitudinal", Type<float>)
			.	Member("Vertical", Type<float>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"BasicShape">
		)
	->	auto&&
	{
		{	auto const
				_
			=	o_rComposer
				.	ScopedPrefix
					(	"Color"
					)
			;
			o_rComposer
			.	Splice
				(	"Color"_id
				)
			;
		}
		{	auto const
				_
			=	o_rComposer
				.	ScopedPrefix
					(	"Point"
					)
			;
			o_rComposer
			.	Splice
				(	"Point"_id
				)
			;
		}
		return
			o_rComposer
			.	Member("Height", Type<float>)
			.	Member("Width", Type<float>)
		;
	}
}
