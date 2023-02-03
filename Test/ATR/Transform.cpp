import ATR.Member.List;
import ATR.Member.Union;
import ATR.Member.Definition;

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
	ATR::Member
{
	template<>
	Definition
	<	New
		<	"Int"
		,	int
		>
	+	New
		<	"Bool"
		,	bool
		>
	+	New
		<	"Field"
		,	Field<3_bit>
		>
	>	const extern
		Definition_For
		<	"Single"
		>
	;

	template<>
	Definition
	<	New
		<	"Int"
		,	int const
		>
	+	New
		<	"Bool"
		,	bool const
		>
	+	New
		<	"Field"
		,	Field<3_bit> const
		>
	>	const extern
		Definition_For
		<	"ConstSingle"
		>
	;

	template<>
	Definition
	<	New
		<	"Int"
		,	Mut<int>
		>
	+	New
		<	"Bool"
		,	Mut<bool>
		>
	+	New
		<	"Field"
		,	Mut<Field<3_bit>>
		>
	>	const extern
		Definition_For
		<	"MutSingle"
		>
	;

	template<>
	Definition
	<	New
		<	"Int"
		,	int[5]
		>
	+	New
		<	"Bool"
		,	bool[5]
		>
	+	New
		<	"Field"
		,	Field<3_bit>[5]
		>
	>	const extern
		Definition_For
		<	"Array"
		>
	;
}

using ::ATR::Member::Definition_For;

static_assert
(	Definition_For<"Single">
!=	Definition_For<"ConstSingle">
);

static_assert
(	Definition_For<"Single"> * Meta::Const
==	Definition_For<"ConstSingle">
);


static_assert
(	Definition_For<"Single">
!=	Definition_For<"MutSingle">
);

static_assert
(	Definition_For<"Single"> * Meta::Mutable
==	Definition_For<"MutSingle">
);

static_assert
(	Definition_For<"Single">
!=	Definition_For<"Array">
);

static_assert
(	Definition_For<"Single"> * 5_ext
==	Definition_For<"Array">
);
