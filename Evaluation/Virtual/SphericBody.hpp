export module Evaluation.Virtual:SphericBody;

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
				PiFraction
				<	1z
				,	6z
				>{}
			;
		}
	};
}
