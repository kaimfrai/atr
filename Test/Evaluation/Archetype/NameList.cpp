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
import Evaluation.Shared.DataTypes;
import Evaluation.Shared.Fraction;
import Evaluation.Shared.PiFraction;

import ATR.Member.Config;
import ATR.Member.NamedInfo;
import ATR.Member.Info;

import Meta.ID.StringLiteral;
import Meta.ID.StringChain;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Token.Type;

import Std;

using ::ATR::Member::Config_Of;
using ::ATR::Member::NamedInfo;
using ::Meta::Memory::BitSize_Of;

using namespace ::Meta::Literals;

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
::ATR::Member::Info constexpr
	OffsetType
{	::Meta::Type<t_tMember>
,		t_vFloatCount * BitSize_Of<Float>
	+	t_vColorCount * BitSize_Of<RGBAColor>
};

[[nodiscard]]
auto constexpr
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
	,	[]	(	NamedInfo const
				&	i_rLeft
			,	NamedInfoView const
				&	i_rRight
			)
		{	return
				(	i_rLeft.Name
				==	::Meta::StringChain{i_rRight.Name}
				)
			and	(	i_rLeft.Info.Type
				==	i_rRight.Info.Type
				)
			and	(	i_rLeft.Info.Offset
				==	i_rRight.Info.Offset
				)
			;
		}
	);
}

static_assert
(	Config_Of<"Square">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 1z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<One, 1z, 1z>
		}
	,	{	"Height"
		,	OffsetType<Float>
		}
	,	{	"Width"
		,	OffsetType<Float>
		}
	}
);

static_assert
(	Config_Of<"Rectangle">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<One, 2z, 1z>
		}
	,	{	"Height"
		,	OffsetType<Float>
		}
	,	{	"Width"
		,	OffsetType<Float, 1z>
		}
	}
);

static_assert
(	Config_Of<"Triangle">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<Half, 2z, 1z>
		}
	,	{	"Height"
		,	OffsetType<Float>
		}
	,	{	"Width"
		,	OffsetType<Float, 1z>
		}
	}
);

static_assert
(	Config_Of<"Circle">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 1z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<Pi_4, 1z, 1z>
		}
	,	{	"Height"
		,	OffsetType<Float>
		}
	,	{	"Width"
		,	OffsetType<Float>
		}
	}
);

static_assert
(	Config_Of<"Ellipse">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeAreaMultiplier"
		,	OffsetType<Pi_4, 2z, 1z>
		}
	,	{	"Height"
		,	OffsetType<Float>
		}
	,	{	"Width"
		,	OffsetType<Float, 1z>
		}
	}
);

static_assert
(	Config_Of<"Cube">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 1z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<One, 1z, 1z>
		}
	,	{	"Depth"
		,	OffsetType<Float>
		}
	,	{	"Height"
		,	OffsetType<Float>
		}
	,	{	"Width"
		,	OffsetType<Float>
		}
	}
);

static_assert
(	Config_Of<"Cuboid">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 3z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<One, 3z, 1z>
		}
	,	{	"Depth"
		,	OffsetType<Float>
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
(	Config_Of<"Pyramid">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 3z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Third, 3z, 1z>
		}
	,	{	"Depth"
		,	OffsetType<Float>
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
(	Config_Of<"Sphere">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 1z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Pi_6, 1z, 1z>
		}
	,	{	"Depth"
		,	OffsetType<Float>
		}
	,	{	"Height"
		,	OffsetType<Float>
		}
	,	{	"Width"
		,	OffsetType<Float>
		}
	}
);

static_assert
(	Config_Of<"Cylinder">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Pi_4, 2z, 1z>
		}
	,	{	"Depth"
		,	OffsetType<Float>
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
(	Config_Of<"Cone">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 2z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Pi_12, 2z, 1z>
		}
	,	{	"Depth"
		,	OffsetType<Float>
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
(	Config_Of<"Ellipsoid">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 3z>
		}
	,	{	"ComputeVolumeMultiplier"
		,	OffsetType<Pi_6, 3z, 1z>
		}
	,	{	"Depth"
		,	OffsetType<Float>
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
(	Config_Of<"Head">.NamedInfoView()
==	NameList
	{	{	"Color"
		,	OffsetType<RGBAColor, 3z>
		}
	,	{	"ComputeVolumeMultiplier"
 		,	OffsetType<Pi_6, 3z, 3z>
		}
	,	{	"Depth"
		,	OffsetType<Float>
		}
	,	{	"Height"
		,	OffsetType<Float>
		}
	,	{	"LeftEyeColor"
		,	OffsetType<RGBAColor, 3z, 1z>
		}
	,	{	"LeftEyeComputeVolumeMultiplier"
		,	OffsetType<Pi_6, 3z, 3z>
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
		,	OffsetType<RGBAColor, 3z, 2z>
		}
	,	{	"RightEyeComputeVolumeMultiplier"
		,	OffsetType<Pi_6, 3z, 3z>
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
		,	OffsetType<Float>
		}
	}
);
