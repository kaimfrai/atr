export module ATR.Member.Compare.GreaterName;

import ATR.Member.Name;

export namespace
	ATR::Member::Compare
{
	struct
		GreaterName
	{
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	auto const
				&	i_rLeft
			,	auto const
				&	i_rRight
			)
			noexcept
		->	bool
		{	return
			(	NameView
				{	i_rLeft
					.	Name
				}
			>	NameView
				{	i_rRight
					.	Name
				}
			);
		}
	};
}
