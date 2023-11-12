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
	AliasCount
=	[]
	{	auto const
		&	rComposition
		=	Composition_Of
			<	ID<t_vTypeName>
			>
		;

		auto const
		&	rLayout
		=	rComposition
			.	Layout
				[0]
		;

		auto
			vTypeCount
		=	0z
		;

		for	(	auto const
				&	[	rType
					,	rCount
					]
			:	rLayout
			)
		{	vTypeCount
			+=	rCount
			;
		}

		return
			::std::count_if
			(	rComposition
				.	Members
				.	Types
			,	(	rComposition
					.	Members
					.	Types
				+	rComposition
					.	Members
					.	MemberCount
				)
			,	[]	(	auto const
							i_vType
					)
				{	return
						i_vType
						.	IsAligned
							()
					;
				}
			)
		-	vTypeCount
		;
	}()
;

static_assert
(	AliasCount<"Square">
==	1z
);
static_assert
(	AliasCount<"Rectangle">
==	0z
);
static_assert
(	AliasCount<"Triangle">
==	0z
);
static_assert
(	AliasCount<"Circle">
==	1z
);
static_assert
(	AliasCount<"Ellipse">
==	0z
);
static_assert
(	AliasCount<"Cube">
==	2z
);
static_assert
(	AliasCount<"Cuboid">
==	0z
);
static_assert
(	AliasCount<"Pyramid">
==	0z
);
static_assert
(	AliasCount<"Sphere">
==	2z
);
static_assert
(	AliasCount<"Cylinder">
==	1z
);
static_assert
(	AliasCount<"Cone">
==	1z
);
static_assert
(	AliasCount<"Ellipsoid">
==	0z
);
static_assert
(	AliasCount<"Head">
==	(	3z * AliasCount<"Sphere">
	+	8uz
	)
);
