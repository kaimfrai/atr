import ATR;

import Meta.Arithmetic.Integer;
import Meta.Bit.Count;
import Meta.Byte.Count;
import Std;

using ::ATR::Bit::Reference;
using ::Meta::Data::Aggregate;
using ::Meta::Specifier::Mut;
using ::Meta::Specifier::BitField;
using ::Meta::UInt;
using ::Meta::Byte::SizeOf;
using ::Meta::Byte::Width;

using ::ATR::Bit::EOffset;
using ::ATR::Bit::ESize;

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
		,	BitField<3_bits>
		>
	+	Member
		<	"FieldConst"
		,	BitField<3_bits> const
		>
	+	Member
		<	"FieldMut"
		,	Mut<BitField<3_bits>>
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
		,	BitField<3_bits>[5]
		>
	+	Member
		<	"ArrayFieldConst"
		,	BitField<3_bits> const[5]
		>
	+	Member
		<	"ArrayFieldMut"
		,	Mut<BitField<3_bits>[5]>
		>
	>	extern
		LayoutConfig
		<	"OffsetOfTest"
		>
	;
}

using OffsetOfTest = ::ATR::Type<"OffsetOfTest">;

auto constexpr
	ExpectedBufferSize
=	ATR::Bit::BitFieldBufferSize(ESize{1 + 3 + 5 + 3 * 5}, EOffset{0}, 3)
;

static_assert
(	SizeOf<OffsetOfTest>
==	(	Width<int>{3}
	+	Width<int>(ExpectedBufferSize)
	)
);

static_assert
(	SizeOf<decltype(OffsetOfTest::DynamicLayout::SouthType::Buffer)>
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
	,	ATR::Bit::MemberOffset<EOffset{4}, BitField<1_bits>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"Bool"
		>
	,	ATR::Bit::MemberOffset<EOffset{4}, BitField<1_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"Bool"
		>
	,	ATR::Bit::MemberOffset<EOffset{4}, BitField<1_bits>>
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"BoolConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<1_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"BoolConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<1_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"BoolConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<1_bits>>
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"BoolMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{6}, BitField<1_bits>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"BoolMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{6}, BitField<1_bits>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"BoolMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{6}, BitField<1_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	MemberType
		<	::std::byte*
		,	ATR::Bit::MemberOffset<EOffset{7}, BitField<1_bits>&>
		>
	,	ATR::Bit::Reference<ESize{1}, EOffset{7}>
	>
);

static_assert
(	::std::is_same_v
	<	MemberType
		<	::std::byte*
		,	ATR::Bit::MemberOffset<EOffset{7}, BitField<1_bits>>
		>
	,	bool
	>
);


static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"Field"
		>
	,	ATR::Bit::MemberOffset<EOffset{7}, BitField<3_bits>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"Field"
		>
	,	ATR::Bit::MemberOffset<EOffset{7}, BitField<3_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"Field"
		>
	,	ATR::Bit::MemberOffset<EOffset{7}, BitField<3_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"FieldConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{2}, BitField<3_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"FieldConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{2}, BitField<3_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"FieldConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{2}, BitField<3_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"FieldMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<3_bits>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"FieldMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<3_bits>&>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"FieldMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<3_bits>>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"ArrayBool"
		>
	,	ATR::Bit::MemberOffset<EOffset{0}, BitField<1_bits>(&)[5]>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"ArrayBool"
		>
	,	ATR::Bit::MemberOffset<EOffset{0}, BitField<1_bits>[5]>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"ArrayBool"
		>
	,	ATR::Bit::MemberOffset<EOffset{0}, BitField<1_bits>[5]>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"ArrayBoolConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<1_bits>[5]>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"ArrayBoolConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<1_bits>[5]>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"ArrayBoolConst"
		>
	,	ATR::Bit::MemberOffset<EOffset{5}, BitField<1_bits>[5]>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&
		,	"ArrayBoolMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{2}, BitField<1_bits>(&)[5]>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest const&
		,	"ArrayBoolMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{2}, BitField<1_bits>(&)[5]>
	>
);

static_assert
(	::std::is_same_v
	<	OffsetType
		<	OffsetOfTest&&
		,	"ArrayBoolMut"
		>
	,	ATR::Bit::MemberOffset<EOffset{2}, BitField<1_bits>[5]>
	>
);


static_assert
(	::std::is_same_v
	<	MemberType
		<	::std::byte*
		,	ATR::Bit::MemberOffset<EOffset{5}, BitField<1_bits>(&)[5]>
		>
	,	ATR::Bit::ArrayReference<ESize{1}, 5, EOffset{5}>
	>
);

static_assert
(	::std::is_same_v
	<	MemberType
		<	::std::byte*
		,	ATR::Bit::MemberOffset<EOffset{5}, BitField<1_bits>[5]>
		>
	,	ATR::Bit::ArrayValue<ESize{1}, 5>
	>
);
