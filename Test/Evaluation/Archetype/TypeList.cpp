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

import Meta.ID;
import Meta.Memory.Alignment;
import Meta.Memory.Constraint;
import Meta.String.Literal;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::ATR::Member::Config_Of;
using ::Meta::ID;
using ::Meta::Memory::BitAlign_Of;
using ::Meta::String::Literal;
using ::Meta::Type;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

template
	<	Literal
			t_vTypeName
	>
auto constexpr
&	TypeList_Of
=	Config_Of
	<	ID<t_vTypeName>
	>
	.	Layout
;

using One = Fraction<>;
using Half = Fraction<1z, 2z>;
using Third = Fraction<1z, 3z>;
using Pi_6 = PiFraction<1z, 6z>;
using Pi_4 = PiFraction<1z, 4z>;
using Pi_12 = PiFraction<1z, 12z>;

using
	TypeList
=	::std::initializer_list
	<	TypeID
	>
;

[[nodiscard]]
auto constexpr
(	operator==
)	(	::std::span<TypeID const>
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

auto constexpr
	FloatAlign
=	BitAlign_Of
	<	Float
	>
;

auto constexpr
	ColorAlign
=	BitAlign_Of
	<	RGBAColor
	>
;

static_assert
(	TypeList_Of<"Square">[FloatAlign]
==	TypeList
	{	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Square">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Square">[0_align]
==	TypeList
	{	Type<One>
	}
);

static_assert
(	TypeList_Of<"Rectangle">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Rectangle">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Rectangle">[0_align]
==	TypeList
	{	Type<One>
	}
);

static_assert
(	TypeList_Of<"Triangle">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Triangle">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Triangle">[0_align]
==	TypeList
	{	Type<Half>
	}
);

static_assert
(	TypeList_Of<"Circle">[FloatAlign]
==	TypeList
	{	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Circle">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Circle">[0_align]
==	TypeList
	{	Type<Pi_4>
	}
);

static_assert
(	TypeList_Of<"Ellipse">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Ellipse">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Ellipse">[0_align]
==	TypeList
	{	Type<Pi_4>
	}
);

static_assert
(	TypeList_Of<"Cube">[FloatAlign]
==	TypeList
	{	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Cube">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Cube">[0_align]
==	TypeList
	{	Type<One>
	}
);

static_assert
(	TypeList_Of<"Cuboid">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Cuboid">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Cuboid">[0_align]
==	TypeList
	{	Type<One>
	}
);

static_assert
(	TypeList_Of<"Pyramid">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Pyramid">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Pyramid">[0_align]
==	TypeList
	{	Type<Third>
	}
);

static_assert
(	TypeList_Of<"Sphere">[FloatAlign]
==	TypeList
	{	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Sphere">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Sphere">[0_align]
==	TypeList
	{	Type<Pi_6>
	}
);

static_assert
(	TypeList_Of<"Cylinder">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Cylinder">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Cylinder">[0_align]
==	TypeList
	{	Type<Pi_4>
	}
);

static_assert
(	TypeList_Of<"Cone">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Cone">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Cone">[0_align]
==	TypeList
	{	Type<Pi_12>
	}
);

static_assert
(	TypeList_Of<"Ellipsoid">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Ellipsoid">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Ellipsoid">[0_align]
==	TypeList
	{	Type<Pi_6>
	}
);

static_assert
(	TypeList_Of<"Head">[FloatAlign]
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	}
);
static_assert
(	TypeList_Of<"Head">[ColorAlign]
==	TypeList
	{	Type<RGBAColor>
	,	Type<RGBAColor>
	,	Type<RGBAColor>
	}
);
static_assert
(	TypeList_Of<"Head">[0_align]
==	TypeList
	{	Type<Pi_6>
	,	Type<Pi_6>
	,	Type<Pi_6>
	}
);
