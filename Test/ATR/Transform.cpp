import ATR.Literals;
import ATR.Member.AlignBuffer;
import ATR.Member.Composition;
import ATR.Member.CompositionTransformer;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.CountedType;
import ATR.Member.FlatComposition;

import Meta.Bit.Field;
import Meta.ID;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Token.Extent;

import Std;

using ::ATR::Member::AlignBuffer;
using ::ATR::Member::Composition_Of;
using ::ATR::Member::CountedType;
using ::ATR::Member::FlatComposition;
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
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	Single
		)
	->	auto&&
	{	return
			o_rComposer
			.	Member("Int", Type<int>)
			.	Member("Bool", Type<bool>)
			.	Member("Field", Type<Field<3_bit>>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	Array
		)
	->	auto&&
	{	return
			o_rComposer
			.	Member("Int", Type<int[5]>)
			.	Member("Bool", Type<bool[5]>)
			.	Member("Field", Type<Field<3_bit>[5]>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	TransformedArray
		)
	->	auto&&
	{	CompositionTransformer{ o_rComposer, ::Meta::Extent<5uz> }
		.	Splice("Single"_id)
		;
		return
			o_rComposer
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
)	(	FlatComposition const
		&	i_rLeft
	,	FlatComposition const
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
			.	Members
			.	Names
		,	i_rRight
			.	Members
			.	Names
		)
	and	::std::ranges::equal
		(	i_rLeft
			.	Members
			.	Types
		,	i_rRight
			.	Members
			.	Types
		)
	and	::std::ranges::equal
		(	i_rLeft
			.	Offsets
		,	i_rRight
			.	Offsets
		)
	;
}

static_assert
(	Composition_Of<Single>
!=	Composition_Of<TransformedArray>
);
static_assert
(	Composition_Of<Array>
==	Composition_Of<TransformedArray>
);
