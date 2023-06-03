export module Evaluation.CRTP.BasicBody;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		>
	struct
		BasicBody
	{
		auto constexpr
		(	ComputeVolume
		)	()	const
			noexcept
		->	Float
		{
			t_tBody const
			&	rBody
			=	*static_cast
				<	t_tBody const
					*
				>(	this
				)
			;

			return
				rBody
				.	GetComputeVolumeMultiplier
					()
			*	rBody
				.	GetDepth
					()
			*	rBody
				.	GetHeight
					()
			*	rBody
				.	GetWidth
					()
			;
		}
	};
}
