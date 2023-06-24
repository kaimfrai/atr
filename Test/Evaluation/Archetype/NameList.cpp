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
import Evaluation.Dependency.DataTypes;
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
	,	auto
			t_vColorCount
		=	0z
	>
::ATR::Member::Info constexpr inline
	OffsetType
{	::Meta::Type<t_tMember>
,		t_vFloatCount * BitSize_Of<Float>
	+	t_vColorCount * BitSize_Of<RGBAColor>
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
	{	{	"Color"
		,	OffsetType<RGBAColor, 1z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<One>
		}
	,	{	"Height"
		,	OffsetType<Float, 0z>
		}
	,	{	"Width"
		,	OffsetType<Float, 0z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Rectangle">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<One>
		}
	,	{	"Height"
		,	OffsetType<Float, 0z>
		}
	,	{	"Width"
		,	OffsetType<Float, 1z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Triangle">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<Half>
		}
	,	{	"Height"
		,	OffsetType<Float, 0z>
		}
	,	{	"Width"
		,	OffsetType<Float, 1z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Circle">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 1z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<Pi_4>
		}
	,	{	"Height"
		,	OffsetType<Float, 0z>
		}
	,	{	"Width"
		,	OffsetType<Float, 0z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Ellipse">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<Pi_4>
		}
	,	{	"Height"
		,	OffsetType<Float, 0z>
		}
	,	{	"Width"
		,	OffsetType<Float, 1z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Cube">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 1z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<One>
		}
	,	{	"Depth"
		,	OffsetType<Float, 0z>
		}
	,	{	"Height"
		,	OffsetType<Float, 0z>
		}
	,	{	"Width"
		,	OffsetType<Float, 0z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Cuboid">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 3z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<One>
		}
	,	{	"Depth"
		,	OffsetType<Float, 0z>
		}
	,	{	"Height"
		,	OffsetType<Float, 1z>
		}
	,	{	"Width"
		,	OffsetType<Float, 2z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Pyramid">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 3z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Third>
		}
	,	{	"Depth"
		,	OffsetType<Float, 0z>
		}
	,	{	"Height"
		,	OffsetType<Float, 1z>
		}
	,	{	"Width"
		,	OffsetType<Float, 2z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Sphere">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 1z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Pi_6>
		}
	,	{	"Depth"
		,	OffsetType<Float, 0z>
		}
	,	{	"Height"
		,	OffsetType<Float, 0z>
		}
	,	{	"Width"
		,	OffsetType<Float, 0z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Cylinder">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Pi_4>
		}
	,	{	"Depth"
		,	OffsetType<Float, 0z>
		}
	,	{	"Height"
		,	OffsetType<Float, 1z>
		}
	,	{	"Width"
		,	OffsetType<Float, 1z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Cone">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Pi_12>
		}
	,	{	"Depth"
		,	OffsetType<Float, 0z>
		}
	,	{	"Height"
		,	OffsetType<Float, 1z>
		}
	,	{	"Width"
		,	OffsetType<Float, 1z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Ellipsoid">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 3z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Pi_6>
		}
	,	{	"Depth"
		,	OffsetType<Float, 0z>
		}
	,	{	"Height"
		,	OffsetType<Float, 1z>
		}
	,	{	"Width"
		,	OffsetType<Float, 2z>
		}
	}
);

static_assert
(	NamedInfoList_Of<"Head">
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 3z>
		}
	,	{	"ComputeVolumeMultiplier"
 		,	OffsetType<Pi_6>
		}
	,	{	"Depth"
		,	OffsetType<Float, 0z>
		}
	,	{	"Height"
		,	OffsetType<Float, 0z>
		}
	,	{	"LeftEyeColor"
		,	OffsetType<RGBAColor, 3z, 1z>
		}
	,	{	"LeftEyeComputeVolumeMultiplier"
		,	OffsetType<Pi_6>
		}
	,	{	"LeftEyeDepth"
		,	OffsetType<Float, 1z>
		}
	,	{	"LeftEyeHeight"
		,	OffsetType<Float, 1z>
		}
	,	{	"LeftEyeWidth"
		,	OffsetType<Float, 1z>
		}
	,	{	"RightEyeColor"
		,	OffsetType<RGBAColor, 3z, 1z>
		}
	,	{	"RightEyeComputeVolumeMultiplier"
		,	OffsetType<Pi_6>
		}
	,	{	"RightEyeDepth"
		,	OffsetType<Float, 2z>
		}
	,	{	"RightEyeHeight"
		,	OffsetType<Float, 2z>
		}
	,	{	"RightEyeWidth"
		,	OffsetType<Float, 2z>
		}
	,	{	"Width"
		,	OffsetType<Float, 0z>
		}
	}
);
