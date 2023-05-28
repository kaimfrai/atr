import ATR.Instance;
import ATR.Literals;
import ATR.Member.Offset;
import ATR.Member.OffsetOf;

import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.ID;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.String.Literal;
import Meta.Token.Specifier;
import Meta.Token.Type;

import Std;

using ::Meta::Bit::Field;
using ::Meta::BitSize;
using ::Meta::Memory::ByteWidth;
using ::Meta::Memory::SizeOf;
using ::Meta::Specifier::Mut;
using ::Meta::ID;
using ::Meta::String::Literal;
using ::Meta::Type;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"OffsetOfTest">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Int", Type<int>)
			("IntConst", Type<int const>)
			("IntMut", Type<Mut<int>>)
			("Bool", Type<bool>)
			("BoolConst", Type<bool const>)
			("BoolMut", Type<Mut<bool>>)
			("Field", Type<Field<3_bit>>)
			("FieldConst", Type<Field<3_bit> const>)
			("FieldMut", Type<Mut<Field<3_bit>>>)
			("ArrayBool", Type<bool[5]>)
			("ArrayBoolConst", Type<bool const[5]>)
			("ArrayBoolMut", Type<Mut<bool[5]>>)
			("ArrayField", Type<Field<3_bit>[5]>)
			("ArrayFieldConst", Type<Field<3_bit> const[5]>)
			("ArrayFieldMut", Type<Mut<Field<3_bit>[5]>>)
		;
	}
}

using OffsetOfTest = ::ATR::Instance<ID<"OffsetOfTest">>;

::Meta::ByteSize constexpr
	ExpectedBufferSize
=	(	1_bit
	+	3_bit
	+	5_bit
	+	3_bit * 5
	)
*	3
;

static_assert
(	SizeOf<OffsetOfTest>
==	(	ByteWidth<int>{3}
	+	static_cast<ByteWidth<int>>
		(	ExpectedBufferSize
		)
	)
);

static_assert
(	::Meta::Memory::SizeOf<decltype(OffsetOfTest{}.NorthArea.Buffer)>
==	ExpectedBufferSize
);

template
	<	typename
			t_tOwner
	,	Literal
			t_vMemberName
	>
auto constexpr
	OffsetType
=	Type
	<	decltype
		(	::ATR::Member::OffsetOf
			(	ID<t_vMemberName>
				{}
			,	::std::declval<t_tOwner>()
				.	TypeName
			)
		)
	>
;

template
	<	BitSize
			t_vOffset
	,	typename
			t_tEntity
	>
auto constexpr
	MemberOffset_For
=	Type
	<	::ATR::Member::Offset
		<	t_vOffset
		,	t_tEntity
		>
	>
;

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"Int"
	>
==	MemberOffset_For
	<	96_bit
	,	int
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"IntConst"
	>
==	MemberOffset_For
	<	128_bit
	,	int const
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"IntMut"
	>
==	MemberOffset_For
	<	160_bit
	,	Mut<int>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayBool"
	>
==	MemberOffset_For
	<	0_bit
	,	bool[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayBoolConst"
	>
==	MemberOffset_For
	<	5_bit
	,	bool const[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayBoolMut"
	>
==	MemberOffset_For
	<	10_bit
	,	Mut<bool[5]>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayField"
	>
==	MemberOffset_For
	<	15_bit
	,	Field<3_bit>[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayFieldConst"
	>
==	MemberOffset_For
	<	30_bit
	,	Field<3_bit> const[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayFieldMut"
	>
==	MemberOffset_For
	<	45_bit
	,	Mut<Field<3_bit>[5]>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"Bool"
	>
==	MemberOffset_For
	<	60_bit
	,	bool
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"BoolConst"
	>
==	MemberOffset_For
	<	61_bit
	,	bool const
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"BoolMut"
	>
==	MemberOffset_For
	<	62_bit
	,	Mut<bool>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"Field"
	>
==	MemberOffset_For
	<	63_bit
	,	Field<3_bit>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"FieldConst"
	>
==	MemberOffset_For
	<	66_bit
	,	Field<3_bit> const
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"FieldMut"
	>
==	MemberOffset_For
	<	69_bit
	,	Mut<Field<3_bit>>
	>
);

template
	<	typename
			t_tOwner
	,	BitSize
			t_vOffset
	,	typename
			t_tEntity
	>
auto constexpr
	MemberType_For
=	Type
	<	decltype
		(	::std::declval
			<	::ATR::Member::Offset
				<	t_vOffset
				,	t_tEntity
				>
			>()
			(	::std::declval<t_tOwner>()
			)
		)
	>
;

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	96_bit
	,	int
	>
==	Type<int&>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	96_bit
	,	int
	>
==	Type<int const&>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	96_bit
	,	int
	>
==	Type<int&>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	96_bit
	,	int
	>
==	Type<int const&>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	128_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	128_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	128_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	128_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	160_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	160_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	160_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	160_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	0_bit
	,	bool[5]
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	1_bit
		,	5
		,	0_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	0_bit
	,	bool[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	1_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	0_bit
	,	bool[5]
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	1_bit
		,	5
		,	0_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	0_bit
	,	bool[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	1_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	5_bit
	,	bool const[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	1_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	5_bit
	,	bool const[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	1_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	5_bit
	,	bool const[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	1_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	5_bit
	,	bool const[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	1_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	10_bit
	,	Mut<bool[5]>
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	1_bit
		,	5
		,	2_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	10_bit
	,	Mut<bool[5]>
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	1_bit
		,	5
		,	2_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	10_bit
	,	Mut<bool[5]>
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	1_bit
		,	5
		,	2_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	10_bit
	,	Mut<bool[5]>
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	1_bit
		,	5
		,	2_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	15_bit
	,	Field<3_bit>[5]
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	3_bit
		,	5
		,	7_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	15_bit
	,	Field<3_bit>[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	3_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	15_bit
	,	Field<3_bit>[5]
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	3_bit
		,	5
		,	7_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	15_bit
	,	Field<3_bit>[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	3_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	30_bit
	,	Field<3_bit> const[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	3_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	30_bit
	,	Field<3_bit> const[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	3_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	30_bit
	,	Field<3_bit> const[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	3_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	30_bit
	,	Field<3_bit> const[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	3_bit
		,	5
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	45_bit
	,	Mut<Field<3_bit>[5]>
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	3_bit
		,	5
		,	5_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	45_bit
	,	Mut<Field<3_bit>[5]>
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	3_bit
		,	5
		,	5_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	45_bit
	,	Mut<Field<3_bit>[5]>
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	3_bit
		,	5
		,	5_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	45_bit
	,	Mut<Field<3_bit>[5]>
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	3_bit
		,	5
		,	5_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	60_bit
	,	bool
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	4_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	60_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	60_bit
	,	bool
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	4_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	60_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	61_bit
	,	bool const
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	61_bit
	,	bool const
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	61_bit
	,	bool const
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	61_bit
	,	bool const
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	62_bit
	,	Mut<bool>
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	6_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	62_bit
	,	Mut<bool>
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	6_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	62_bit
	,	Mut<bool>
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	6_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	62_bit
	,	Mut<bool>
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	6_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	63_bit
	,	Field<3_bit>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	7_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	63_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	63_bit
	,	Field<3_bit>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	7_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	63_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	66_bit
	,	Field<3_bit> const
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	66_bit
	,	Field<3_bit> const
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	66_bit
	,	Field<3_bit> const
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	66_bit
	,	Field<3_bit> const
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	69_bit
	,	Mut<Field<3_bit>>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	5_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	69_bit
	,	Mut<Field<3_bit>>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	5_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	69_bit
	,	Mut<Field<3_bit>>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	5_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	69_bit
	,	Mut<Field<3_bit>>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	5_bdx
		>
	>
);
