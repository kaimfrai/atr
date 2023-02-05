import ATR.Member.List;
import ATR.Member.Definition;
import ATR.Member.Union;
import ATR.Member.OffsetOf;
import ATR.Instance;
import ATR.Layout.MemberOffset;
import ATR.Layout.Bit.MemberOffset;

import Meta.Bit.Reference;
import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.Data.Aggregate;
import Meta.ID.Alias;
import Meta.ID.StringLiteral;
import Meta.Lex.TransformComposer;
import Meta.Lex.Tokenizer;

import Std;

using ::Meta::Data::Aggregate;
using ::Meta::Specifier::Mut;
using ::Meta::Bit::Field;
using ::Meta::Memory::SizeOf;
using ::Meta::Memory::ByteWidth;
using ::Meta::Type;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	template<>
	Definition
	<	New
		<	"Int"
		,	int
		>
	+	New
		<	"IntConst"
		,	int const
		>
	+	New
		<	"IntMut"
		,	Mut<int>
		>
	+	New
		<	"Bool"
		,	bool
		>
	+	New
		<	"BoolConst"
		,	bool const
		>
	+	New
		<	"BoolMut"
		,	Mut<bool>
		>
	+	New
		<	"Field"
		,	Field<3_bit>
		>
	+	New
		<	"FieldConst"
		,	Field<3_bit> const
		>
	+	New
		<	"FieldMut"
		,	Mut<Field<3_bit>>
		>
	+	New
		<	"ArrayBool"
		,	bool[5]
		>
	+	New
		<	"ArrayBoolConst"
		,	bool const[5]
		>
	+	New
		<	"ArrayBoolMut"
		,	Mut<bool[5]>
		>

	+	New
		<	"ArrayField"
		,	Field<3_bit>[5]
		>
	+	New
		<	"ArrayFieldConst"
		,	Field<3_bit> const[5]
		>
	+	New
		<	"ArrayFieldMut"
		,	Mut<Field<3_bit>[5]>
		>
	>	extern const
		Definition_For
		<	"OffsetOfTest"
		>
	;
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
(	::Meta::Memory::SizeOf<decltype(OffsetOfTest::SouthType::Buffer)>
==	ExpectedBufferSize
);

template
	<	typename
			t_tOwner
	,	Meta::StringLiteral
			t_vMemberName
	>
auto constexpr inline
	OffsetType
=	Type
	<	decltype
		(	ATR::Member::OffsetOf
			(	Meta::ID_V<t_vMemberName>
			,	Meta::Type<t_tOwner>
			)
		)
	>
;

template
	<	typename
			t_tEntity
	>
auto constexpr inline
	MemberOffset_For
=	Type
	<	::ATR::MemberOffset
		<	::Meta::TokenizeEntity
			<	t_tEntity
			>
		>
	>
;

template
	<	typename
			t_tOwner
	,	typename
			t_tEntity
	>
auto constexpr inline
	GetMemberType_For
=	Type
	<	decltype
		(	(	::std::declval<t_tOwner>()
			->*	::std::declval
				<	::ATR::MemberOffset
					<	::Meta::TokenizeEntity
						<	t_tEntity
						>
					>
				>()
			)
		.	get()
		)
	>
;

static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"Int"
	>
==	MemberOffset_For
	<	int&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"Int"
	>
==	MemberOffset_For
	<	int const&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"Int"
	>
==	MemberOffset_For
	<	int
	>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<int>&
	>
==	Type<int&>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<int> const&
	>
==	Type
	<	int const&
	>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<int>
	>
==	Type
	<	int
	>
);


static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"IntConst"
	>
==	MemberOffset_For
	<	int const&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"IntConst"
	>
==	MemberOffset_For
	<	int const&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"IntConst"
	>
==	MemberOffset_For
	<	int
	>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<int const>&
	>
==	Type
	<	int const&
	>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<int const> const&
	>
==	Type
	<	int const&
	>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<int>
	>
==	Type
	<	int
	>
);


static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"IntMut"
	>
==	MemberOffset_For
	<	int&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"IntMut"
	>
==	MemberOffset_For
	<	int&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"IntMut"
	>
==	MemberOffset_For
	<	int
	>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<Mut<int>>&
	>
==	Type
	<	int&
	>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<Mut<int>> const&
	>
==	Type
	<	int&
	>
);

static_assert
(	GetMemberType_For
	<	::std::byte*
	,	Aggregate<int>
	>
==	Type
	<	int
	>
);


template
	<	::Meta::Bit::Index<1_byte>
			t_nBitOffset
	,	typename
			t_tEntity
	>
auto constexpr inline
	BitMemberOffset_For
=	Type
	<	::ATR::Bit::MemberOffset
		<	t_nBitOffset
		,	::Meta::TokenizeEntity
			<	t_tEntity
			>
		>
	>
;

template
	<	typename
			t_tOwner
	,	::Meta::Bit::Index<1_byte>
			t_nBitOffset
	,	typename
			t_tEntity
	>
auto constexpr inline
	BitMemberType_For
=	Type
	<	decltype
		(	(	::std::declval<t_tOwner>()
			->*	::std::declval
				<	::ATR::Bit::MemberOffset
					<	t_nBitOffset
					,	::Meta::TokenizeEntity
						<	t_tEntity
						>
					>
				>()
			)
		)
	>
;

static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"Bool"
	>
==	BitMemberOffset_For
	<	4_bdx
	,	bool&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"Bool"
	>
==	BitMemberOffset_For
	<	4_bdx
	,	bool
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"Bool"
	>
==	BitMemberOffset_For
	<	4_bdx
	,	bool
	>
);


static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"BoolConst"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	bool
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"BoolConst"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	bool
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"BoolConst"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	bool
	>
);


static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"BoolMut"
	>
==	BitMemberOffset_For
	<	6_bdx
	,	bool&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"BoolMut"
	>
==	BitMemberOffset_For
	<	6_bdx
	,	bool&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"BoolMut"
	>
==	BitMemberOffset_For
	<	6_bdx
	,	bool
	>
);

static_assert
(	BitMemberType_For
	<	::std::byte*
	,	7_bdx
	,	bool&
	>
==	Type
	<	::Meta::Bit::Reference
		<	1_bit
		,	7_bdx
		>
	>
);

static_assert
(	BitMemberType_For
	<	::std::byte*
	,	7_bdx
	,	bool
	>
==	Type
	<	bool
	>
);


static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"Field"
	>
==	BitMemberOffset_For
	<	7_bdx
	,	Field<3_bit>&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"Field"
	>
==	BitMemberOffset_For
	<	7_bdx
	,	Field<3_bit>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"Field"
	>
==	BitMemberOffset_For
	<	7_bdx
	,	Field<3_bit>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"FieldConst"
	>
==	BitMemberOffset_For
	<	2_bdx
	,	Field<3_bit>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"FieldConst"
	>
==	BitMemberOffset_For
	<	2_bdx
	,	Field<3_bit>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"FieldConst"
	>
==	BitMemberOffset_For
	<	2_bdx
	,	Field<3_bit>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"FieldMut"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	Field<3_bit>&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"FieldMut"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	Field<3_bit>&
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"FieldMut"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	Field<3_bit>
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"ArrayBool"
	>
==	BitMemberOffset_For
	<	0_bdx
	,	bool(&)[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"ArrayBool"
	>
==	BitMemberOffset_For
	<	0_bdx
	,	bool[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"ArrayBool"
	>
==	BitMemberOffset_For
	<	0_bdx
	,	bool[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"ArrayBoolConst"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	bool[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"ArrayBoolConst"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	bool[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"ArrayBoolConst"
	>
==	BitMemberOffset_For
	<	5_bdx
	,	bool[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&
	,	"ArrayBoolMut"
	>
==	BitMemberOffset_For
	<	2_bdx
	,	bool(&)[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest const&
	,	"ArrayBoolMut"
	>
==	BitMemberOffset_For
	<	2_bdx
	,	bool(&)[5]
	>
);

static_assert
(	OffsetType
	<	OffsetOfTest&&
	,	"ArrayBoolMut"
	>
==	BitMemberOffset_For
	<	2_bdx
	,	bool[5]
	>
);


static_assert
(	BitMemberType_For
	<	::std::byte*
	,	5_bdx
	,	bool(&)[5]
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
(	BitMemberType_For
	<	::std::byte*
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
