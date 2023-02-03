export module ATR.Member.Compare;

import ATR.Member.List;

import Std;

export namespace
	ATR::Member
{
	template
		<	auto
				t_nLeftCount
		,	auto
				t_nRightCount
		>
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	List<t_nLeftCount> const
			&	i_rLeft
		,	List<t_nRightCount> const
			&	i_rRight
		)
		noexcept
	->	bool
	{	if	constexpr
			(	t_nLeftCount
			!=	t_nRightCount
			)
		{	return
				false
			;
		}
		return
		::std::equal
		(	i_rLeft.begin()
		,	i_rLeft.end().base()
		,	i_rRight.begin()
		,	i_rRight.end().base()
		);
	}
}
