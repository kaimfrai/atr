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

import ATR.Instance;

import Meta.Auto.Ref.RArray;
import Meta.ID;
import Meta.String.Literal;

import Std;

using namespace ::Meta::Literals;

using ::ATR::Instance;
using ::Meta::Auto::CArray;
using ::Meta::ID;
using ::Meta::String::Literal;

template
	<	::std::size_t
			t_vSize
	>
[[nodiscard]]
auto constexpr inline
(	Compare
)	(	CArray<::std::byte, t_vSize>
			i_rBuffer
	,	auto
			i_vOffset
	,	float
			i_vOriginal
	)
	noexcept
->	bool
{
	auto const
		vCopy
	=	i_vOffset
		(	i_rBuffer
		)
	;
	if	(	vCopy
		!=	i_vOriginal
		)
	{	(void("Mismatch!"), ::std::unreachable());
	}

	return
		true
	;
}

template
	<	Literal
			t_vTypeName
	>
[[nodiscard]]
auto constexpr inline
(	ReadWrite
)	()
	noexcept
->	bool
{
	using
		tBody
	=	Instance
		<	ID<t_vTypeName>
		>
	;

	tBody
		vBody
	{};
	vBody
	[	"Height"_id
	]=	12.3f
	;
	vBody
	[	"Width"_id
	]=	45.6f
	;
	vBody
	[	"Depth"_id
	]=	78.9f
	;

	alignas(tBody)
	::std::byte
		vBuffer
		[	sizeof(tBody)
		]
	{};

	auto const
		vAsBytes
	=	::std::bit_cast
		<	::std::array
			<	::std::byte
			,	sizeof(tBody)
			>
		>(	vBody
		)
	;
	::std::copy
	(	vAsBytes
		.	begin
			()
	,	vAsBytes
		.	end
			()
	,	+vBuffer
	);

	auto const
		rBuffer
	=	CArray<::std::byte, sizeof(tBody)>
		{	vBuffer
		}
	;
	return
		Compare
		(	rBuffer
		,	vBody
			.	template
				Offset_Of
				<	"Height"
				>
		,	vBody
			[	"Height"_id
			]
		)
	and	Compare
		(	rBuffer
		,	vBody
			.	template
				Offset_Of
				<	"Width"
				>
		,	vBody
			[	"Width"_id
			]
		)
	and	Compare
		(	rBuffer
		,	vBody
			.	template
				Offset_Of
				<	"Depth"
				>
		,	vBody
			[	"Depth"_id
			]
		)
	;
}

static_assert
(	ReadWrite
	<	"Cube"
	>()
);

static_assert
(	ReadWrite
	<	"Cuboid"
	>()
);

static_assert
(	ReadWrite
	<	"Pyramid"
	>()
);

static_assert
(	ReadWrite
	<	"Sphere"
	>()
);

static_assert
(	ReadWrite
	<	"Cylinder"
	>()
);

static_assert
(	ReadWrite
	<	"Cone"
	>()
);

static_assert
(	ReadWrite
	<	"Head"
	>()
);
