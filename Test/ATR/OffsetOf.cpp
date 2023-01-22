import ATR.DataMember;
import ATR.Instance;
import ATR.Layout.MemberOffset;
import ATR.Layout.Bit.Iterator;
import ATR.Layout.Bit.MemberOffset;
import ATR.Layout.Bit.Reference;
import ATR.Layout.Bit.Array;

import Meta.Arithmetic.Integer;
import Meta.Bit.Field;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Bit.Index;
import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.Data.Aggregate;
import Meta.ID.Alias;
import Meta.ID.StringLiteral;
import Meta.Lex.Transform;

import Std;

using ::Meta::Data::Aggregate;
using ::Meta::Specifier::Mut;
using ::Meta::Bit::Field;
using ::Meta::UInt;
using ::Meta::Memory::SizeOf;
using ::Meta::Memory::ByteWidth;

using namespace ::Meta::Literals;

namespace ATR
{
	template<>
	DefineMembers
	<	Member
		<	"Int"
		,	int
		>
	+	Member
		<	"IntConst"
		,	int const
		>
	+	Member
		<	"IntMut"
		,	Mut<int>
		>
	+	Member
		<	"Bool"
		,	bool
		>
	+	Member
		<	"BoolConst"
		,	bool const
		>
	+	Member
		<	"BoolMut"
		,	Mut<bool>
		>
	+	Member
		<	"Field"
		,	Field<3_bit>
		>
	+	Member
		<	"FieldConst"
		,	Field<3_bit> const
		>
	+	Member
		<	"FieldMut"
		,	Mut<Field<3_bit>>
		>
	+	Member
		<	"ArrayBool"
		,	bool[5]
		>
	+	Member
		<	"ArrayBoolConst"
		,	bool const[5]
		>
	+	Member
		<	"ArrayBoolMut"
		,	Mut<bool[5]>
		>

	+	Member
		<	"ArrayField"
		,	Field<3_bit>[5]
		>
	+	Member
		<	"ArrayFieldConst"
		,	Field<3_bit> const[5]
		>
	+	Member
		<	"ArrayFieldMut"
		,	Mut<Field<3_bit>[5]>
		>
	>	extern
		LayoutConfig
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
(	::Meta::Memory::SizeOf<decltype(OffsetOfTest::DynamicLayout::SouthType::Buffer)>
==	ExpectedBufferSize
);

template
	<	typename
			t_tOwner
	,	Meta::StringLiteral
			t_vMemberName
	>
using
	OffsetType
=	decltype
	(	::std::remove_cvref_t<t_tOwner>
	::	OffsetOf
		(	Meta::ID_V<t_vMemberName>
		,	Meta::ComposeTransform(Meta::Type<t_tOwner>)
		)
	)
;

template
	<	typename
			t_tOwner
	,	typename
			t_tOffset
	>
using
	MemberType
=	decltype
	(	(	::std::declval<t_tOwner>()
		->*	::std::declval<t_tOffset>()
		)
	)
;

template
	<	typename
			t_tOwner
	,	typename
			t_tOffset
	>
using
	GetMemberType
=	decltype
	(	::std::declval<MemberType<t_tOwner, t_tOffset>>()
	.	get()
	)
;

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"Int"
		>
	,	ATR::MemberOffset<Aggregate<int>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"Int"
		>
	,	ATR::MemberOffset<Aggregate<int> const&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"Int"
		>
	,	ATR::MemberOffset<Aggregate<int>>
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<int>&>
		>
	,	int&
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<int> const&>
		>
	,	int const&
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<int>>
		>
	,	int
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"IntConst"
		>
	,	ATR::MemberOffset<Aggregate<int const>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"IntConst"
		>
	,	ATR::MemberOffset<Aggregate<int const> const&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"IntConst"
		>
	,	ATR::MemberOffset<Aggregate<int>>
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<int const>&>
		>
	,	int const&
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<int const> const&>
		>
	,	int const&
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<int>>
		>
	,	int
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"IntMut"
		>
	,	ATR::MemberOffset<Aggregate<Mut<int>>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"IntMut"
		>
	,	ATR::MemberOffset<Aggregate<Mut<int>> const&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"IntMut"
		>
	,	ATR::MemberOffset<Aggregate<int>>
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<Mut<int>>&>
		>
	,	int&
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<Mut<int>> const&>
		>
	,	int&
	>
);

static_assert
(	::std::is_same_v
	<	GetMemberType
		<	::std::byte*
		,	ATR::MemberOffset<Aggregate<int>>
		>
	,	int
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"Bool"
		>
	,	ATR::Bit::MemberOffset<4_bdx, Field<1_bit>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"Bool"
		>
	,	ATR::Bit::MemberOffset<4_bdx, Field<1_bit>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"Bool"
		>
	,	ATR::Bit::MemberOffset<4_bdx, Field<1_bit>>
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"BoolConst"
		>
	,	ATR::Bit::MemberOffset<5_bdx, Field<1_bit>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"BoolConst"
		>
	,	ATR::Bit::MemberOffset<5_bdx, Field<1_bit>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"BoolConst"
		>
	,	ATR::Bit::MemberOffset<5_bdx, Field<1_bit>>
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"BoolMut"
		>
	,	ATR::Bit::MemberOffset<6_bdx, Field<1_bit>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"BoolMut"
		>
	,	ATR::Bit::MemberOffset<6_bdx, Field<1_bit>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"BoolMut"
		>
	,	ATR::Bit::MemberOffset<6_bdx, Field<1_bit>>
	>
);

static_assert
(	::std::is_same_v
	<	MemberType
		<	::std::byte*
		,	ATR::Bit::MemberOffset<7_bdx, Field<1_bit>&>
		>
	,	ATR::Bit::Reference<1_bit, 7_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	MemberType
		<	::std::byte*
		,	ATR::Bit::MemberOffset<7_bdx, Field<1_bit>>
		>
	,	// TODO make this bool
		::Meta::Bit::Field<1_bit>
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"Field"
		>
	,	ATR::Bit::MemberOffset
		<	7_bdx
		,	Field<3_bit>&
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"Field"
		>
	,	ATR::Bit::MemberOffset
		<	7_bdx
		,	Field<3_bit>
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"Field"
		>
	,	ATR::Bit::MemberOffset
		<	7_bdx
		,	Field<3_bit>
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"FieldConst"
		>
	,	ATR::Bit::MemberOffset
		<	2_bdx
		,	Field<3_bit>
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"FieldConst"
		>
	,	ATR::Bit::MemberOffset
		<	2_bdx
		,	Field<3_bit>
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"FieldConst"
		>
	,	ATR::Bit::MemberOffset
		<	2_bdx
		,	Field<3_bit>
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"FieldMut"
		>
	,	ATR::Bit::MemberOffset
		<	5_bdx
		,	Field<3_bit>&
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"FieldMut"
		>
	,	ATR::Bit::MemberOffset
		<	5_bdx
		,	Field<3_bit>&
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"FieldMut"
		>
	,	ATR::Bit::MemberOffset
		<	5_bdx
		,	Field<3_bit>
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"ArrayBool"
		>
	,	ATR::Bit::MemberOffset
		<	0_bdx
		,	Field<1_bit>(&)[5]
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"ArrayBool"
		>
	,	ATR::Bit::MemberOffset
		<	0_bdx
		,	Field<1_bit>[5]
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"ArrayBool"
		>
	,	ATR::Bit::MemberOffset
		<	0_bdx
		,	Field<1_bit>[5]
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"ArrayBoolConst"
		>
	,	ATR::Bit::MemberOffset
		<	5_bdx
		,	Field<1_bit>[5]
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"ArrayBoolConst"
		>
	,	ATR::Bit::MemberOffset
		<	5_bdx
		,	Field<1_bit>[5]
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"ArrayBoolConst"
		>
	,	ATR::Bit::MemberOffset
		<	5_bdx
		,	Field<1_bit>[5]
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"ArrayBoolMut"
		>
	,	ATR::Bit::MemberOffset
		<	2_bdx
		,	Field<1_bit>(&)[5]
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"ArrayBoolMut"
		>
	,	ATR::Bit::MemberOffset
		<	2_bdx
		,	Field<1_bit>(&)[5]
		>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"ArrayBoolMut"
		>
	,	ATR::Bit::MemberOffset
		<	2_bdx
		,	Field<1_bit>[5]
		>
	>
);


static_assert
(	::std::is_same_v
	<	MemberType
		<	::std::byte*
		,	ATR::Bit::MemberOffset
			<	5_bdx
			, 	Field<1_bit>(&)[5]
			>
		>
	,	ATR::Bit::ArrayReference
		<	1_bit
		,	5
		,	5_bdx
		>
	>
);

static_assert
(	::std::is_same_v
	<	MemberType
		<	::std::byte*
		,	ATR::Bit::MemberOffset
			<	5_bdx
			,	Field<1_bit>[5]
			>
		>
	,	ATR::Bit::ArrayValue
		<	1_bit
		,	5
		>
	>
);
