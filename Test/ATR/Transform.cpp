import ATR.Member.Config;
import ATR.Member.ConfigTransformer;

import Meta.Bit.Field;
import Meta.ID.Alias;
import Meta.ID.Literals;
import Meta.Memory.Size;
import Meta.Token.Const;
import Meta.Token.Extent;
import Meta.Token.Mutable;
import Meta.Token.Specifier;
import Meta.Token.Type;

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
	->	auto&&
	{	return
		o_rConfig
			("Int", ::Meta::Type<int>)
			("Bool", ::Meta::Type<bool>)
			("Field", ::Meta::Type<Field<3_bit>>)
		;
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Const">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Int", ::Meta::Type<int const>)
			("Bool", ::Meta::Type<bool const>)
			("Field", ::Meta::Type<Field<3_bit> const>)
		;
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"TransformedConst">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	(void)
		ConfigTransformer{ o_rConfig, ::Meta::Const }
			("Single"_ID)
		;
		return
			o_rConfig
		;
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Mut">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Int", ::Meta::Type<Mut<int>>)
			("Bool", ::Meta::Type<Mut<bool>>)
			("Field", ::Meta::Type<Mut<Field<3_bit>>>)
		;
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"TransformedMut">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	(void)
		ConfigTransformer{ o_rConfig, ::Meta::Mutable }
			("Single"_ID)
		;
		return
			o_rConfig
		;
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Array">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Int", ::Meta::Type<int[5]>)
			("Bool", ::Meta::Type<bool[5]>)
			("Field", ::Meta::Type<Field<3_bit>[5]>)
		;
	}

	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"TransformedArray">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	(void)
		ConfigTransformer{ o_rConfig, ::Meta::Extent<5uz> }
			("Single"_ID)
		;
		return
			o_rConfig
		;
	}
}

using ::ATR::Member::Config_Of;

static_assert
(	Config_Of<"Single">
!=	Config_Of<"TransformedConst">
);
static_assert
(	Config_Of<"Const">
==	Config_Of<"TransformedConst">
);

static_assert
(	Config_Of<"Single">
!=	Config_Of<"TransformedMut">
);
static_assert
(	Config_Of<"Mut">
==	Config_Of<"TransformedMut">
);

static_assert
(	Config_Of<"Single">
!=	Config_Of<"TransformedArray">
);
static_assert
(	Config_Of<"Array">
==	Config_Of<"TransformedArray">
);
