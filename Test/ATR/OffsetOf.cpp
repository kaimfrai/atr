import ATR.Instance;
import ATR.Member.Offset;

import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.ID;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.String.Hash;
import Meta.Token.Specifier;
import Meta.Token.Type;

import Std;

using ::Meta::Bit::Field;
using ::Meta::BitSize;
using ::Meta::ID;
using ::Meta::Memory::ByteWidth;
using ::Meta::Memory::SizeOf;
using ::Meta::Specifier::Mut;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"OffsetOfTest">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
		.	Member("Int", Type<int>)
		.	Member("IntConst", Type<int const>)
		.	Member("IntMut", Type<Mut<int>>)
		.	Member("ArrayBool", Type<bool[5]>)
		.	Member("ArrayBoolConst", Type<bool const[5]>)
		.	Member("ArrayBoolMut", Type<Mut<bool[5]>>)
		.	Member("ArrayField", Type<Field<3_bit>[5]>)
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[5]>)
		.	Member("ArrayFieldMut", Type<Mut<Field<3_bit>[5]>>)
		.	Member("Bool", Type<bool>)
		.	Member("BoolConst", Type<bool const>)
		.	Member("BoolMut", Type<Mut<bool>>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("FieldMut", Type<Mut<Field<3_bit>>>)
		;
	}
}

using OffsetOfTest = ::ATR::Instance<ID<"OffsetOfTest">>;

::Meta::ByteSize constexpr inline
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
	,	ImplicitHash
			t_vMemberName
	>
auto constexpr inline
	OffsetType
=	Type
	<	typename
		decltype(auto(t_tOwner{}))
		::	template
			Offset_Of
			<	t_vMemberName
			>
	>
;

template
	<	BitSize
			t_vOffset
	,	typename
			t_tEntity
	>
auto constexpr inline
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
	,	"ArrayField"
	>
==	MemberOffset_For
	<	111_bit
	,	Field<3_bit>[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayFieldConst"
	>
==	MemberOffset_For
	<	126_bit
	,	Field<3_bit> const[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest
	,	"ArrayFieldMut"
	>
==	MemberOffset_For
	<	141_bit
	,	Mut<Field<3_bit>[5]>
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
			t_vOffset
	,	typename
			t_tEntity
	>
auto constexpr inline
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
	<	::std::byte const(&)[]
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

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	101_bit
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
	,	101_bit
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
	,	101_bit
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
	,	101_bit
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
	,	106_bit
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
	,	106_bit
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
	,	106_bit
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
	,	106_bit
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
	,	111_bit
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
	,	111_bit
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
	,	111_bit
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
	,	111_bit
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
	,	126_bit
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
	,	126_bit
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
	,	126_bit
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
	,	126_bit
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
	,	141_bit
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
	,	141_bit
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
	,	141_bit
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
	,	141_bit
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
	,	157_bit
	,	bool const
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	157_bit
	,	bool const
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	157_bit
	,	bool const
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	157_bit
	,	bool const
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	158_bit
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
	,	158_bit
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
	,	158_bit
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
	,	158_bit
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
	,	159_bit
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
	,	159_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	159_bit
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
	,	159_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	162_bit
	,	Field<3_bit> const
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const(&)[]
	,	162_bit
	,	Field<3_bit> const
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest&
	,	162_bit
	,	Field<3_bit> const
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const&
	,	162_bit
	,	Field<3_bit> const
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	MemberType_For
	<	::std::byte(&)[]
	,	165_bit
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
	,	165_bit
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
	,	165_bit
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
	,	165_bit
	,	Mut<Field<3_bit>>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	5_bdx
		>
	>
);
