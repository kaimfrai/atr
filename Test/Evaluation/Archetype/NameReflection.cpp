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

import ATR.District.ExcludingHeap;
import ATR.Member.Composition;
import ATR.Member.FlatComposition;

import Meta.ID;
import Meta.String.Literal;

import std;

using ::ATR::Member::Composition_Of;
using ::ATR::Member::MemberNameList;

using ::Meta::ID;
using ::Meta::String::Literal;

[[nodiscard]]
auto constexpr inline
(	SameSize
)	(	::std::ptrdiff_t
			i_vNameListSize
	,	::std::ptrdiff_t
			i_vExptectedSize
	)
	noexcept
->	bool
{
	if	(	i_vNameListSize
		!=	i_vExptectedSize
		)
	{
		(void("Size mismatch"), ::std::unreachable());
	}

	return
		true
	;
}

[[nodiscard]]
auto constexpr inline
(	SameName
)	(	::std::string_view
			i_vExptectedName
	,	::std::string_view
			i_vReflectedName
	)
	noexcept
->	bool
{
	if	(	i_vExptectedName
		!=	i_vReflectedName
		)
	{
		(void("Name mismatch"), ::std::unreachable());
	}

	return
		true
	;
}

[[nodiscard]]
auto constexpr inline
(	MatchReflectedNames
)	(	MemberNameList const
		&	i_rMemberNameList
	,	::std::initializer_list<std::string_view>
			i_rExpectedNames
	)
	noexcept
->	bool
{
	if	(	not
			SameSize
			(	i_rMemberNameList
				.	MemberCount
			,	ssize
				(	i_rExpectedNames
				)
			)
		)
	{	return
			false
		;
	}

	for	(	short
				vIndex
			=	0
		;		vIndex
			<	i_rMemberNameList
				.	MemberCount
		;	++	vIndex
		)
	{
		if	(	not
				SameName
				(	data
					(	i_rExpectedNames
					)[	vIndex
					]
				,	i_rMemberNameList
					.	ReflectName
						(	vIndex
						)
				)
			)
		{	return
				false
			;
		}
	}

	return
		true
	;
}

template
	<	Literal
			t_vTypeName
	,	typename
		...	t_tpDistrict
	>
MemberNameList const constexpr inline
&	MemberNameList_Of
{	Composition_Of
	<	ID<t_vTypeName>
	,	t_tpDistrict
		...
	>
	.	Members
};

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Square">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"ComputeSizeMultiplier"
		,	"Width"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Rectangle">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"Width"
		,	"ComputeSizeMultiplier"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Triangle">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"Width"
		,	"ComputeSizeMultiplier"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Circle">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"ComputeSizeMultiplier"
		,	"Width"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Ellipse">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"Width"
		,	"ComputeSizeMultiplier"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Cube">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"ComputeSizeMultiplier"
		,	"Depth"
		,	"Width"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Cuboid">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"Width"
		,	"Depth"
		,	"ComputeSizeMultiplier"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Pyramid">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"Width"
		,	"Depth"
		,	"ComputeSizeMultiplier"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Sphere">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"ComputeSizeMultiplier"
		,	"Depth"
		,	"Width"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Cylinder">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"Depth"
		,	"ComputeSizeMultiplier"
		,	"Width"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Cone">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"Depth"
		,	"ComputeSizeMultiplier"
		,	"Width"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Ellipsoid">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"Width"
		,	"Depth"
		,	"ComputeSizeMultiplier"
		}
	)
);

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Head">
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"ComputeSizeMultiplier"
		,	"LeftEyeColorRed"
		,	"LeftEyeColorGreen"
		,	"LeftEyeColorBlue"
		,	"LeftEyePointLateral"
		,	"LeftEyePointLongitudinal"
		,	"LeftEyePointVertical"
		,	"LeftEyeHeight"
		,	"LeftEyeComputeSizeMultiplier"
		,	"RightEyePointLateral"
		,	"RightEyeComputeSizeMultiplier"
		,	"Depth"
		,	"Width"
		,	"LeftEyeColorAlpha"
		,	"LeftEyeDepth"
		,	"LeftEyeWidth"
		,	"RightEyeColorRed"
		,	"RightEyeColorGreen"
		,	"RightEyeColorBlue"
		,	"RightEyeColorAlpha"
		,	"RightEyePointLongitudinal"
		,	"RightEyePointVertical"
		,	"RightEyeHeight"
		,	"RightEyeDepth"
		,	"RightEyeWidth"
		}
	)
);

using
	LocalBody
=	::ATR::District::ExcludingHeap
	<	{"Heap"}
	,	"ColorRed"
	,	"ColorGreen"
	,	"ColorBlue"
	,	"ColorAlpha"
	,	"PointLateral"
	,	"PointLongitudinal"
	,	"PointVertical"
	,	"Width"
	,	"Height"
	,	"Depth"
	>
;

static_assert
(	MatchReflectedNames
	(	MemberNameList_Of<"Head", LocalBody>
	,	{	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Height"
		,	"ComputeSizeMultiplier"
		,	"LeftEyeColorRed"
		,	"LeftEyeColorGreen"
		,	"LeftEyeColorBlue"
		,	"LeftEyePointLateral"
		,	"LeftEyePointLongitudinal"
		,	"LeftEyePointVertical"
		,	"LeftEyeHeight"
		,	"LeftEyeComputeSizeMultiplier"
		,	"RightEyePointLateral"
		,	"RightEyeComputeSizeMultiplier"
		,	"Depth"
		,	"Width"
		,	"LeftEyeColorAlpha"
		,	"LeftEyeDepth"
		,	"LeftEyeWidth"
		,	"RightEyeColorRed"
		,	"RightEyeColorGreen"
		,	"RightEyeColorBlue"
		,	"RightEyeColorAlpha"
		,	"RightEyePointLongitudinal"
		,	"RightEyePointVertical"
		,	"RightEyeHeight"
		,	"RightEyeDepth"
		,	"RightEyeWidth"
		}
	)
);
