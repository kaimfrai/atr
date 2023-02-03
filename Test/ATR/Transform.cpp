import ATR.Member.List;
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
	<	Member::New
		<	"Int"
		,	int
		>
	+	Member::New
		<	"Bool"
		,	bool
		>
	+	Member::New
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
	<	Member::New
		<	"Int"
		,	int const
		>
	+	Member::New
		<	"Bool"
		,	bool const
		>
	+	Member::New
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
	<	Member::New
		<	"Int"
		,	Mut<int>
		>
	+	Member::New
		<	"Bool"
		,	Mut<bool>
		>
	+	Member::New
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
	<	Member::New
		<	"Int"
		,	int[5]
		>
	+	Member::New
		<	"Bool"
		,	bool[5]
		>
	+	Member::New
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
