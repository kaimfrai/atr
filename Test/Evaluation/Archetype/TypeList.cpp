import Evaluation.Archetype.Square;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Triangle;
import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;
import Evaluation.Shared.DataTypes;

import ATR.Member.DynamicTypes;

import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::ATR::Member::DynamicTypes_Of;
using ::Meta::Type;
using ::Meta::TypeID;

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

static_assert
(	DynamicTypes_Of<"Square">
==	TypeList
	{	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Rectangle">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Triangle">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Circle">
==	TypeList
	{	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Ellipse">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Cube">
==	TypeList
	{	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Cuboid">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Pyramid">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Sphere">
==	TypeList
	{	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Cylinder">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Cone">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Ellipsoid">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	}
);

static_assert
(	DynamicTypes_Of<"Head">
==	TypeList
	{	Type<Float>
	,	Type<Float>
	,	Type<Float>
	,	Type<RGBAColor>
	,	Type<RGBAColor>
	,	Type<RGBAColor>
	}
);
