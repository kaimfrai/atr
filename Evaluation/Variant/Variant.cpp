export module Evaluation.Variant;

export import Evaluation.CRTP.Cube;
export import Evaluation.CRTP.Cuboid;
export import Evaluation.CRTP.Pyramid;
export import Evaluation.CRTP.Sphere;
export import Evaluation.CRTP.Cylinder;
export import Evaluation.CRTP.Cone;
export import Evaluation.CRTP.Ellipsoid;
export import Evaluation.CRTP.Head;
export import Evaluation.Dependency.InPlaceConstruct;
import Evaluation.Dependency.DataTypes;

import Std;

export namespace
	Bodies3D
{
	using
		Body3D
	=	::std::variant
		<	Cube
		,	Cuboid
		,	Pyramid
		,	Sphere
		,	Cylinder
		,	Cone
		,	Ellipsoid
		,	Head
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
		::std::visit
		(	[]	(	auto const
					&	i_rBody
				)
			{	return
				i_rBody
				.	ComputeVolume
					()
				;
			}
			,	i_rBody3D
		);
	}
}
