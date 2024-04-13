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

import ATR.District.ExcludingArray;
import ATR.District.MoveArrayGuard;
import ATR.Instance;
import ATR.Layout.Fork;
import ATR.Member.Composition;

import Meta.Auto.Simd.Float;
import Meta.ID;

import Std;

using ::ATR::District::ExcludingArray;
using ::Meta::ID;

using
	MainDistrict
=	ExcludingArray
	<	{	"Main"
		,	8uz
		}
	>
;

using
	OtherDistrict
=	ExcludingArray
	<	{	"Other"
		,	8uz
		}
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
	,	"_UnionTag"
	>
;

using
	UnionArray
=	::ATR::Instance
	<	::ATR::Member::Union
		<	ID<"Circle">
		,	ID<"Ellipse">
		,	ID<"Rectangle">
		,	ID<"Square">
		,	ID<"Triangle">
		,	ID<"Cube">
		,	ID<"Cuboid">
		,	ID<"Pyramid">
		,	ID<"Sphere">
		,	ID<"Cylinder">
		,	ID<"Cone">
		,	ID<"Ellipsoid">
		,	ID<"Head">
		>
	,	MainDistrict
	,	OtherDistrict
	>
;

static_assert
(	UnionArray
	::	Composition
	.	Layout
		[	0
		]
	.	HasAny
		()
);
static_assert
(	sizeof(UnionArray)
==		2uz
	*	sizeof
		(	::ATR::District::DynamicArray
			<	void
			,	8uz
			>
		)
);

static_assert
(	UnionArray
	::	Composition
	.	Layout
		[	1
		]
	.	HasAny
		()
);
static_assert
(	::std::is_same_v
	<	UnionArray
		::	District
			<	MainDistrict
			>
	,	::ATR::Layout::Fork
		<	::Meta::Simd<float[8uz]>
				[	10uz
				]
		,	::Meta::Simd<unsigned char[8uz]>
				[	1uz
				]
		>
	>
);

static_assert
(	UnionArray
	::	Composition
	.	Layout
		[	2
		]
	.	HasAny
		()
);
static_assert
(	::std::is_same_v
	<	UnionArray
		::	District
			<	OtherDistrict
			>
	,	::Meta::Simd<float[8uz]>
			[	8uz
			]
	>
);

[[nodiscard]]
auto constexpr inline
(	Lifetime
)	()
	noexcept
->	bool
{
	UnionArray
		vHead
	{	{}
	,	{}
	,	{}
	,	10u
	,	10u
	};

	UnionArray
		vMoveConstruct
	{	::std::move
		(	vHead
		)
	};

	UnionArray
		vMoveAssign
	{};

	(	vMoveAssign
	=	::std::move
		(	vMoveConstruct
		)
	);

	return
		true
	;
}

static_assert
(	Lifetime
	()
);
