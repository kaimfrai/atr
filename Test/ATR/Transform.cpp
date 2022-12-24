import ATR;

import Meta.Bit.Count;

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
		,	BitField<3_bits>
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
		,	BitField<3_bits> const
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
		,	Mut<BitField<3_bits>>
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
		,	BitField<3_bits>[5]
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
