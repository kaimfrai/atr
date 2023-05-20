import ATR.Literals;
import ATR.Member.Config;
import ATR.Member.ConfigTransformer;

import Meta.Bit.Field;
import Meta.ID;
import Meta.Memory.Size;
import Meta.Token.Const;
import Meta.Token.Extent;
import Meta.Token.Mutable;
import Meta.Token.Specifier;
import Meta.Token.Type;

import Std;

using ::Meta::ID;
using ::Meta::Bit::Field;
using ::Meta::Specifier::Mut;

using namespace ::Meta::Literals;

using Single = ID<"Single">;
using Const = ID<"Const">;
using TransformedConst = ID<"TransformedConst">;
using Mutable = ID<"Mutable">;
using TransformedMutable = ID<"TransformedMutable">;
using Array = ID<"Array">;
using TransformedArray = ID<"TransformedArray">;

namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	Single
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
	)	(	Const
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
	)	(	TransformedConst
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	(void)
		ConfigTransformer{ o_rConfig, ::Meta::Const }
			("Single"_id)
		;
		return
			o_rConfig
		;
	}

	auto constexpr
	(	Configure
	)	(	Mutable
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
	)	(	TransformedMutable
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	(void)
		ConfigTransformer{ o_rConfig, ::Meta::Mutable }
			("Single"_id)
		;
		return
			o_rConfig
		;
	}

	auto constexpr
	(	Configure
	)	(	Array
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
	)	(	TransformedArray
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	(void)
		ConfigTransformer{ o_rConfig, ::Meta::Extent<5uz> }
			("Single"_id)
		;
		return
			o_rConfig
		;
	}
}

using ::ATR::Member::Config_Of;

static_assert
(	Config_Of<Single>
!=	Config_Of<TransformedConst>
);
static_assert
(	Config_Of<Const>
==	Config_Of<TransformedConst>
);

static_assert
(	Config_Of<Single>
!=	Config_Of<TransformedMutable>
);
static_assert
(	Config_Of<Mutable>
==	Config_Of<TransformedMutable>
);

static_assert
(	Config_Of<Single>
!=	Config_Of<TransformedArray>
);
static_assert
(	Config_Of<Array>
==	Config_Of<TransformedArray>
);
