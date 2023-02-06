import ATR.Member.List;
import ATR.Member.Definition;
import ATR.Member.Union;
import ATR.Member.OffsetOf;
import ATR.Instance;
import ATR.Layout.MemberOffset;

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
using ::Meta::BitSize;

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
	<	BitSize
			t_nOffset
	,	typename
			t_tEntity
	>
auto constexpr inline
	MemberOffset_For
=	Type
	<	::ATR::MemberOffset
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
auto constexpr inline
	MemberType_For
=	Type
	<	decltype
		(	::std::declval
			<	::ATR::MemberOffset
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
	<	::std::byte*
	,	0_bit
	,	int
	>
==	Type<int&>
);

static_assert
(	MemberType_For
	<	::std::byte const*
	,	0_bit
	,	int
	>
==	Type<int const&>
);

static_assert
(	MemberType_For
	<	OffsetOfTest*
	,	0_bit
	,	int
	>
==	Type<int&>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const*
	,	0_bit
	,	int
	>
==	Type<int const&>
);

static_assert
(	MemberType_For
	<	::std::byte*
	,	32_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	::std::byte const*
	,	32_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest*
	,	32_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const*
	,	32_bit
	,	int const
	>
==	Type
	<	int const&
	>
);

static_assert
(	MemberType_For
	<	::std::byte*
	,	64_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	::std::byte const*
	,	64_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest*
	,	64_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const*
	,	64_bit
	,	Mut<int>
	>
==	Type
	<	int&
	>
);

static_assert
(	MemberType_For
	<	::std::byte*
	,	156_bit
	,	bool
	>
==	Type
	<	::Meta::Bit::Reference
		<	1_bit
		,	4_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	::std::byte const*
	,	156_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest*
	,	156_bit
	,	bool
	>
==	Type
	<	::Meta::Bit::Reference
		<	1_bit
		,	4_bdx
		>
	>
);

static_assert
(	MemberType_For
	<	OffsetOfTest const*
	,	156_bit
	,	bool
	>
==	Type
	<	bool
	>
);

static_assert
(	MemberType_For
	<	::std::byte*
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
	<	::std::byte const*
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
	<	OffsetOfTest*
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
	<	OffsetOfTest const*
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
