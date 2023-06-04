export module Evaluation.Polymorphic;

export import Evaluation.Dependency.Polymorphic;
import Evaluation.CRTP.Circle;
import Evaluation.CRTP.Ellipse;
import Evaluation.CRTP.Rectangle;
import Evaluation.CRTP.Square;
import Evaluation.CRTP.Triangle;
import Evaluation.CRTP.Shape3D;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;
import Evaluation.Dependency.DefaultConstruct;
import Evaluation.Dependency.DataTypes;

export using ::DefaultConstruct;

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

	struct
		ComputeVolumeTag
	{};

	[[nodiscard]]
	auto constexpr inline
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
	auto constexpr inline
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
