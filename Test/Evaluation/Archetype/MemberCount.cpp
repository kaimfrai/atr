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
		&	rConfig
		=	Config_Of
			<	ID<t_vTypeName>
			>
		;
		return
			::std::accumulate
			(	rConfig
				.	AlignTypeCounts
				.	begin
					()
			,	rConfig
				.	AlignTypeCounts
				.	end
					()
			,	0z
			,	[]	(	auto
							i_vCount
					,	auto const
						&	i_rCountedTypes
					)
				{	return
						::std::accumulate
						(	i_rCountedTypes
							.	begin
								()
						,	i_rCountedTypes
							.	end
								()
						,	i_vCount
						,	[]	(	auto
										i_vInnerCount
								,	auto const
									&	i_rCountedType
								)
							{	return
									i_vInnerCount
								+	i_rCountedType
									.	Count
								;
							}
						)
					;
				}
			)
		;
	}()
;

static_assert
(	MemberCount<"Square">
==	2z
);
static_assert
(	MemberCount<"Rectangle">
==	3z
);
static_assert
(	MemberCount<"Triangle">
==	3z
);
static_assert
(	MemberCount<"Circle">
==	2z
);
static_assert
(	MemberCount<"Ellipse">
==	3z
);
static_assert
(	MemberCount<"Cube">
==	2z
);
static_assert
(	MemberCount<"Cuboid">
==	4z
);
static_assert
(	MemberCount<"Sphere">
==	2z
);
static_assert
(	MemberCount<"Cylinder">
==	3z
);
static_assert
(	MemberCount<"Cone">
==	3z
);
static_assert
(	MemberCount<"Ellipsoid">
==	4z
);
static_assert
(	MemberCount<"Head">
==	(	3z * MemberCount<"Sphere">
	-	1z
	)
);
