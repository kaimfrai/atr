import ATR.Member.DynamicTypes;
import ATR.Member.ConfigTransformer;

import Meta.Bit.Field;
import Meta.Memory.Size;
import Meta.Token.Const;
import Meta.Token.Mutable;
import Meta.Token.Specifier;
import Meta.Token.Extent;
import Meta.Token.Type;
import Meta.ID.Alias;
import Meta.ID.Literals;

import Std;

using ::Meta::Bit::Field;
using ::Meta::Specifier::Mut;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Single">
		,	auto
			&&	o_rConfig
		)
	{
		o_rConfig("Int", ::Meta::Type<int>);
		o_rConfig("Bool", ::Meta::Type<bool>);
		o_rConfig("Field", ::Meta::Type<Field<3_bit>>);
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Const">
		,	auto
			&&	o_rConfig
		)
	{
		o_rConfig("Int", ::Meta::Type<int const>);
		o_rConfig("Bool", ::Meta::Type<bool const>);
		o_rConfig("Field", ::Meta::Type<Field<3_bit> const>);
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"TransformedConst">
		,	auto
			&&	o_rConfig
		)
	{
		Configure("Single"_ID, ConfigTransformer{ o_rConfig, ::Meta::Const });
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Mut">
		,	auto
			&&	o_rConfig
		)
	{
		o_rConfig("Int", ::Meta::Type<Mut<int>>);
		o_rConfig("Bool", ::Meta::Type<Mut<bool>>);
		o_rConfig("Field", ::Meta::Type<Mut<Field<3_bit>>>);
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"TransformedMut">
		,	auto
			&&	o_rConfig
		)
	{
		Configure("Single"_ID, ConfigTransformer{ o_rConfig, ::Meta::Mutable });
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Array">
		,	auto
			&&	o_rConfig
		)
	{
		o_rConfig("Int", ::Meta::Type<int[5]>);
		o_rConfig("Bool", ::Meta::Type<bool[5]>);
		o_rConfig("Field", ::Meta::Type<Field<3_bit>[5]>);
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"TransformedArray">
		,	auto
			&&	o_rConfig
		)
	{
		Configure("Single"_ID, ConfigTransformer{ o_rConfig, ::Meta::Extent<5uz> });
	}
}

using ::ATR::Member::DynamicTypes_Of;

static_assert
(	DynamicTypes_Of<"Single">
!=	DynamicTypes_Of<"TransformedConst">
);
static_assert
(	DynamicTypes_Of<"Const">
==	DynamicTypes_Of<"TransformedConst">
);

static_assert
(	DynamicTypes_Of<"Single">
!=	DynamicTypes_Of<"TransformedMut">
);
static_assert
(	DynamicTypes_Of<"Mut">
==	DynamicTypes_Of<"TransformedMut">
);

static_assert
(	DynamicTypes_Of<"Single">
!=	DynamicTypes_Of<"TransformedArray">
);
static_assert
(	DynamicTypes_Of<"Array">
==	DynamicTypes_Of<"TransformedArray">
);
