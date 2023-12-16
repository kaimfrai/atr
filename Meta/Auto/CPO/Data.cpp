export module Meta.Auto.CPO.Data;

import Meta.Size;

export namespace
	Meta::CPO
{
	// Replacement for std::ranges::data.
	// This is not as powerful, but it does not need to be
	// Definitions such as data(T&&) are assumed to not occur, only data(T&)
	struct
		Data
	{
		template
			<	typename
					t_tElement
			,	::Meta::SSize
					t_vExtent
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	t_tElement
				(&	i_rArray
				)	[	t_vExtent
					]
			)
			noexcept
		->	t_tElement*
		{	return
				+
				i_rArray
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	auto
				&	i_rObject
			)
			noexcept
		->	decltype
			(	i_rObject
				.	data
					()
			)
		{	return
				i_rObject
				.	data
					()
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	auto
				&	i_rObject
			)
			noexcept
		->	decltype
			(	data
				(	i_rObject
				)
			)
		requires
			(	not
				requires
				{	i_rObject
					.	data
						()
					;
				}
			)
		{	return
				data
				(	i_rObject
				)
			;
		}
	}	constexpr inline
		Data
	{};
}
