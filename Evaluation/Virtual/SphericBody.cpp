export module Evaluation.Virtual.SphericBody;

import Evaluation.Virtual.ExtendedShape;

import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tShape
		>
	struct
		SphericBody
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
				PiFraction
				<	1z
				,	6z
				>{}
			;
		}
	};
}
