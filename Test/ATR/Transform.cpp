import ATR;

import Meta.Memory.Size;
import Meta.Token.CV;
import Meta.Token.Specifier;

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
		,	BitField<3_bit>
		>
	>	extern
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
		,	BitField<3_bit> const
		>
	>	extern
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
		,	Mut<BitField<3_bit>>
		>
	>	extern
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
		,	BitField<3_bit>[5]
		>
	>	extern
		LayoutConfig
		<	"Array"
		>
	;
}

using namespace ::ATR::Literals;

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
