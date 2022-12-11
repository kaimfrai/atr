export module Meta.Functional:Fold.Comma;

export import :FoldTraits;
export import :Key;

export import Std;

// Forward cannot be nodiscard due to comma discarding
template
	<	typename
			t_tArgument
	>
auto constexpr
(	forward
)	(	std::remove_reference_t<t_tArgument>
		&	i_rArgument
	)
	noexcept
->	t_tArgument&&
{	return static_cast<t_tArgument&&>(i_rArgument);	}

template
	<	typename
			t_tArgument
	>
auto constexpr
(	forward
)	(	std::remove_reference_t<t_tArgument>
		&&	i_rArgument
	)
	noexcept
->	t_tArgument&&
{	return static_cast<t_tArgument&&>(i_rArgument);	}

export namespace
	Meta::Functional
{
	auto constexpr
	(	DoFold
	)	(	FoldToken<&Key::operator,, LeftFold>
		,	auto&&
			...	i_rpArgument
		)
		noexcept
		(	noexcept
			(	(	...
				,	::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				)
			)
		)
	->	decltype(auto)
		requires
			requires
			{	(	...
				,	::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				);
			}
	{	return
		(	...
		,	::forward<decltype(i_rpArgument)>
			(	i_rpArgument
			)
		);
	}

	auto constexpr
	(	DoFold
	)	(	FoldToken<&Key::operator,, RightFold>
		,	auto&&
			...	i_rpArgument
		)
		noexcept
		(	noexcept
			(	(	::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				,	...
				)
			)
		)
	->	decltype(auto)
		requires
			requires
			{	(	::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				,	...
				);
			}
	{	return
		(	::forward<decltype(i_rpArgument)>
			(	i_rpArgument
			)
		,	...
		);
	}
}
