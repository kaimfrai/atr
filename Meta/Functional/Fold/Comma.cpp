export module Meta.Functional.Fold.Comma;

import Meta.Functional.FoldDirection;
import Meta.Functional.FoldTraits;
import Meta.Functional.Key;

// Forward cannot be nodiscard due to comma discarding
// It is assumed that all template arguments are references
// This holds true as long as it is passed with decltype
template
	<	typename
			t_tArgument
	>
auto constexpr inline
(	forward
)	(	t_tArgument
		&	i_rArgument
	)
	noexcept
->	t_tArgument
{	return static_cast<t_tArgument>(i_rArgument);	}

export namespace
	Meta::Functional
{
	auto constexpr inline
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

	auto constexpr inline
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
