export module Evaluation.Archetype.BasicShape;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Color">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Member("Red", Type<float>)
		.	Member("Green", Type<float>)
		.	Member("Blue", Type<float>)
		.	Member("Alpha", Type<float>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Point">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Member("Lateral", Type<float>)
		.	Member("Longitudinal", Type<float>)
		.	Member("Vertical", Type<float>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"BasicShape">
		)
	->	auto&&
	{	return
		o_rConfig
		.	PrefixSplice("Color", "Color"_id)
		.	PrefixSplice("Point", "Point"_id)
		.	Member("Height", Type<float>)
		.	Member("Width", Type<float>)
		;
	}
}
