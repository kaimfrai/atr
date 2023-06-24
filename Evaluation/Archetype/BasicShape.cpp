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
			("Height", Type<float>)
			("Width", Type<float>)
			("Color", "Color"_id)
		;
	}
}
