export module Meta.Generic.LowerBound;

import Meta.Size;

import std;

export namespace
	Meta::Generic
{
	[[nodiscard]]
	auto constexpr inline
	(	LowerBoundIndex
	)	(	auto const
			*	i_aBegin
		,	SSize
				i_vCount
		,	decltype(*i_aBegin)
				i_rValue
		)
		noexcept
	->	SSize
	{
		auto const
			aEnd
		=	i_aBegin
		+	i_vCount
		;
		auto const
			aPosition
		=	::std::lower_bound
			(	i_aBegin
			,	aEnd
			,	i_rValue
			)
		;
		return
			aPosition
		-	i_aBegin
		;
	}
}
