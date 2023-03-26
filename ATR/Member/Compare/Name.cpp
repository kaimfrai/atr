export module ATR.Member.Compare.Name;

import ATR.Member.Name;

export namespace
	ATR::Member::Compare
{
	struct
		Name
	{
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	auto const
				&	i_rObject
			,	NameView
					i_rName
			)
			noexcept
		->	bool
		{	return
				NameView
				{	i_rObject
					.	Name
				}
			<	i_rName
			;
		}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	t_tObject const
				&	i_rLeft
			,	t_tObject const
				&	i_rRight
			)
			noexcept
		->	bool
		{	return
				NameView
				{	i_rLeft
					.	Name
				}
			<	NameView
				{	i_rRight
					.	Name
				}
			;
		}
	};
}
