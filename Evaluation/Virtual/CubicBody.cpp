export module Evaluation.Virtual.CubicBody;

import Evaluation.Virtual.ExtendedShape;

import Evaluation.Dependency.Fraction;

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
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
			override
		{	return
				Fraction
				<>
			;
		}
	};
}
