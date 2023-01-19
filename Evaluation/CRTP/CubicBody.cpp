export module Evaluation.CRTP:CubicBody;

import Evaluation.Shared.Fraction;
export import :ExtendedShape;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		CubicBody
	:	ExtendedShape
		<	t_tBody
		,	t_tShape
		>
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				Fraction
				<>{}
			;
		}
	};
}
