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

import Meta.Token.Type;
import Meta.Token.TypeID;
import Meta.Memory.Constraint;
import Meta.Memory.Alignment;

import Std;

using ::ATR::Member::Config_Of;
using ::Meta::Memory::BitAlign_Of;
using ::Meta::Type;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

using One = Fraction<>;
using Half = Fraction<1z, 2z>;
using Third = Fraction<1z, 3z>;
using Pi_6 = PiFraction<1z, 6z>;
using Pi_4 = PiFraction<1z, 4z>;
using Pi_12 = PiFraction<1z, 12z>;

using
	TypeList
=	::std::initializer_list
	<	::Meta::TypeID
	>
;

[[nodiscard]]
auto constexpr
(	operator
	==
)	(	::std::span<::Meta::TypeID const>
			i_rLeft
	,	TypeList
			i_rRight
	)
	noexcept
->	bool
{
	return
	::std::equal
	(	begin(i_rLeft)
	,	end(i_rLeft)
	,	begin(i_rRight)
	,	end(i_rRight)
	);
}

auto constexpr inline
	FloatAlign
=	BitAlign_Of
	<	Float
	>
;

auto constexpr inline
	ColorAlign
=	BitAlign_Of
	<	RGBAColor
	>
;

static_assert
(	Config_Of<"Square">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	}
);
static_assert
(	Config_Of<"Square">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Square">.Layout[0_align]
==	TypeList
	{	Type<One>
	}
);

static_assert
(	Config_Of<"Rectangle">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Rectangle">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Rectangle">.Layout[0_align]
==	TypeList
	{	Type<One>
	}
);

static_assert
(	Config_Of<"Triangle">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Triangle">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Triangle">.Layout[0_align]
==	TypeList
	{	Type<Half>
	}
);

static_assert
(	Config_Of<"Circle">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	}
);
static_assert
(	Config_Of<"Circle">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Circle">.Layout[0_align]
==	TypeList
	{	Type<Pi_4>
	}
);

static_assert
(	Config_Of<"Ellipse">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Ellipse">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Ellipse">.Layout[0_align]
==	TypeList
	{	Type<Pi_4>
	}
);

static_assert
(	Config_Of<"Cube">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	}
);
static_assert
(	Config_Of<"Cube">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Cube">.Layout[0_align]
==	TypeList
	{	Type<One>
	}
);

static_assert
(	Config_Of<"Cuboid">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Cuboid">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Cuboid">.Layout[0_align]
==	TypeList
	{	Type<One>
	}
);

static_assert
(	Config_Of<"Pyramid">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Pyramid">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Pyramid">.Layout[0_align]
==	TypeList
	{	Type<Third>
	}
);

static_assert
(	Config_Of<"Sphere">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	}
);
static_assert
(	Config_Of<"Sphere">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Sphere">.Layout[0_align]
==	TypeList
	{	Type<Pi_6>
	}
);

static_assert
(	Config_Of<"Cylinder">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Cylinder">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Cylinder">.Layout[0_align]
==	TypeList
	{	Type<Pi_4>
	}
);

static_assert
(	Config_Of<"Cone">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Cone">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Cone">.Layout[0_align]
==	TypeList
	{	Type<Pi_12>
	}
);

static_assert
(	Config_Of<"Ellipsoid">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Ellipsoid">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Ellipsoid">.Layout[0_align]
==	TypeList
	{	Type<Pi_6>
	}
);

static_assert
(	Config_Of<"Head">.Layout[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	Config_Of<"Head">.Layout[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	,	Type<RGBAColor>
	,	Type<RGBAColor>
	}
);
static_assert
(	Config_Of<"Head">.Layout[0_align]
==	TypeList
	{	Type<Pi_6>
	,	Type<Pi_6>
	,	Type<Pi_6>
	}
);
