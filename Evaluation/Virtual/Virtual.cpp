export module Evaluation.Virtual;

import Evaluation.Virtual.Cube;
import Evaluation.Virtual.Circle;
import Evaluation.Virtual.Ellipse;
import Evaluation.Virtual.Rectangle;
import Evaluation.Virtual.Square;
import Evaluation.Virtual.Triangle;
import Evaluation.Virtual.Shape3D;
import Evaluation.Virtual.Cuboid;
import Evaluation.Virtual.Pyramid;
import Evaluation.Virtual.Sphere;
import Evaluation.Virtual.Cylinder;
import Evaluation.Virtual.Cone;
import Evaluation.Virtual.Ellipsoid;
import Evaluation.Virtual.Head;
import Evaluation.Dependency.MakeUniqueNoexcept;
import Evaluation.Virtual.IBody;

import Evaluation.Dependency.DataTypes;

import Std;

export using ::MakeUniqueNoexcept;

export namespace
	Bodies3D
{
	struct Circle : Shape3D<::Shapes2D::Circle>{};
	struct Ellipse : Shape3D<::Shapes2D::Ellipse>{};
	struct Rectangle : Shape3D<::Shapes2D::Rectangle>{};
	struct Square : Shape3D<::Shapes2D::Square>{};
	struct Triangle : Shape3D<::Shapes2D::Triangle>{};

	using ::Bodies3D::Cube;
	using ::Bodies3D::Cuboid;
	using ::Bodies3D::Pyramid;
	using ::Bodies3D::Sphere;
	using ::Bodies3D::Cylinder;
	using ::Bodies3D::Cone;
	using ::Bodies3D::Ellipsoid;
	using ::Bodies3D::Head;

	using
		Body3D
	=	::std::unique_ptr
		<	IBody
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
		i_rBody3D
		->	ComputeVolume
			()
		;
	}
}
