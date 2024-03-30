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
import Evaluation.Dependency.Fraction;
import Evaluation.Dependency.PiFraction;

import ATR.District.ExcludingHeap;
import ATR.Instance;
import ATR.Member.Composition;
import ATR.Member.Constant;
import ATR.Virtual.InstructionBuffer;

import Meta.ID;
import Meta.Token.Type;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;

import Std;

using ::ATR::Instance;
using ::ATR::Member::ConstantValue;
using ::ATR::Member::Union;
using ::ATR::Virtual::InstructionBuffer_Of;
using ::ATR::Virtual::Variable;
using ::Meta::ID;
using ::Meta::Type;

using namespace ::Meta::Literals;
using enum ::ATR::Virtual::EInstruction;

void const constexpr inline* One = ConstantValue<Fraction<>>{};
void const constexpr inline* Half = ConstantValue<Fraction<1z, 2z>>{};
void const constexpr inline* Third = ConstantValue<Fraction<1z, 3z>>{};
void const constexpr inline* Pi_6 = ConstantValue<PiFraction<1z, 6z>>{};
void const constexpr inline* Pi_4 = ConstantValue<PiFraction<1z, 4z>>{};
void const constexpr inline* Pi_12 = ConstantValue<PiFraction<1z, 12z>>{};

using
	LocalBody
=	::ATR::District::ExcludingHeap
	<	::ATR::District::Info{"Heap"}
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

auto constexpr inline
&	InstructionBuffer
=	InstructionBuffer_Of
	<	ID<"ComputeVolume">
	,	Instance
		<	Union
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
// 		,	LocalBody
		>	const
		&
	>
;

[[nodiscard]]
auto constexpr inline
(	Equals
)	(	Variable const
		&	i_rLeft
	,	Variable const
		&	i_rRight
	)
	noexcept
->	bool
{
	if	(	i_rLeft
			.	ID
		!=	i_rRight
			.	ID
		)
	{	(void("ID mismatch"), std::unreachable());
	}

	if	(	i_rLeft
			.	Type
		!=	i_rRight
			.	Type
		)
	{	(void("Type mismatch"), std::unreachable());
	}

	if	(	i_rLeft
			.	Offset
		!=	i_rRight
			.	Offset
		)
	{	(void("Offset mismatch"), std::unreachable());
	}

	if	(	i_rLeft
			.	District
		!=	i_rRight
			.	District
		)
	{	(void("District mismatch"), std::unreachable());
	}

	if	(	i_rLeft
			.	Initializer
		!=	i_rRight
			.	Initializer
		)
	{	(void("Initializer mismatch"), std::unreachable());
	}

	return
		true
	;
}

static_assert
(	InstructionBuffer
	.	InstructionCount
==	4
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	0
		]
	.	Type
==	Multiply
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	0
		]
	.	ReturnType
==	Type<float>
);

static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	0
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Pi_4
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	1
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Pi_4
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	2
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	One
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	3
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	One
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	4
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Half
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	5
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	One
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	6
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	One
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	7
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Third
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	8
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Pi_6
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	9
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Pi_4
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	10
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Pi_12
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	11
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Pi_6
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	FirstVariable
			[	12
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	-1
		,	.	Initializer
			=	Pi_6
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	0
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	1
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	2
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	3
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	4
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	5
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	6
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	7
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	8
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	9
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	10
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	11
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	0
			]
		.	SecondVariable
			[	12
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	1
		]
	.	Type
==	Multiply
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	1
		]
	.	ReturnType
==	Type<float>
);

static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	0
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	1
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	2
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	3
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	4
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	5
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	6
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	7
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	8
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	9
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	10
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	11
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	FirstVariable
			[	12
			]
	,	Variable
		{	.	ID
			=	1
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	0
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	1
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	256_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	2
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	256_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	3
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	4
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	256_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	5
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	6
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	256_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	7
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	256_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	8
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	9
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	10
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	11
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	256_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	1
			]
		.	SecondVariable
			[	12
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
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
	.	ReturnType
==	Type<float>
);

static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	0
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	1
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	2
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	3
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	4
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	5
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	6
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	7
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	8
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	9
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	10
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	11
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	FirstVariable
			[	12
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	0
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	1
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	2
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	3
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	4
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	5
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	6
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	288_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	7
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	288_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	8
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	9
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	288_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	10
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	288_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	11
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	288_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	2
			]
		.	SecondVariable
			[	12
			]
	,	Variable
		{	.	ID
			=	0
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	224_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);

static_assert
(	InstructionBuffer
	.	Instructions
		[	3
		]
	.	Type
==	Return
);
static_assert
(	InstructionBuffer
	.	Instructions
		[	3
		]
	.	ReturnType
==	Type<float>
);

static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	0
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	1
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	2
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	3
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	4
			]
	,	Variable
		{	.	ID
			=	2
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	5
			]
	,	Variable
		{	.	ID
			=	3
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	6
			]
	,	Variable
		{	.	ID
			=	3
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	7
			]
	,	Variable
		{	.	ID
			=	3
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	8
			]
	,	Variable
		{	.	ID
			=	3
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	9
			]
	,	Variable
		{	.	ID
			=	3
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	10
			]
	,	Variable
		{	.	ID
			=	3
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	11
			]
	,	Variable
		{	.	ID
			=	3
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	FirstVariable
			[	12
			]
	,	Variable
		{	.	ID
			=	3
		,	.	Type
			=	Type<float>
		,	.	Offset
			=	0_bit
		,	.	District
			=	0
		,	.	Initializer
			=	nullptr
		}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	0
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	1
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	2
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	3
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	4
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	5
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	6
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	7
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	8
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	9
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	10
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	11
			]
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	InstructionBuffer
		.	Instructions
			[	3
			]
		.	SecondVariable
			[	12
			]
	,	Variable
		{}
	)
);
