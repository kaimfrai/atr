export module Evaluation.Visitor;

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
import Evaluation.Dependency.InPlaceConstruct;
import Evaluation.Dependency.Visitor.ObjectReference;
import Evaluation.Dependency.Visitor.ObjectValue;

import Std;

export using ::InPlaceConstruct;

using ::Visitor::ObjectReference;
using ::Visitor::ObjectValue;

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
	=	ObjectValue
		<	sizeof(Cuboid)
		,	::std::align_val_t
			{	alignof(void*)
			}
		>
	;

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolume
	)	(	ObjectReference
					i_rObject
		)
		noexcept
	{	return
		Body3D::Visit
		<	[]	(	auto const
					&	i_rBody
				)
			{	return
				i_rBody
				.	ComputeVolume
					()
				;
			}
		,	Circle const&
		,	Ellipse const&
		,	Rectangle const&
		,	Square const&
		,	Triangle const&
		,	Cube const&
		,	Cuboid const&
		,	Pyramid const&
		,	Sphere const&
		,	Cylinder const&
		,	Cone const&
		,	Ellipsoid const&
		,	Head const&
		>(	i_rObject
		);
	}
}
