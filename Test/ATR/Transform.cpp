import ATR.MemberList;
import ATR.LayoutConfig;

import Meta.Bit.Field;
import Meta.Memory.Size;
import Meta.Token.Const;
import Meta.Token.Mutable;
import Meta.Token.Specifier;
import Meta.Token.Extent;

using ::Meta::Bit::Field;
using ::Meta::Specifier::Mut;

using namespace ::Meta::Literals;

namespace
	ATR
{
	template<>
	DefineMembers
	<	Member
		<	"Int"
		,	int
		>
	+	Member
		<	"Bool"
		,	bool
		>
	+	Member
		<	"Field"
		,	Field<3_bit>
		>
	>	const extern
		LayoutConfig
		<	"Single"
		>
	;

	template<>
	DefineMembers
	<	Member
		<	"Int"
		,	int const
		>
	+	Member
		<	"Bool"
		,	bool const
		>
	+	Member
		<	"Field"
		,	Field<3_bit> const
		>
	>	const extern
		LayoutConfig
		<	"ConstSingle"
		>
	;

	template<>
	DefineMembers
	<	Member
		<	"Int"
		,	Mut<int>
		>
	+	Member
		<	"Bool"
		,	Mut<bool>
		>
	+	Member
		<	"Field"
		,	Mut<Field<3_bit>>
		>
	>	const extern
		LayoutConfig
		<	"MutSingle"
		>
	;

	template<>
	DefineMembers
	<	Member
		<	"Int"
		,	int[5]
		>
	+	Member
		<	"Bool"
		,	bool[5]
		>
	+	Member
		<	"Field"
		,	Field<3_bit>[5]
		>
	>	const extern
		LayoutConfig
		<	"Array"
		>
	;
}

static_assert
(	ATR::LayoutConfig<"Single">
!=	ATR::LayoutConfig<"ConstSingle">
);

static_assert
(	ATR::LayoutConfig<"Single"> * Meta::Const
==	ATR::LayoutConfig<"ConstSingle">
);


static_assert
(	ATR::LayoutConfig<"Single">
!=	ATR::LayoutConfig<"MutSingle">
);

static_assert
(	ATR::LayoutConfig<"Single"> * Meta::Mutable
==	ATR::LayoutConfig<"MutSingle">
);

static_assert
(	ATR::LayoutConfig<"Single">
!=	ATR::LayoutConfig<"Array">
);

static_assert
(	ATR::LayoutConfig<"Single"> * 5_ext
==	ATR::LayoutConfig<"Array">
);
