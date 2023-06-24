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
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.String.Chain;
import Meta.String.Literal;
import Meta.String.Literal;
import Meta.Token.Type;

import Std;

using ::ATR::Member::Config_Of;
using ::ATR::Member::NamedInfo;

using ::Meta::ID;
using ::Meta::Memory::BitSize_Of;
using ::Meta::String::Chain;
using ::Meta::String::Literal;

using namespace ::Meta::Literals;

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

using
	NameList
=	::std::initializer_list
	<	NamedInfoView
	>
;

using One = Fraction<>;
using Half = Fraction<1z, 2z>;
using Third = Fraction<1z, 3z>;
using Pi_6 = PiFraction<1z, 6z>;
using Pi_4 = PiFraction<1z, 4z>;
using Pi_12 = PiFraction<1z, 12z>;

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
(	operator==
)	(	NamedInfo const
		&	i_rLeft
	,	NamedInfoView const
		&	i_rRight
	)
	noexcept
->	bool
{	return
		(	i_rLeft.Name
		==	Chain{i_rRight.Name}
		)
	and	(	i_rLeft.Info.Type
		==	i_rRight.Info.Type
		)
	and	(	i_rLeft.Info.Offset
		==	i_rRight.Info.Offset
		)
	;
}

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
	{	::std::unreachable
			()
		;
	}
	if	(	i_vLeft.Info.Type
		!=	i_vRight.Info.Type
		)
	{	::std::unreachable
			()
		;
	}
	if	(	i_vLeft.Info.Offset
		!=	i_vRight.Info.Offset
		)
	{	::std::unreachable
			()
		;
	}

	return
		true
	;
}

[[nodiscard]]
auto constexpr inline
(	operator==
)	(	::std::span<NamedInfo const>
			i_rLeftList
	,	NameList
			i_rRightList
	)
	noexcept
->	bool
{	return
	::std::equal
	(	begin(i_rLeftList)
	,	end(i_rLeftList)
	,	begin(i_rRightList)
	,	end(i_rRightList)
	);
}

static_assert
(	NamedInfoList_Of<"Square">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<One>
		}
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Rectangle">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<One>
		}
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	,	{	"Width"
		,	OffsetType<float, 5z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Triangle">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Half>
		}
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	,	{	"Width"
		,	OffsetType<float, 5z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Circle">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_4>
		}
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Ellipse">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_4>
		}
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	,	{	"Width"
		,	OffsetType<float, 5z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Cube">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<One>
		}
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Cuboid">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<One>
		}
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	,	{	"Width"
		,	OffsetType<float, 6z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Pyramid">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Third>
		}
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	,	{	"Width"
		,	OffsetType<float, 6z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Sphere">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_6>
		}
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	,	{	"Height"
		,	OffsetType<float, 4z>
		}
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Cylinder">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_4>
		}
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	,	{	"Width"
		,	OffsetType<float, 5z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Cone">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_12>
		}
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	,	{	"Width"
		,	OffsetType<float, 5z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Ellipsoid">
==	NameList
	{	{	"ColorAlpha"
		,	OffsetType<float, 0z>
		}
	,	{	"ColorBlue"
		,	OffsetType<float, 1z>
		}
	,	{	"ColorGreen"
		,	OffsetType<float, 2z>
		}
	,	{	"ColorRed"
		,	OffsetType<float, 3z>
		}
	,	{	"ComputeSizeMultiplier"
		,	OffsetType<Pi_6>
		}
	,	{	"Depth"
		,	OffsetType<float, 4z>
		}
	,	{	"Height"
		,	OffsetType<float, 5z>
		}
	,	{	"Width"
		,	OffsetType<float, 6z>
		}
	}
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
	,	{	"LeftEyeWidth"
		,	OffsetType<float, 9z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[15]
	,	{	"RightEyeColorAlpha"
		,	OffsetType<float, 5z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[16]
	,	{	"RightEyeColorBlue"
		,	OffsetType<float, 6z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[17]
	,	{	"RightEyeColorGreen"
		,	OffsetType<float, 7z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[18]
	,	{	"RightEyeColorRed"
		,	OffsetType<float, 8z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[19]
	,	{	"RightEyeComputeSizeMultiplier"
		,	OffsetType<Pi_6>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[20]
	,	{	"RightEyeDepth"
		,	OffsetType<float, 10z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[21]
	,	{	"RightEyeHeight"
		,	OffsetType<float, 10z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[22]
	,	{	"RightEyeWidth"
		,	OffsetType<float, 10z>
		}
	)
);
static_assert
(	Equals
	(	NamedInfoList_Of<"Head">[23]
	,	{	"Width"
		,	OffsetType<float, 4z>
		}
	)
);
