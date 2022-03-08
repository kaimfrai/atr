export module Evaluation.Virtual:CubicBody;

export import :ExtendedShape;

export import Evaluation.Shared;

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
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				Fraction
				<>{}
			;
		}
	};
}
