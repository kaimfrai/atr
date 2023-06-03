export module Evaluation.Variant;

import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;
import Evaluation.Dependency.InPlaceConstruct;
import Evaluation.Dependency.DataTypes;

import Std;

export using ::InPlaceConstruct;

export namespace
	Bodies3D
{
	using ::Bodies3D::Cube;
	using ::Bodies3D::Cuboid;
	using ::Bodies3D::Pyramid;
	using ::Bodies3D::Sphere;
	using ::Bodies3D::Cylinder;
	using ::Bodies3D::Cone;
	using ::Bodies3D::Ellipsoid;
	using ::Bodies3D::Head;
}

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
	auto constexpr inline
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
