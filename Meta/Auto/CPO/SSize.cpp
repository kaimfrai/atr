export module Meta.Auto.CPO.SSize;

import Meta.Size;

export namespace
	Meta::CPO
{
	// Replacement for std::ranges::ssize.
	// Does not require definition of ssize to be defined.
	// This is not as powerful, but it does not need to be:
	// Definitions such as ssize(T&&) are assumed to not occur, only ssize(T const&)
	struct
		SSize
	{
		template
			<	::Meta::SSize
					t_vExtent
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	auto const
				(&)	[	t_vExtent
					]
			)
			noexcept
		->	::Meta::SSize
		{	return
				t_vExtent
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	auto const
				&	i_rObject
			)
			noexcept
		->	decltype
			(	i_rObject
				.	ssize
					()
			)
		{	return
				i_rObject
				.	ssize
					()
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	auto const
				&	i_rObject
			)
			noexcept
		->	decltype
			(	ssize
				(	i_rObject
				)
			)
		requires
			(	not
				requires
				{	i_rObject
					.	ssize
						()
					;
				}
			)
		{	return
				ssize
				(	i_rObject
				)
			;
		}
	}	constexpr inline
		SSize
	{};
}
