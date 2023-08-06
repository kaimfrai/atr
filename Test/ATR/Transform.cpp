import ATR.Literals;
import ATR.Member.AlignBuffer;
import ATR.Member.Config;
import ATR.Member.ConfigData;
import ATR.Member.ConfigTransformer;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.CountedType;

import Meta.Bit.Field;
import Meta.ID;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Token.Extent;

import Std;

using ::ATR::Member::AlignBuffer;
using ::ATR::Member::ConfigData;
using ::ATR::Member::Config_Of;
using ::ATR::Member::CountedType;
using ::ATR::Member::TypeBufferSize;

using ::Meta::Bit::Field;
using ::Meta::ID;

using namespace ::Meta::Literals;

using Single = ID<"Single">;
using Array = ID<"Array">;
using TransformedArray = ID<"TransformedArray">;

namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	Single
		)
	->	auto&&
	{	return
		o_rConfig
		.	Member("Int", Type<int>)
		.	Member("Bool", Type<bool>)
		.	Member("Field", Type<Field<3_bit>>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	Array
		)
	->	auto&&
	{	return
		o_rConfig
		.	Member("Int", Type<int[5]>)
		.	Member("Bool", Type<bool[5]>)
		.	Member("Field", Type<Field<3_bit>[5]>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	TransformedArray
		)
	->	auto&&
	{	(void)
		ConfigTransformer{ o_rConfig, ::Meta::Extent<5uz> }
		.	Splice("Single"_id)
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
)	(	AlignBuffer<CountedType, TypeBufferSize> const
		&	i_rLeft
	,	AlignBuffer<CountedType, TypeBufferSize> const
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
			.	Layout
			.	AlignTypeCounts
		==	i_rRight
			.	Layout
			.	AlignTypeCounts
		)
	and	(	::std::ranges::equal
			(	i_rLeft
				.	Layout
				.	BitCounts
			,	i_rRight
				.	Layout
				.	BitCounts
			)
		)
	and	::std::ranges::equal
		(	i_rLeft
			.	Names
		,	i_rRight
			.	Names
		)
	and	::std::ranges::equal
		(	i_rLeft
			.	Types
		,	i_rRight
			.	Types
		)
	and	::std::ranges::equal
		(	i_rLeft
			.	TypeIndices
		,	i_rRight
			.	TypeIndices
		)
	;
}

static_assert
(	Config_Of<Single>
!=	Config_Of<TransformedArray>
);
static_assert
(	Config_Of<Array>
==	Config_Of<TransformedArray>
);
