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
import ATR.Layout.Create;
import ATR.Member.Composition;
import ATR.Virtual.InstructionBuffer;

import Meta.ID;
import Meta.String.Hash;
import Meta.Token.Type;

import Std;

using ::ATR::Instance;
using ::ATR::Member::Union;
using ::ATR::Virtual::InstructionBuffer_Of;
using ::ATR::Virtual::Variable;
using ::Meta::ID;
using ::Meta::RestoreTypeEntity;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;

using enum ::ATR::Virtual::EInstruction;

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
=	Type
	<	decltype
		(	auto
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
		)
	>
;

auto constexpr inline
&	InstructionBuffer
=	InstructionBuffer_Of
	<	ID<"ComputeVolume">
	,	Body3D const
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
			.	Offset
		!=	i_rRight
			.	Offset
		)
	{	(void("Offset mismatch"), std::unreachable());
	}

	return
		true
	;
}

template
	<	auto
			t_vInstructionIndex
	,	ImplicitHash
			t_vTypeName
	>
auto constexpr inline
&	FirstVariable
=	InstructionBuffer
	.	Instructions
		[	t_vInstructionIndex
		]
	.	FirstVariable
		[	Index<t_vTypeName>
		]
;

template
	<	auto
			t_vInstructionIndex
	,	ImplicitHash
			t_vTypeName
	>
auto constexpr inline
&	SecondVariable
=	InstructionBuffer
	.	Instructions
		[	t_vInstructionIndex
		]
	.	SecondVariable
		[	Index<t_vTypeName>
		]
;

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
(	Equals
	(	FirstVariable
		<	0
		,	"Circle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Circle"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Ellipse"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Ellipse"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Rectangle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Rectangle"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Square"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Square"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Triangle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Triangle"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Cube"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cube"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Cuboid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cuboid"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Pyramid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Pyramid"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Sphere"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Sphere"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Cylinder"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cylinder"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Cone"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cone"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Ellipsoid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Ellipsoid"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	0
		,	"Head"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Head"
			,	"ComputeSizeMultiplier"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Circle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Circle"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Ellipse"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Ellipse"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Rectangle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Rectangle"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Square"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Square"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Triangle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Triangle"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Cube"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cube"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Cuboid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cuboid"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Pyramid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Pyramid"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Sphere"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Sphere"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Cylinder"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cylinder"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Cone"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cone"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Ellipsoid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Ellipsoid"
			,	"Height"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	0
		,	"Head"
		>
	,	Variable
		{	0
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
		[	1
		]
	.	Type
==	Multiply
);

static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Circle"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Ellipse"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Rectangle"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Square"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Square"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Cube"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Cuboid"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Pyramid"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Sphere"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Cylinder"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Cone"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Ellipsoid"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	1
		,	"Head"
		>
	,	Variable
		{	1
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Circle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Circle"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Ellipse"
		>
	,	Variable
		{		0
		,	Offset_Of
			<	"Ellipse"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Rectangle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Rectangle"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Square"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Square"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Triangle"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Triangle"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Cube"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cube"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Cuboid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cuboid"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Pyramid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Pyramid"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Sphere"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Sphere"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Cylinder"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cylinder"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Cone"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cone"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Ellipsoid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Ellipsoid"
			,	"Width"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	1
		,	"Head"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Head"
			,	"Width"
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
(	Equals
	(	FirstVariable
		<	2
		,	"Circle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Ellipse"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Rectangle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Square"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Triangle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Cube"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Cuboid"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Pyramid"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Sphere"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Cylinder"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Cone"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Ellipsoid"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	2
		,	"Head"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Circle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Ellipse"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Rectangle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Square"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Triangle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Cube"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cube"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Cuboid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cuboid"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Pyramid"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Pyramid"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Sphere"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Sphere"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Cylinder"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cylinder"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Cone"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Cone"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Ellipsoid"
		>
	,	Variable
		{		0
		,	Offset_Of
			<	"Ellipsoid"
			,	"Depth"
			>
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	2
		,	"Head"
		>
	,	Variable
		{	0
		,	Offset_Of
			<	"Head"
			,	"Depth"
			>
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
(	Equals
	(	FirstVariable
		<	3
		,	"Circle"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Ellipse"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Rectangle"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Square"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Triangle"
		>
	,	Variable
		{	2
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Cube"
		>
	,	Variable
		{	3
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Cuboid"
		>
	,	Variable
		{	3
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Pyramid"
		>
	,	Variable
		{	3
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Sphere"
		>
	,	Variable
		{	3
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Cylinder"
		>
	,	Variable
		{	3
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Cone"
		>
	,	Variable
		{	3
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Ellipsoid"
		>
	,	Variable
		{	3
		}
	)
);
static_assert
(	Equals
	(	FirstVariable
		<	3
		,	"Head"
		>
	,	Variable
		{	3
		}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Circle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Ellipse"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Rectangle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Square"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Triangle"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Cube"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Cuboid"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Pyramid"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Sphere"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Cylinder"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Cone"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Ellipsoid"
		>
	,	Variable
		{}
	)
);
static_assert
(	Equals
	(	SecondVariable
		<	3
		,	"Head"
		>
	,	Variable
		{}
	)
);
