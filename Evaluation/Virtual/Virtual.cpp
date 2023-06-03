export module Evaluation.Virtual;

export import Evaluation.Virtual.Cube;
export import Evaluation.Virtual.Cuboid;
export import Evaluation.Virtual.Pyramid;
export import Evaluation.Virtual.Sphere;
export import Evaluation.Virtual.Cylinder;
export import Evaluation.Virtual.Cone;
export import Evaluation.Virtual.Ellipsoid;
export import Evaluation.Virtual.Head;
export import Evaluation.Dependency.MakeUniqueNoexcept;
import Evaluation.Virtual.IBody;

import Evaluation.Dependency.DataTypes;

import Std;

export namespace
	Bodies3D
{
	using
		Body3D
	=	::std::unique_ptr
		<	IBody
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
		->	ComputeVolume
			()
		;
	}
}
