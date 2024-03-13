export module Evaluation.CRTP.CubicBody;

import Evaluation.Dependency.Fraction;
import Evaluation.CRTP.ExtendedShape;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tShape
		>
	struct
		CubicBody
	:	ExtendedShape
		<	t_tShape
		>
	{
		using
			ExtendedShape
			<	t_tShape
			>
		::	ExtendedShape
		;

		[[nodiscard]]
		auto static  constexpr inline
		(	GetComputeSizeMultiplier
		)	()
			noexcept
		->	float
		{	return
				Fraction<>
				{}
			;
		}
	};
}
