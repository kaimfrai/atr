export module Evaluation.Virtual:PyramidicBody;

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

