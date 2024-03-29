import Evaluation.Archetype.BasicShape;
import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Square;
import Evaluation.Archetype.Triangle;

import ATR.Member.Composition;

import Meta.ID;
import Meta.String.Literal;

import Std;

using ::ATR::Member::Composition_Of;
using ::Meta::ID;
using ::Meta::String::Literal;

template
	<	Literal
			t_vTypeName
	>
auto constexpr inline
	MemberCount
=	[]
	{	auto const
		&	rLayout
		=	Composition_Of
			<	ID<t_vTypeName>
			>
			.	Layout
				[0]
		;

		auto
			vCount
		=	0z
		;

		for	(	auto const
				&	[	rType
					,	rCount
					]
			:	rLayout
			)
		{	vCount
			+=	rCount
			;
		}
		return
			vCount
		;
	}()
;

static_assert
(	MemberCount<"Square">
==	8z
);
static_assert
(	MemberCount<"Rectangle">
==	9z
);
static_assert
(	MemberCount<"Triangle">
==	9z
);
static_assert
(	MemberCount<"Circle">
==	8z
);
static_assert
(	MemberCount<"Ellipse">
==	9z
);
static_assert
(	MemberCount<"Cube">
==	8z
);
static_assert
(	MemberCount<"Cuboid">
==	10z
);
static_assert
(	MemberCount<"Pyramid">
==	10z
);
static_assert
(	MemberCount<"Sphere">
==	8z
);
static_assert
(	MemberCount<"Cylinder">
==	9z
);
static_assert
(	MemberCount<"Cone">
==	9z
);
static_assert
(	MemberCount<"Ellipsoid">
==	10z
);
static_assert
(	MemberCount<"Head">
==	(	3z * MemberCount<"Sphere">
	-	MemberCount<"Color">
	-	4z
	)
);
