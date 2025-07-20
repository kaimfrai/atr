import ATR.Erase;
import ATR.Instance;
import ATR.Layout.Offset;
import ATR.Member.Info;
import ATR.Member.ProtoComposer;

import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.ID;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Hash;
import Meta.Token.Type;

import std;

using ::Meta::Bit::Field;
using ::Meta::BitSize;
using ::Meta::ID;
using ::Meta::Memory::ByteWidth;
using ::Meta::Memory::SizeOf;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	// TODO Rename Mut and Const as they are no longer supported
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"OffsetOfTest">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Member("Int", Type<int>)
			.	Member("IntConst", Type<int>)
			.	Member("IntMut", Type<int>)
			.	Member("ArrayBool", Type<bool[5]>)
			.	Member("ArrayBoolConst", Type<bool[5]>)
			.	Member("ArrayBoolMut", Type<bool[5]>)
			.	Member("ArrayField", Type<Field<3_bit>[5]>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[5]>)
			.	Member("ArrayFieldMut", Type<Field<3_bit>[5]>)
			.	Member("Bool", Type<bool>)
			.	Member("BoolConst", Type<bool>)
			.	Member("BoolMut", Type<bool>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("FieldMut", Type<Field<3_bit>>)
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
(	::Meta::Memory::SizeOf
	<	decltype
		(	OffsetOfTest{}
			.	Layout
			.	SouthArea
		)
	>
==	ExpectedBufferSize
);

struct
	RErasure
:	::ATR::RErasure
{
	[[nodiscard]]
	auto static constexpr inline
	(	ssize
	)	()
		noexcept
	->	::Meta::SSize
	{	return
			sizeof(OffsetOfTest)
		;
	}
};

struct
	CErasure
:	::ATR::CErasure
{
	[[nodiscard]]
	auto static constexpr inline
	(	ssize
	)	()
		noexcept
	->	::Meta::SSize
	{	return
			sizeof(OffsetOfTest)
		;
	}
};


struct
	XErasure
:	::ATR::XErasure
{
	[[nodiscard]]
	auto static constexpr inline
	(	ssize
	)	()
		noexcept
	->	::Meta::SSize
	{	return
			sizeof(OffsetOfTest)
		;
	}
};

template
	<	typename
			t_tOwner
	,	ImplicitHash
			t_vMemberName
	>
auto constexpr inline
	MemberInfo_Of
=	t_tOwner
	::	Composition
	.	FindMemberInfo
		(	t_vMemberName
		)
;

template
	<	BitSize
			t_vOffset
	,	typename
			t_tEntity
	>
auto constexpr inline
	MemberInfo_For
=	::ATR::Member::Info
	{	Type<t_tEntity>
	,	t_vOffset
	,	0
	,	nullptr
	}
;

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"Int"
	>
==	MemberInfo_For
	<	0_bit
	,	int
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"IntConst"
	>
==	MemberInfo_For
	<	32_bit
	,	int
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"IntMut"
	>
==	MemberInfo_For
	<	64_bit
	,	int
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"ArrayBool"
	>
==	MemberInfo_For
	<	96_bit
	,	bool[5]
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"ArrayBoolConst"
	>
==	MemberInfo_For
	<	101_bit
	,	bool[5]
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"ArrayBoolMut"
	>
==	MemberInfo_For
	<	106_bit
	,	bool[5]
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"ArrayField"
	>
==	MemberInfo_For
	<	111_bit
	,	Field<3_bit>[5]
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"ArrayFieldConst"
	>
==	MemberInfo_For
	<	126_bit
	,	Field<3_bit>[5]
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"ArrayFieldMut"
	>
==	MemberInfo_For
	<	141_bit
	,	Field<3_bit>[5]
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"Bool"
	>
==	MemberInfo_For
	<	156_bit
	,	bool
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"BoolConst"
	>
==	MemberInfo_For
	<	157_bit
	,	bool
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"BoolMut"
	>
==	MemberInfo_For
	<	158_bit
	,	bool
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"Field"
	>
==	MemberInfo_For
	<	159_bit
	,	Field<3_bit>
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"FieldConst"
	>
==	MemberInfo_For
	<	162_bit
	,	Field<3_bit>
	>
);

static_assert
(	MemberInfo_Of
	<	OffsetOfTest
	,	"FieldMut"
	>
==	MemberInfo_For
	<	165_bit
	,	Field<3_bit>
	>
);

template
	<	typename
			t_tErased
	,	BitSize
			t_vOffset
	,	typename
			t_tEntity
	>
auto constexpr inline
	ErasureMemberType_For
=	Type
	<	decltype
		(	::ATR::Layout::Offset
			<	t_tEntity
			,	t_vOffset
			>{}	(	::std::declval<t_tErased>
					()
				)
		)
	>
;

template
	<	typename
			t_tOwner
	,	BitSize
			t_vOffset
	,	typename
			t_tEntity
	>
auto constexpr inline
	OwnerMemberType_For
=	Type
	<	decltype
		(	::std::declval<t_tOwner>
				()
			.	Layout
		->*	::ATR::Layout::Offset
			<	t_tEntity
			,	t_vOffset
			>{}
		)
	>
;

static_assert
(	ErasureMemberType_For
	<	RErasure
	,	0_bit
	,	int
	>
==	Type<int&>
);

static_assert
(	ErasureMemberType_For
	<	CErasure
	,	0_bit
	,	int
	>
==	Type<int>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	0_bit
	,	int
	>
==	Type<int&>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	0_bit
	,	int
	>
==	Type<int>
);

static_assert
(	ErasureMemberType_For
	<	RErasure
	,	32_bit
	,	int
	>
==	Type
	<	int&
	>
);

static_assert
(	ErasureMemberType_For
	<	CErasure
	,	32_bit
	,	int
	>
==	Type
	<	int
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	32_bit
	,	int
	>
==	Type
	<	int&
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	32_bit
	,	int
	>
==	Type
	<	int
	>
);

static_assert
(	ErasureMemberType_For
	<	RErasure
	,	64_bit
	,	int
	>
==	Type
	<	int&
	>
);

static_assert
(	ErasureMemberType_For
	<	CErasure
	,	64_bit
	,	int
	>
==	Type
	<	int
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	64_bit
	,	int
	>
==	Type
	<	int&
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	64_bit
	,	int
	>
==	Type
	<	int
	>
);

static_assert
(	ErasureMemberType_For
	<	RErasure
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
(	ErasureMemberType_For
	<	CErasure
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
(	OwnerMemberType_For
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
(	OwnerMemberType_For
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
(	ErasureMemberType_For
	<	RErasure
	,	101_bit
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
(	ErasureMemberType_For
	<	CErasure
	,	101_bit
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
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	101_bit
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
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	101_bit
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
(	ErasureMemberType_For
	<	RErasure
	,	106_bit
	,	bool[5]
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
(	ErasureMemberType_For
	<	CErasure
	,	106_bit
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
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	106_bit
	,	bool[5]
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
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	106_bit
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
(	ErasureMemberType_For
	<	RErasure
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
(	ErasureMemberType_For
	<	CErasure
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
(	OwnerMemberType_For
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
(	OwnerMemberType_For
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
(	ErasureMemberType_For
	<	RErasure
	,	126_bit
	,	Field<3_bit>[5]
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	3_bit
		,	5
		,	6_bdx
		>
	>
);

static_assert
(	ErasureMemberType_For
	<	CErasure
	,	126_bit
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
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	126_bit
	,	Field<3_bit>[5]
	>
==	Type
	<	::Meta::Bit::ArrayReference
		<	3_bit
		,	5
		,	6_bdx
		>
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	126_bit
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
(	ErasureMemberType_For
	<	RErasure
	,	141_bit
	,	Field<3_bit>[5]
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
(	ErasureMemberType_For
	<	CErasure
	,	141_bit
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
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	141_bit
	,	Field<3_bit>[5]
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
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	141_bit
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
(	ErasureMemberType_For
	<	RErasure
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
(	ErasureMemberType_For
	<	CErasure
	,	156_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	OwnerMemberType_For
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
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	156_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	ErasureMemberType_For
	<	RErasure
	,	157_bit
	,	bool
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	5_bdx
		>
	>
);

static_assert
(	ErasureMemberType_For
	<	CErasure
	,	157_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	157_bit
	,	bool
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	5_bdx
		>
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	157_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	ErasureMemberType_For
	<	RErasure
	,	158_bit
	,	bool
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	6_bdx
		>
	>
);

static_assert
(	ErasureMemberType_For
	<	CErasure
	,	158_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	158_bit
	,	bool
	>
==	Type
	<	::Meta::Bit::Reference
		<	bool
		,	6_bdx
		>
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	158_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	ErasureMemberType_For
	<	RErasure
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
(	ErasureMemberType_For
	<	CErasure
	,	159_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	OwnerMemberType_For
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
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	159_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	ErasureMemberType_For
	<	RErasure
	,	162_bit
	,	Field<3_bit>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	2_bdx
		>
	>
);

static_assert
(	ErasureMemberType_For
	<	CErasure
	,	162_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	162_bit
	,	Field<3_bit>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	2_bdx
		>
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	162_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	ErasureMemberType_For
	<	RErasure
	,	165_bit
	,	Field<3_bit>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	5_bdx
		>
	>
);

static_assert
(	ErasureMemberType_For
	<	CErasure
	,	165_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest&
	,	165_bit
	,	Field<3_bit>
	>
==	Type
	<	::Meta::Bit::Reference
		<	Field<3_bit>
		,	5_bdx
		>
	>
);

static_assert
(	OwnerMemberType_For
	<	OffsetOfTest const&
	,	165_bit
	,	Field<3_bit>
	>
==	Type
	<	Field<3_bit>
	>
);
