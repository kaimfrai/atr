export module Evaluation.Archetype.BasicShape;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	auto
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
	)	(	auto
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
	)	(	auto
			&&	o_rComposer
		,	ID<"BasicShape">
		)
	->	auto&&
	{	return
			o_rComposer
			.	PrefixSplice("Color", "Color"_id)
			.	PrefixSplice("Point", "Point"_id)
			.	Member("Height", Type<float>)
			.	Member("Width", Type<float>)
		;
	}
}
