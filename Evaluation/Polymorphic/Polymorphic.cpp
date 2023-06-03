export module Evaluation.Polymorphic;

export import Evaluation.Dependency.Polymorphic;
export import Evaluation.CRTP.Cube;
export import Evaluation.CRTP.Cuboid;
export import Evaluation.CRTP.Pyramid;
export import Evaluation.CRTP.Sphere;
export import Evaluation.CRTP.Cylinder;
export import Evaluation.CRTP.Cone;
export import Evaluation.CRTP.Ellipsoid;
export import Evaluation.CRTP.Head;
export import Evaluation.Dependency.DefaultConstruct;
import Evaluation.Dependency.DataTypes;

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
