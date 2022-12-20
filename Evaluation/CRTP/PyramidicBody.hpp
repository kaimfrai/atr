export module Evaluation.CRTP:PyramidicBody;

export import Evaluation.Shared;
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
		PyramidicBody
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
		{	return
			Fraction
			<	1uz
			,	3uz
			>{};
		}
	};
}
