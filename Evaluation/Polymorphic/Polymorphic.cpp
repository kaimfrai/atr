export module Evaluation.Polymorphic;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.Polymorphic;

export namespace
	Bodies3D
{
	struct
		ComputeVolumeTag
	{};

	[[nodiscard]]
	auto constexpr
	(	poly_extend
	)	(	ComputeVolumeTag
		,	auto const
			&	i_rBody
		)
		noexcept
	->	Float
	{	return
		i_rBody
		.	ComputeVolume
			()
		;
	}


	using
		Body3D
	=	polymorphic::object
		<	auto
				(	ComputeVolumeTag
				)	const
			->	Float
		>
	;

	[[nodiscard]]
	auto constexpr
	(	ComputeVolume
	)	(	Body3D const
			&	i_rBody3D
		)
		noexcept
	->	Float
	{	return
		i_rBody3D
		.	call
			<	ComputeVolumeTag
			>()
		;
	}
}
