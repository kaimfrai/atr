export module ATR.Member.Difference;

import ATR.Member.List;

import Std;

export namespace
	ATR::Member
{
	template
		<	auto
				t_nLeft
		,	auto
				t_nRight
		>
	[[nodiscard]]
	auto constexpr
	(	operator -
	)	(	List<t_nLeft> const
			&	i_rLeft
		,	List<t_nRight> const
			&	i_rRight
		)
		noexcept
	->	List
		<	t_nLeft
		-	t_nRight
		>
	{
		static_assert
		(	t_nLeft
		>=	t_nRight
		,	"Cannot subtract more MemberInfos than already exist!"
		);
		if	constexpr
			(	t_nRight
			==	0uz
			)
			return i_rLeft;
		else
		if	(	not
				::std::ranges::includes
				(	i_rLeft
				,	i_rRight
				)
			)
		{
			((void)"Cannot subtract MemberInfos that are not contained!", ::std::unreachable());
		}

		List
		<	t_nLeft
		-	t_nRight
		>	vResult
		;

		::std::ranges::set_difference
		(	i_rLeft
		,	i_rRight
		,	begin(vResult)
		);
		return vResult;
	}
}
