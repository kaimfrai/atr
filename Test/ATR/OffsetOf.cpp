import ATR.Instance;
import ATR.Member.Offset;
import ATR.Member.OffsetOf;

import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.String.Alias;
import Meta.String.StringLiteral;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Token.Specifier;
import Meta.Token.Type;

import Std;

using ::Meta::Bit::Field;
using ::Meta::BitSize;
using ::Meta::Memory::ByteWidth;
using ::Meta::Memory::SizeOf;
using ::Meta::Specifier::Mut;
using ::Meta::Type;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"OffsetOfTest">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Int", ::Meta::Type<int>)
			("IntConst", ::Meta::Type<int const>)
			("IntMut", ::Meta::Type<Mut<int>>)
			("Bool", ::Meta::Type<bool>)
			("BoolConst", ::Meta::Type<bool const>)
			("BoolMut", ::Meta::Type<Mut<bool>>)
			("Field", ::Meta::Type<Field<3_bit>>)
			("FieldConst", ::Meta::Type<Field<3_bit> const>)
			("FieldMut", ::Meta::Type<Mut<Field<3_bit>>>)
			("ArrayBool", ::Meta::Type<bool[5]>)
			("ArrayBoolConst", ::Meta::Type<bool const[5]>)
			("ArrayBoolMut", ::Meta::Type<Mut<bool[5]>>)
			("ArrayField", ::Meta::Type<Field<3_bit>[5]>)
			("ArrayFieldConst", ::Meta::Type<Field<3_bit> const[5]>)
			("ArrayFieldMut", ::Meta::Type<Field<3_bit>[5]>)
		;
	}
}

using OffsetOfTest = ::ATR::Type<"OffsetOfTest">;

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
(	::Meta::Memory::SizeOf<decltype(OffsetOfTest{}.SouthArea.Buffer)>
==	ExpectedBufferSize
);

template
	<	typename
			t_tOwner
	,	::Meta::StringLiteral
			t_vMemberName
	>
auto constexpr
	OffsetType
=	Type
	<	decltype
		(	::ATR::Member::OffsetOf
			(	::Meta::ID_V<t_vMemberName>
			,	::std::declval<t_tOwner>()
				.	TypeName
			)
		)
	>
;

template
	<	BitSize
			t_nOffset
	,	typename
			t_tEntity
	>
auto constexpr
	MemberOffset_For
=	Type
	<	::ATR::Member::Offset
		<	t_nOffset
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
	<	0_bit
	,	int
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"IntConst"
	>
==	MemberOffset_For
	<	32_bit
	,	int const
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"IntMut"
	>
==	MemberOffset_For
	<	64_bit
	,	Mut<int>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayBool"
	>
==	MemberOffset_For
	<	96_bit
	,	bool[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayBoolConst"
	>
==	MemberOffset_For
	<	101_bit
	,	bool const[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayBoolMut"
	>
==	MemberOffset_For
	<	106_bit
	,	Mut<bool[5]>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"Bool"
	>
==	MemberOffset_For
	<	156_bit
	,	bool
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"BoolConst"
	>
==	MemberOffset_For
	<	157_bit
	,	bool const
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"BoolMut"
	>
==	MemberOffset_For
	<	158_bit
	,	Mut<bool>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"Field"
	>
==	MemberOffset_For
	<	159_bit
	,	Field<3_bit>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"FieldConst"
	>
==	MemberOffset_For
	<	162_bit
	,	Field<3_bit> const
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"FieldMut"
	>
==	MemberOffset_For
	<	165_bit
	,	Mut<Field<3_bit>>
	>
);

template
	<	typename
			t_tOwner
	,	BitSize
			t_nOffset
	,	typename
			t_tEntity
	>
auto constexpr
	MemberType_For
=	Type
	<	decltype
		(	::std::declval
			<	::ATR::Member::Offset
				<	t_nOffset
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
	,	0_bit
	,	int
	>
==	Type<int&>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	0_bit
	,	int
	>
==	Type<int const&>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	0_bit
	,	int
	>
==	Type<int&>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	0_bit
	,	int
	>
==	Type<int const&>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	32_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	32_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	32_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	32_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	64_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	64_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	64_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	64_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	156_bit
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
	,	156_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	156_bit
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
	,	156_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	5_bit
	,	bool[5]
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	1_bit
		,	5
		,	5_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	5_bdx
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
	,	96_bit
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
	,	96_bit
	,	bool[5]
	>
==	Type
	<	::Meta::Bit::ArrayValue
		<	1_bit
		,	5
		>
	>
);
