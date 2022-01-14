export module Evaluation.Virtual.PyramidicBody;

export import Evaluation.Virtual.ExtendedShape;

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
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				Fraction
				<	1ll
				,	3ll
				>{}
			;
		}
	};
}

