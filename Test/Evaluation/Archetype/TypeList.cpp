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

import ATR.Member.Config;
import ATR.Member.CountedType;

import Meta.ID;
import Meta.Memory.Alignment;
import Meta.Memory.Constraint;
import Meta.String.Literal;
import Meta.Token.Type;

import Std;

using ::ATR::Member::Config_Of;
using ::ATR::Member::CountedType;
using ::Meta::ID;
using ::Meta::Memory::Alignment;
using ::Meta::Memory::BitAlign_Of;
using ::Meta::String::Literal;
using ::Meta::Type;

template
	<	Literal
			t_vTypeName
	,	Alignment
			t_vAlignment
	>
::std::span constexpr inline
	TypeList_Of
=	Config_Of
	<	ID<t_vTypeName>
	>
	.	AlignTypeCounts
		[	t_vAlignment
		]
;

[[nodiscard]]
auto constexpr inline
(	operator==
)	(	::std::span<CountedType const>
			i_rLeft
	,	CountedType
			i_vRight
	)
	noexcept
->	bool
{	return
		(	i_rLeft
			.	size
				()
		==	1uz
		)
	and	(	i_rLeft
			[	0uz
			]
		==	i_vRight
		)
	;
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
(	TypeList_Of<"Square", FloatAlign>
==	CountedType
	{	Type<Float>
	,	1z
	}
);
static_assert
(	TypeList_Of<"Square", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Rectangle", FloatAlign>
==	CountedType
	{	Type<Float>
	,	2z
	}
);
static_assert
(	TypeList_Of<"Rectangle", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Triangle", FloatAlign>
==	CountedType
	{	Type<Float>
	,	2z
	}
);
static_assert
(	TypeList_Of<"Triangle", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Circle", FloatAlign>
==	CountedType
	{	Type<Float>
	,	1z
	}
);
static_assert
(	TypeList_Of<"Circle", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Ellipse", FloatAlign>
==	CountedType
	{	Type<Float>
	,	2z
	}
);
static_assert
(	TypeList_Of<"Ellipse", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Cube", FloatAlign>
==	CountedType
	{	Type<Float>
	,	1z
	}
);
static_assert
(	TypeList_Of<"Cube", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Cuboid", FloatAlign>
==	CountedType
	{	Type<Float>
	,	3z
	}
);
static_assert
(	TypeList_Of<"Cuboid", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Pyramid", FloatAlign>
==	CountedType
	{	Type<Float>
	,	3z
	}
);
static_assert
(	TypeList_Of<"Pyramid", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Sphere", FloatAlign>
==	CountedType
	{	Type<Float>
	,	1z
	}
);
static_assert
(	TypeList_Of<"Sphere", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Cylinder", FloatAlign>
==	CountedType
	{	Type<Float>
	,	2z
	}
);
static_assert
(	TypeList_Of<"Cylinder", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Cone", FloatAlign>
==	CountedType
	{	Type<Float>
	,	2z
	}
);
static_assert
(	TypeList_Of<"Cone", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Ellipsoid", FloatAlign>
==	CountedType
	{	Type<Float>
	,	3z
	}
);
static_assert
(	TypeList_Of<"Ellipsoid", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	1z
	}
);

static_assert
(	TypeList_Of<"Head", FloatAlign>
==	CountedType
	{	Type<Float>
	,	3z
	}
);
static_assert
(	TypeList_Of<"Head", ColorAlign>
==	CountedType
	{	Type<RGBAColor>
	,	2z
	}
);
