export module Evaluation.Shared.DataTypes;

import Std;

export
{
	struct
		RGBAColor
	{
		::std::uint8_t
			Red
		;
		::std::uint8_t
			Green
		;
		::std::uint8_t
			Blue
		;
		::std::uint8_t
			Alpha
		;
	};

	using
		Float
	=	double
	;
}
