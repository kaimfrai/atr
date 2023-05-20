import ATR.Literals;
import ATR.Member.AlignBuffer;
import ATR.Member.CountedBuffer;
import ATR.Member.Config;
import ATR.Member.ConfigData;
import ATR.Member.ConfigTransformer;

import Meta.Bit.Field;
import Meta.ID;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Token.Const;
import Meta.Token.Extent;
import Meta.Token.Mutable;
import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::ATR::Member::AlignBuffer;
using ::ATR::Member::CountedBuffer;
using ::ATR::Member::ConfigData;
using ::ATR::Member::Config_Of;

using ::Meta::Bit::Field;
using ::Meta::ID;
using ::Meta::Specifier::Mut;
using ::Meta::TypeID;

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
			("Int", Type<int>)
			("Bool", Type<bool>)
			("Field", Type<Field<3_bit>>)
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
			("Int", Type<int const>)
			("Bool", Type<bool const>)
			("Field", Type<Field<3_bit> const>)
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
			("Int", Type<Mut<int>>)
			("Bool", Type<Mut<bool>>)
			("Field", Type<Mut<Field<3_bit>>>)
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
			("Int", Type<int[5]>)
			("Bool", Type<bool[5]>)
			("Field", Type<Field<3_bit>[5]>)
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

[[nodiscard]]
auto constexpr
(	operator==
)	(	decltype(ConfigData::NamedInfoList) const
		&	i_rLeft
	,	decltype(ConfigData::NamedInfoList) const
		&	i_rRight
	)
	noexcept
->	bool
{	return
	::std::equal
	(	i_rLeft
		.	begin
			()
	,	i_rLeft
		.	end
			()
	,	i_rRight
		.	begin
			()
	,	i_rRight
		.	end
			()
	);
}

[[nodiscard]]
auto constexpr
(	operator==
)	(	AlignBuffer<TypeID> const
		&	i_rLeft
	,	AlignBuffer<TypeID> const
		&	i_rRight
	)
	noexcept
->	bool
{	return
	::std::equal
	(	i_rLeft
		.	begin
			()
	,	i_rLeft
		.	end
			()
	,	i_rRight
		.	begin
			()
	,	i_rRight
		.	end
			()
	);
}

[[nodiscard]]
auto constexpr
(	operator==
)	(	ConfigData const
		&	i_rLeft
	,	ConfigData const
		&	i_rRight
	)
	noexcept
->	bool
{	return
		(	i_rLeft.Size
		==	i_rRight.Size
		)
	and	(	i_rLeft.Layout
		==	i_rRight.Layout
		)
	and	(	i_rLeft.NamedInfoList
		==	i_rRight.NamedInfoList
		)
	;
}

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
