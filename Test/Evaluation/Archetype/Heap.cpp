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

import ATR.District.ExcludingHeap;
import ATR.Instance;
import ATR.Literals;

import Meta.ID;

import Std;

using ::ATR::District::Info;
using ::ATR::District::ExcludingHeap;

using ::Meta::ID;
using ::Meta::ProtoID;

using namespace ::ATR::Literals;

using
	LocalBody
=	ExcludingHeap
	<	Info{"Heap"}
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
	>
;

[[nodiscard]]
auto constexpr inline
(	SameSize
)	(	ProtoID auto
			i_vName
	)
	noexcept
->	bool
{
	auto const
		vDefaultBody
	=	::ATR::Instance
		<	decltype(i_vName)
		>{}
	;

	auto const
		vLocalBody
	=	::ATR::Instance
		<	decltype(i_vName)
		,	LocalBody
		>{}
	;
	return
		sizeof(vDefaultBody)
	==	sizeof(vLocalBody)
	;
}

static_assert
(	SameSize
	(	"Circle"_id
	)
);
static_assert
(	SameSize
	(	"Cone"_id
	)
);
static_assert
(	SameSize
	(	"Cube"_id
	)
);
static_assert
(	SameSize
	(	"Cuboid"_id
	)
);
static_assert
(	SameSize
	(	"Cylinder"_id
	)
);
static_assert
(	SameSize
	(	"Ellipse"_id
	)
);
static_assert
(	SameSize
	(	"Ellipsoid"_id
	)
);
static_assert
(	not
	SameSize
	(	"Head"_id
	)
);
static_assert
(	SameSize
	(	"Pyramid"_id
	)
);
static_assert
(	SameSize
	(	"Rectangle"_id
	)
);
static_assert
(	SameSize
	(	"Sphere"_id
	)
);
static_assert
(	SameSize
	(	"Square"_id
	)
);
static_assert
(	SameSize
	(	"Triangle"_id
	)
);

[[nodiscard]]
auto constexpr inline
(	Trivial
)	(	ProtoID auto
			i_vName
	)
	noexcept
->	bool
{	return
		::std::is_trivial_v
		<	::ATR::Instance
			<	decltype(i_vName)
			,	LocalBody
			>
		>
	;
}

static_assert
(	Trivial
	(	"Circle"_id
	)
);
static_assert
(	Trivial
	(	"Cone"_id
	)
);
static_assert
(	Trivial
	(	"Cube"_id
	)
);
static_assert
(	Trivial
	(	"Cuboid"_id
	)
);
static_assert
(	Trivial
	(	"Cylinder"_id
	)
);
static_assert
(	Trivial
	(	"Ellipse"_id
	)
);
static_assert
(	Trivial
	(	"Ellipsoid"_id
	)
);
static_assert
(	not
	Trivial
	(	"Head"_id
	)
);
static_assert
(	Trivial
	(	"Pyramid"_id
	)
);
static_assert
(	Trivial
	(	"Rectangle"_id
	)
);
static_assert
(	Trivial
	(	"Sphere"_id
	)
);
static_assert
(	Trivial
	(	"Square"_id
	)
);
static_assert
(	Trivial
	(	"Triangle"_id
	)
);

[[nodiscard]]
auto constexpr inline
(	Copyable
)	(	ProtoID auto
			i_vName
	)
	noexcept
->	bool
{	return
		::std::copyable
		<	::ATR::Instance
			<	decltype(i_vName)
			,	LocalBody
			>
		>
	;
}

static_assert
(	Copyable
	(	"Circle"_id
	)
);
static_assert
(	Copyable
	(	"Cone"_id
	)
);
static_assert
(	Copyable
	(	"Cube"_id
	)
);
static_assert
(	Copyable
	(	"Cuboid"_id
	)
);
static_assert
(	Copyable
	(	"Cylinder"_id
	)
);
static_assert
(	Copyable
	(	"Ellipse"_id
	)
);
static_assert
(	Copyable
	(	"Ellipsoid"_id
	)
);
static_assert
(	not
	Copyable
	(	"Head"_id
	)
);
static_assert
(	Copyable
	(	"Pyramid"_id
	)
);
static_assert
(	Copyable
	(	"Rectangle"_id
	)
);
static_assert
(	Copyable
	(	"Sphere"_id
	)
);
static_assert
(	Copyable
	(	"Square"_id
	)
);
static_assert
(	Copyable
	(	"Triangle"_id
	)
);


[[nodiscard]]
auto constexpr inline
(	Movable
)	(	ProtoID auto
			i_vName
	)
	noexcept
->	bool
{	return
		::std::movable
		<	::ATR::Instance
			<	decltype(i_vName)
			,	LocalBody
			>
		>
	;
}

static_assert
(	Movable
	(	"Circle"_id
	)
);
static_assert
(	Movable
	(	"Cone"_id
	)
);
static_assert
(	Movable
	(	"Cube"_id
	)
);
static_assert
(	Movable
	(	"Cuboid"_id
	)
);
static_assert
(	Movable
	(	"Cylinder"_id
	)
);
static_assert
(	Movable
	(	"Ellipse"_id
	)
);
static_assert
(	Movable
	(	"Ellipsoid"_id
	)
);
static_assert
(	Movable
	(	"Head"_id
	)
);
static_assert
(	Movable
	(	"Pyramid"_id
	)
);
static_assert
(	Movable
	(	"Rectangle"_id
	)
);
static_assert
(	Movable
	(	"Sphere"_id
	)
);
static_assert
(	Movable
	(	"Square"_id
	)
);
static_assert
(	Movable
	(	"Triangle"_id
	)
);

using
	DefaultHead
=	::ATR::Instance
	<	ID<"Head">
	>
;

using
	LocalHead
=	::ATR::Instance
	<	ID<"Head">
	,	LocalBody
	>
;

[[nodiscard]]
auto constexpr inline
(	Lifetime
)	()
	noexcept
->	bool
{
	LocalHead
		vHead
	{};
	vHead
	[	"LeftEyeColorRed"_id
	]=	1.0f
	;
	vHead
	[	"LeftEyeColorGreen"_id
	]=	2.0f
	;
	return
		(	vHead
			[	"RightEyeColorRed"_id
			]
		==	1.0f
		)
	and	(	vHead
			[	"RightEyeColorGreen"_id
			]
		==	2.0f
		)
	;
}

static_assert
(	Lifetime
	()
);

static_assert
(	sizeof(LocalHead)
==	(	sizeof(void*)
	+	sizeof(float[8])
	)
);
static_assert
(	sizeof(LocalHead)
<	sizeof(DefaultHead)
);
