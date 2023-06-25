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
import ATR.Member.Info;
import ATR.Member.NamedInfo;

import Meta.ID;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.String.Chain;
import Meta.String.Literal;
import Meta.Token.Type;

import Std;

using ::ATR::Member::Config_Of;
using ::ATR::Member::NamedInfo;

using ::Meta::ID;
using ::Meta::Memory::BitSize_Of;
using ::Meta::String::Chain;
using ::Meta::String::Literal;

using One = Fraction<>;
using Half = Fraction<1z, 2z>;
using Third = Fraction<1z, 3z>;
using Pi_6 = PiFraction<1z, 6z>;
using Pi_4 = PiFraction<1z, 4z>;
using Pi_12 = PiFraction<1z, 12z>;

template
	<	Literal
			t_vTypeName
	>
auto constexpr inline
&	NamedInfoList_Of
=	Config_Of
	<	ID<t_vTypeName>
	>
	.	NamedInfoList
;

struct
	NamedInfoView
{
	char const
	*	Name
	;
	::ATR::Member::Info
		Info
	;
};

template
	<	typename
			t_tMember
	,	auto
			t_vFloatCount
		=	0z
	>
::ATR::Member::Info constexpr inline
	OffsetType
{	::Meta::Type<t_tMember>
,	t_vFloatCount * BitSize_Of<float>
};

[[nodiscard]]
auto constexpr inline
(	Equals
)	(	NamedInfo
			i_vLeft
	,	NamedInfoView
			i_vRight
	)
	noexcept
->	bool
{
	if	(	i_vLeft.Name
		!=	Chain{i_vRight.Name}
		)
	{	(void("Name"), ::std::unreachable());
	}
	if	(	i_vLeft.Info.Type
		!=	i_vRight.Info.Type
		)
	{	(void("Type"), ::std::unreachable());
	}
	if	(	i_vLeft.Info.Offset
		!=	i_vRight.Info.Offset
		)
	{	(void("Offset"), ::std::unreachable());
	}

	return
		true
	;
}

static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<One>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[5]
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[6]
	,	{	"PointLateral"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[7]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[8]
	,	{	"PointVertical"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Square">[9]
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<One>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[5]
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[6]
	,	{	"PointLateral"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[7]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[8]
	,	{	"PointVertical"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Rectangle">[9]
	,	{	"Width"
		,	OffsetType<float, 8z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Half>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[5]
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[6]
	,	{	"PointLateral"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[7]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[8]
	,	{	"PointVertical"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Triangle">[9]
	,	{	"Width"
		,	OffsetType<float, 8z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_4>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[5]
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[6]
	,	{	"PointLateral"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[7]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[8]
	,	{	"PointVertical"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Circle">[9]
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_4>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[5]
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[6]
	,	{	"PointLateral"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[7]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[8]
	,	{	"PointVertical"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipse">[9]
	,	{	"Width"
		,	OffsetType<float, 8z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<One>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[5]
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[6]
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[7]
	,	{	"PointLateral"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[8]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[9]
	,	{	"PointVertical"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cube">[10]
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<One>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[5]
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[6]
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[7]
	,	{	"PointLateral"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[8]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[9]
	,	{	"PointVertical"
		,	OffsetType<float, 8z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cuboid">[10]
	,	{	"Width"
		,	OffsetType<float, 9z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Third>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[5]
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[6]
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[7]
	,	{	"PointLateral"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[8]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[9]
	,	{	"PointVertical"
		,	OffsetType<float, 8z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Pyramid">[10]
	,	{	"Width"
		,	OffsetType<float, 9z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_6>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[5]
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[6]
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[7]
	,	{	"PointLateral"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[8]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[9]
	,	{	"PointVertical"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Sphere">[10]
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_4>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[5]
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[6]
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[7]
	,	{	"PointLateral"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[8]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[9]
	,	{	"PointVertical"
		,	OffsetType<float, 8z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cylinder">[10]
	,	{	"Width"
		,	OffsetType<float, 5z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_12>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[5]
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[6]
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[7]
	,	{	"PointLateral"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[8]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[9]
	,	{	"PointVertical"
		,	OffsetType<float, 8z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Cone">[10]
	,	{	"Width"
		,	OffsetType<float, 5z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[4]
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_6>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[5]
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[6]
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[7]
	,	{	"PointLateral"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[8]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[9]
	,	{	"PointVertical"
		,	OffsetType<float, 8z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Ellipsoid">[10]
	,	{	"Width"
		,	OffsetType<float, 9z>
		}
	)
);

static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[0]
	,	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[1]
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[2]
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[3]
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[4]
	,	{	"ComputeSizeMultiplier"
 		,	OffsetType<Pi_6>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[5]
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[6]
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[7]
	,	{	"LeftEyeColorAlpha"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[8]
	,	{	"LeftEyeColorBlue"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[9]
	,	{	"LeftEyeColorGreen"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[10]
	,	{	"LeftEyeColorRed"
		,	OffsetType<float, 8z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[11]
	,	{	"LeftEyeComputeSizeMultiplier"
		,	OffsetType<Pi_6>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[12]
	,	{	"LeftEyeDepth"
		,	OffsetType<float, 9z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[13]
	,	{	"LeftEyeHeight"
		,	OffsetType<float, 9z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[14]
	,	{	"LeftEyePointLateral"
		,	OffsetType<float, 10z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[15]
	,	{	"LeftEyePointLongitudinal"
		,	OffsetType<float, 11z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[16]
	,	{	"LeftEyePointVertical"
		,	OffsetType<float, 12z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[17]
	,	{	"LeftEyeWidth"
		,	OffsetType<float, 9z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[18]
	,	{	"PointLateral"
		,	OffsetType<float, 13z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[19]
	,	{	"PointLongitudinal"
		,	OffsetType<float, 14z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[20]
	,	{	"PointVertical"
		,	OffsetType<float, 15z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[21]
	,	{	"RightEyeColorAlpha"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[22]
	,	{	"RightEyeColorBlue"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[23]
	,	{	"RightEyeColorGreen"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[24]
	,	{	"RightEyeColorRed"
		,	OffsetType<float, 8z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[25]
	,	{	"RightEyeComputeSizeMultiplier"
		,	OffsetType<Pi_6>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[26]
	,	{	"RightEyeDepth"
		,	OffsetType<float, 16z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[27]
	,	{	"RightEyeHeight"
		,	OffsetType<float, 16z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[28]
	,	{	"RightEyePointLateral"
		,	OffsetType<float, 17z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[29]
	,	{	"RightEyePointLongitudinal"
		,	OffsetType<float, 18z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[30]
	,	{	"RightEyePointVertical"
		,	OffsetType<float, 19z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[31]
	,	{	"RightEyeWidth"
		,	OffsetType<float, 16z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[32]
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	)
);
