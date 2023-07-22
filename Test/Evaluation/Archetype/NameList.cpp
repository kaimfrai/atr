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
import Evaluation.Dependency.Fraction;
import Evaluation.Dependency.PiFraction;

import ATR.Member.Config;
import ATR.Member.ConfigData;
import ATR.Member.Info;

import Meta.ID;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.String.Hash;
import Meta.String.Literal;
import Meta.Token.Type;

import Std;

using ::ATR::Member::ConfigData;
using ::ATR::Member::Config_Of;
using ::ATR::Member::Info;

using ::Meta::ID;
using ::Meta::Memory::BitSize_Of;
using ::Meta::String::ImplicitHash;
using ::Meta::String::Literal;
using ::Meta::Type;

using One = Fraction<>;
using Half = Fraction<1z, 2z>;
using Third = Fraction<1z, 3z>;
using Pi_6 = PiFraction<1z, 6z>;
using Pi_4 = PiFraction<1z, 4z>;
using Pi_12 = PiFraction<1z, 12z>;

struct
	MemberInfo
{
	ConfigData const
	&	Config
	;

	[[nodiscard]]
	auto constexpr inline
	(	operator[]
	)	(	ImplicitHash
				i_vName
		)	const
		noexcept
	->	Info
	{	return
		Config
		.	FindMemberInfo
			(	i_vName
			)
		;
	}
};

template
	<	Literal
			t_vTypeName
	>
MemberInfo constexpr inline
	MemberInfo_Of
{	Config_Of
	<	ID<t_vTypeName>
	>
};

template
	<	typename
			t_tMember
	,	auto
			t_vFloatCount
		=	0z
	>
Info constexpr inline
	OffsetType
{	Type<t_tMember>
,	t_vFloatCount * BitSize_Of<float>
};

[[nodiscard]]
auto constexpr inline
(	Equals
)	(	Info
			i_vLeft
	,	Info
			i_vRight
	)
	noexcept
->	bool
{
	if	(	i_vLeft.Type
		!=	i_vRight.Type
		)
	{	(void("Type"), ::std::unreachable());
	}
	if	(	i_vLeft.Offset
		!=	i_vRight.Offset
		)
	{	(void("Offset"), ::std::unreachable());
	}

	return
		true
	;
}

static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"Width"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Square">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<One>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"Width"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Rectangle">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<One>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"Width"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Triangle">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Half>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"Width"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Circle">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Pi_4>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"Width"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipse">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Pi_4>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"Width"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"Depth"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cube">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<One>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"Width"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"Depth"
			]
	,	OffsetType<float, 9z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cuboid">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<One>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"Width"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"Depth"
			]
	,	OffsetType<float, 9z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Pyramid">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Third>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"Width"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"Depth"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Sphere">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Pi_6>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"Width"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"Depth"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cylinder">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Pi_4>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"Width"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"Depth"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Cone">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Pi_12>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"Width"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"Depth"
			]
	,	OffsetType<float, 9z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Ellipsoid">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Pi_6>
	)
);

static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"ColorRed"
			]
	,	OffsetType<float, 0z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"ColorGreen"
			]
	,	OffsetType<float, 1z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"ColorBlue"
			]
	,	OffsetType<float, 2z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"ColorAlpha"
			]
	,	OffsetType<float, 3z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"PointLateral"
			]
	,	OffsetType<float, 4z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"PointLongitudinal"
			]
	,	OffsetType<float, 5z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"PointVertical"
			]
	,	OffsetType<float, 6z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"Height"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"Width"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"Depth"
			]
	,	OffsetType<float, 7z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"ComputeSizeMultiplier"
			]
	,	OffsetType<Pi_6>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyeColorRed"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyeColorGreen"
			]
	,	OffsetType<float, 9z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyeColorBlue"
			]
	,	OffsetType<float, 10z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyeColorAlpha"
			]
	,	OffsetType<float, 11z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyePointLateral"
			]
	,	OffsetType<float, 12z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyePointLongitudinal"
			]
	,	OffsetType<float, 13z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyePointVertical"
			]
	,	OffsetType<float, 14z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyeHeight"
			]
	,	OffsetType<float, 15z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyeWidth"
			]
	,	OffsetType<float, 15z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyeDepth"
			]
	,	OffsetType<float, 15z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"LeftEyeComputeSizeMultiplier"
			]
	,	OffsetType<Pi_6>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyeColorRed"
			]
	,	OffsetType<float, 8z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyeColorGreen"
			]
	,	OffsetType<float, 9z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyeColorBlue"
			]
	,	OffsetType<float, 10z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyeColorAlpha"
			]
	,	OffsetType<float, 11z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyePointLateral"
			]
	,	OffsetType<float, 16z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyePointLongitudinal"
			]
	,	OffsetType<float, 13z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyePointVertical"
			]
	,	OffsetType<float, 14z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyeHeight"
			]
	,	OffsetType<float, 17z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyeWidth"
			]
	,	OffsetType<float, 17z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyeDepth"
			]
	,	OffsetType<float, 17z>
	)
);
static_assert
(	Equals
	(	MemberInfo_Of<"Head">
			[	"RightEyeComputeSizeMultiplier"
			]
	,	OffsetType<Pi_6>
	)
);
