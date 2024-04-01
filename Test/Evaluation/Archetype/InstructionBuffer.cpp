import Evaluation.Archetype.Circle;
import Evaluation.Archetype.ComputeVolume;
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
import ATR.Layout.Create;
import ATR.Layout.Offset;
import ATR.Member.Composition;
import ATR.Member.Constant;
import ATR.Virtual.InstructionBuffer;

import Meta.ID;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::ATR::Instance;
using ::ATR::Member::ConstantValue;
using ::ATR::Member::Union;
using ::ATR::Virtual::InstructionBuffer_Of;
using ::ATR::Virtual::Operand;
using ::Meta::ID;
using ::Meta::RestoreTypeEntity;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;

using enum ::ATR::Virtual::EInstruction;

using
	LocalBody
=	::ATR::District::ExcludingHeap
	<	{"Heap"}
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

using
	BodyUnion
=	Union
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
;

using
	Body3D
=	Instance
	<	BodyUnion
	,	LocalBody
	>
;

template
	<	ImplicitHash
			t_vTypeName
	>
auto constexpr inline
	Index
=	BodyUnion
	::	IndexOf
		(	t_vTypeName
		)
;

template
	<	typename
			t_tData
	,	auto
			t_vOffset
	,	typename
		...	t_tpIndirectOffsets
	>
[[nodiscard]]
auto constexpr inline
(	MakeOffsetType
)	(	::ATR::Layout::Offset
		<	t_tData
		,	t_vOffset
		,	t_tpIndirectOffsets
			...
		>
			i_vOffset
	)
->	auto
{	return
	Type
	<	decltype
		(	i_vOffset
		)
	>;
}

template
	<	auto
			t_vData
	>
[[nodiscard]]
auto constexpr inline
(	MakeOffsetType
)	(	::ATR::Layout::Offset
		<	ConstantValue<t_vData>
		,	{}
		>
	)
->	auto
{	return
	Type
	<	ConstantValue
		<	t_vData
		>
	>;
}

template
	<	ImplicitHash
			t_vTypeName
	,	ImplicitHash
			t_vMemberName
	,	auto
			t_vInfo
		=	Body3D
			::	Composition
			.	FindMemberInfo
				(	t_vMemberName
				,	Index<t_vTypeName>
				)
	>
requires
	(	t_vInfo
		.	IsValid
			()
	)
auto static constexpr inline
	Offset_Of
=	MakeOffsetType
	(	::ATR::Layout::Offset_For
		<	Body3D
			::	Composition
		,	RestoreTypeEntity
			<	t_vInfo
				.	Type
			>
		,	t_vInfo
			.	Offset
		,	t_vInfo
			.	DistrictIndex
		,	t_vInfo
			.	Initializer
		>
	)
;

auto constexpr inline
&	InstructionBuffer
=	InstructionBuffer_Of
	<	ID<"ComputeVolume">
	,	Body3D const
		&
	>
;

template
	<	::ATR::Virtual::EInstruction
			t_vInstruction
	>
struct
	OperandPair
{
	::std::ptrdiff_t
		First
	=	-1z
	;
	::std::ptrdiff_t
		Second
	=	-1z
	;

	[[nodiscard]]
	auto friend constexpr inline
	(	Equals
	)	(	OperandPair
				i_vLeft
		,	OperandPair
				i_vRight
		)
		noexcept
	->	bool
	{
		if	(	i_vLeft
				.	First
			!=	i_vRight
				.	First
			)
		{	(void("ID mismatch first operand"), std::unreachable());
		}

		if	(	i_vLeft
				.	Second
			!=	i_vRight
				.	Second
			)
		{	(void("ID mismatch second operand"), std::unreachable());
		}

		return
			true
		;
	}

	[[nodiscard]]
	auto static constexpr inline
	(	Read
	)	(	Operand
				i_vFirst
		,	Operand
				i_vSecond
		)
		noexcept
	->	OperandPair
	{	return
		{	i_vFirst
			.	ID
		,	i_vSecond
			.	ID
		};
	}
};

template
	<	::ATR::Virtual::EInstruction
			t_vInstruction
	>
requires
	(	(	t_vInstruction
		==	LoadMember
		)
	or	(	t_vInstruction
		==	LoadConstant
		)
	)
struct
	OperandPair
	<	t_vInstruction
	>
{
	::std::ptrdiff_t
		First
	=	-1
	;
	TypeID
		Second
	{};

	[[nodiscard]]
	auto friend constexpr inline
	(	Equals
	)	(	OperandPair
				i_vLeft
		,	OperandPair
				i_vRight
		)
		noexcept
	->	bool
	{
		if	(	i_vLeft
				.	First
			!=	i_vRight
				.	First
			)
		{	(void("ID mismatch first operand"), std::unreachable());
		}

		if	(	i_vLeft
				.	Second
			!=	i_vRight
				.	Second
			)
		{	(void("Offset mismatch second operand"), std::unreachable());
		}

		return
			true
		;
	}

	[[nodiscard]]
	auto static constexpr inline
	(	Read
	)	(	Operand
				i_vFirst
		,	Operand
				i_vSecond
		)
		noexcept
	->	OperandPair
	{	return
		{	i_vFirst
			.	ID
		,	i_vSecond
			.	Offset
		};
	}
};

template
	<	auto
			t_vInstructionIndex
	,	ImplicitHash
			t_vTypeName
	,	auto const
		&	t_rInstructions
		=	InstructionBuffer
			.	Instructions
				[	t_vInstructionIndex
				]
	>
auto constexpr inline
	Operands
=	OperandPair
	<	t_rInstructions
		.	Type
	>
::	Read
	(	t_rInstructions
		.	FirstOperand
			[	Index<t_vTypeName>
			]
	,	t_rInstructions
		.	SecondOperand
			[	Index<t_vTypeName>
			]
	)
;

static_assert
(	InstructionBuffer
	.	InstructionCount
==	8
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	0
		]
	.	Type
==	LoadConstant
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	0
		]
	.	Result
==	Type<float>
);

static_assert
(	Equals
	(	Operands
		<	0
		,	"Circle"
		>
	,	{	0
		,	Offset_Of
			<	"Circle"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Ellipse"
		>
	,	{	0
		,	Offset_Of
			<	"Ellipse"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Rectangle"
		>
	,	{	0
		,	Offset_Of
			<	"Rectangle"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Square"
		>
	,	{	0
		,	Offset_Of
			<	"Square"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Triangle"
		>
	,	{	0
		,	Offset_Of
			<	"Triangle"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Cube"
		>
	,	{	0
		,	Offset_Of
			<	"Cube"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Cuboid"
		>
	,	{	0
		,	Offset_Of
			<	"Cuboid"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Pyramid"
		>
	,	{	0
		,	Offset_Of
			<	"Pyramid"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Sphere"
		>
	,	{	0
		,	Offset_Of
			<	"Sphere"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Cylinder"
		>
	,	{	0
		,	Offset_Of
			<	"Cylinder"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Cone"
		>
	,	{	0
		,	Offset_Of
			<	"Cone"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Ellipsoid"
		>
	,	{	0
		,	Offset_Of
			<	"Ellipsoid"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	0
		,	"Head"
		>
	,	{	0
		,	Offset_Of
			<	"Head"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	1
		]
	.	Type
==	LoadMember
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	1
		]
	.	Result
==	Type<float>
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Circle"
		>
	,	{	0
		,	Offset_Of
			<	"Circle"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Ellipse"
		>
	,	{	0
		,	Offset_Of
			<	"Ellipse"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Rectangle"
		>
	,	{	0
		,	Offset_Of
			<	"Rectangle"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Square"
		>
	,	{	0
		,	Offset_Of
			<	"Square"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Triangle"
		>
	,	{	0
		,	Offset_Of
			<	"Triangle"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Cube"
		>
	,	{	0
		,	Offset_Of
			<	"Cube"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Cuboid"
		>
	,	{	0
		,	Offset_Of
			<	"Cuboid"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Pyramid"
		>
	,	{	0
		,	Offset_Of
			<	"Pyramid"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Sphere"
		>
	,	{	0
		,	Offset_Of
			<	"Sphere"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Cylinder"
		>
	,	{	0
		,	Offset_Of
			<	"Cylinder"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Cone"
		>
	,	{	0
		,	Offset_Of
			<	"Cone"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Ellipsoid"
		>
	,	{	0
		,	Offset_Of
			<	"Ellipsoid"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	1
		,	"Head"
		>
	,	{	0
		,	Offset_Of
			<	"Head"
			,	"Height"
			>
		}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	2
		]
	.	Type
==	Multiply
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	2
		]
	.	Result
==	Type<float>
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Circle"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Ellipse"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Rectangle"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Square"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Square"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Cube"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Cuboid"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Pyramid"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Sphere"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Cylinder"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Cone"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Ellipsoid"
		>
	,	{	1
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	2
		,	"Head"
		>
	,	{	1
		,	2
		}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	3
		]
	.	Type
==	LoadMember
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	3
		]
	.	Result
==	Type<float>
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Circle"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Ellipse"
		>
	,	{	0
		,	Offset_Of
			<	"Ellipse"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Rectangle"
		>
	,	{	0
		,	Offset_Of
			<	"Rectangle"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Square"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Triangle"
		>
	,	{	0
		,	Offset_Of
			<	"Triangle"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Cube"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Cuboid"
		>
	,	{	0
		,	Offset_Of
			<	"Cuboid"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Pyramid"
		>
	,	{	0
		,	Offset_Of
			<	"Pyramid"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Sphere"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Cylinder"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Cone"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Ellipsoid"
		>
	,	{	0
		,	Offset_Of
			<	"Ellipsoid"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	3
		,	"Head"
		>
	,	{}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	4
		]
	.	Type
==	Multiply
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	4
		]
	.	Result
==	Type<float>
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Circle"
		>
	,	{	3
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Ellipse"
		>
	,	{	3
		,	4
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Rectangle"
		>
	,	{	3
		,	4
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Square"
		>
	,	{	3
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Triangle"
		>
	,	{	3
		,	4
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Cube"
		>
	,	{	3
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Cuboid"
		>
	,	{	3
		,	4
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Pyramid"
		>
	,	{	3
		,	4
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Sphere"
		>
	,	{	3
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Cylinder"
		>
	,	{	3
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Cone"
		>
	,	{	3
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Ellipsoid"
		>
	,	{	3
		,	4
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	4
		,	"Head"
		>
	,	{	3
		,	2
		}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	5
		]
	.	Type
==	LoadMember
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	5
		]
	.	Result
==	Type<float>
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Circle"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Ellipse"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Rectangle"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Square"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Triangle"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Cube"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Cuboid"
		>
	,	{	0
		,	Offset_Of
			<	"Cuboid"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Pyramid"
		>
	,	{	0
		,	Offset_Of
			<	"Pyramid"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Sphere"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Cylinder"
		>
	,	{	0
		,	Offset_Of
			<	"Cylinder"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Cone"
		>
	,	{	0
		,	Offset_Of
			<	"Cone"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Ellipsoid"
		>
	,	{	0
		,	Offset_Of
			<	"Ellipsoid"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	5
		,	"Head"
		>
	,	{}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	6
		]
	.	Type
==	Multiply
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	6
		]
	.	Result
==	Type<float>
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Circle"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Ellipse"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Rectangle"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Square"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Triangle"
		>
	,	{}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Cube"
		>
	,	{	5
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Cuboid"
		>
	,	{	5
		,	6
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Pyramid"
		>
	,	{	5
		,	6
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Sphere"
		>
	,	{	5
		,	2
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Cylinder"
		>
	,	{	5
		,	6
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Cone"
		>
	,	{	5
		,	6
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Ellipsoid"
		>
	,	{	5
		,	6
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	6
		,	"Head"
		>
	,	{	5
		,	2
		}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	7
		]
	.	Type
==	Return
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	7
		]
	.	Result
==	Type<float>
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Circle"
		>
	,	{	5
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Ellipse"
		>
	,	{	5
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Rectangle"
		>
	,	{	5
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Square"
		>
	,	{	5
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Triangle"
		>
	,	{	5
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Cube"
		>
	,	{	7
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Cuboid"
		>
	,	{	7
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Pyramid"
		>
	,	{	7
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Sphere"
		>
	,	{	7
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Cylinder"
		>
	,	{	7
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Cone"
		>
	,	{	7
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Ellipsoid"
		>
	,	{	7
		}
	)
);
static_assert
(	Equals
	(	Operands
		<	7
		,	"Head"
		>
	,	{	7
		}
	)
);
