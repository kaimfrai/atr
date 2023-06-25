export module Evaluation.Archetype.BasicShape;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Point">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Lateral", Type<float>)
			("Longitudinal", Type<float>)
			("Vertical", Type<float>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	ID<"Color">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Red", Type<float>)
			("Green", Type<float>)
			("Blue", Type<float>)
			("Alpha", Type<float>)
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
			("Height", Type<float>)
			("Width", Type<float>)
		;
	}
}
