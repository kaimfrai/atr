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

import ATR.Member.Config;

import Meta.ID;
import Meta.String.Literal;

import Std;

using ::ATR::Member::Config_Of;
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
		&	rConfigure
		=	Config_Of
			<	ID<t_vTypeName>
			>
		;
		return
		::std::distance
		(	rConfigure
			.	Layout
			.	begin
				()
		,	rConfigure
			.	Layout
			.	end
				()
		);
	}()
;

static_assert
(	MemberCount<"Square">
==	3z
);
static_assert
(	MemberCount<"Rectangle">
==	4z
);
static_assert
(	MemberCount<"Triangle">
==	4z
);
static_assert
(	MemberCount<"Circle">
==	3z
);
static_assert
(	MemberCount<"Ellipse">
==	4z
);
static_assert
(	MemberCount<"Cube">
==	3z
);
static_assert
(	MemberCount<"Cuboid">
==	5z
);
static_assert
(	MemberCount<"Sphere">
==	3z
);
static_assert
(	MemberCount<"Cylinder">
==	4z
);
static_assert
(	MemberCount<"Cone">
==	4z
);
static_assert
(	MemberCount<"Ellipsoid">
==	5z
);
static_assert
(	MemberCount<"Head">
==	(	3z * MemberCount<"Sphere">
	-	1z
	)
);
