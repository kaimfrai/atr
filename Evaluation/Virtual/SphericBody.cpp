export module Evaluation.Virtual.SphericBody;

export import Evaluation.Virtual.ExtendedShape;

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
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				πFraction
				<	1z
				,	6z
				>{}
			;
		}
	};
}
