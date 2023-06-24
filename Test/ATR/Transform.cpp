import ATR.Literals;
import ATR.Member.AlignBuffer;
import ATR.Member.Config;
import ATR.Member.ConfigData;
import ATR.Member.ConfigTransformer;
import ATR.Member.CountedBuffer;
import ATR.Member.CountedType;

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
using ::ATR::Member::CountedType;
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
	auto constexpr inline
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

	auto constexpr inline
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

	auto constexpr inline
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

	auto constexpr inline
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

	auto constexpr inline
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

	auto constexpr inline
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

	auto constexpr inline
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

namespace
	ATR::Member
{
	template
		<	typename
				t_tElement
		,	auto
				t_vBufferSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator==
	)	(	CountedBuffer<t_tElement, t_vBufferSize> const
			&	i_rLeft
		,	CountedBuffer<t_tElement, t_vBufferSize> const
			&	i_rRight
		)
		noexcept
	->	bool
	{	return
		::std::ranges::equal
		(	i_rLeft
		,	i_rRight
		);
	}
}

[[nodiscard]]
auto constexpr inline
(	operator==
)	(	AlignBuffer<CountedType> const
		&	i_rLeft
	,	AlignBuffer<CountedType> const
		&	i_rRight
	)
	noexcept
->	bool
{	return
	::std::ranges::equal
	(	i_rLeft
	,	i_rRight
	);
}

[[nodiscard]]
auto constexpr inline
(	operator==
)	(	ConfigData const
		&	i_rLeft
	,	ConfigData const
		&	i_rRight
	)
	noexcept
->	bool
{	return
		(	i_rLeft
			.	AlignTypeCounts
		==	i_rRight
			.	AlignTypeCounts
		)
	and	(	i_rLeft
			.	BitCount
		==	i_rRight
			.	BitCount
		)
	and	(	i_rLeft
			.	NamedInfoList
		==	i_rRight
			.	NamedInfoList
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
