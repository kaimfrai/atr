export module Evaluation.Archetype.BasicShape;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Color">
		,	auto
			&&	o_rConfig
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
	)	(	ID<"Point">
		,	auto
			&&	o_rConfig
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
	)	(	ID<"BasicShape">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Color", "Color"_id)
			("Point", "Point"_id)
		.	Member("Height", Type<float>)
		.	Member("Width", Type<float>)
		;
	}
}
