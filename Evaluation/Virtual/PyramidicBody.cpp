export module Evaluation.Virtual.PyramidicBody;

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
		PyramidicBody
	:	ExtendedShape
		<	t_tShape
		>
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
			override
		{	return
				Fraction
				<	1uz
				,	3uz
				>{}
			;
		}
	};
}

