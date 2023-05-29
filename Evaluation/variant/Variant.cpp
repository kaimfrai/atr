export module Evaluation.Variant;

import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

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

	auto constexpr
	(	ComputeVolume
	)	(	Body3D const
			&	i_rBody3D
		)
		noexcept
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
