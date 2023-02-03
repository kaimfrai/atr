export module ATR.Member.Union;

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
	(	operator +
	)	(	List<t_nLeft> const
			&	i_rLeft
		,	List<t_nRight> const
			&	i_rRight
		)
		noexcept
	->	List
		<	t_nLeft
		+	t_nRight
		>
	{
		if	constexpr
			(	t_nLeft
			==	0uz
			)
		{	return
				i_rRight
			;
		}
		else
		if	constexpr
			(	t_nRight
			==	0uz
			)
		{	return
				i_rLeft
			;
		}
		else
		{
			List
			<	t_nLeft
			+	t_nRight
			>	vResult
			;

			auto const
				vLast
			=	::std::set_union
				(	i_rLeft.begin()
				,	i_rLeft.end().base()
				,	i_rRight.begin()
				,	i_rRight.end().base()
				,	vResult.begin()
				)
			;

			if	(vLast != vResult.end())
			{
				((void)"Cannot merge MemberList with identical members!", std::unreachable());
			}
			return
				vResult
			;
		}
	}
}
