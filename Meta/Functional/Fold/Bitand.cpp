export module Meta.Functional:Fold.Bitand;

export import :FoldTraits;
export import :Key;

export import Std;

export namespace
	Meta::Functional
{
	auto constexpr
	(	DoFold
	)	(	FoldToken<&Key::operator&, LeftFold>
		,	auto&&
			...	i_rpArgument
		)
		noexcept
		(	noexcept
			(	(	...
				&	std::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				)
			)
		)
	->	decltype(auto)
		requires
			requires
			{	(	...
				&	std::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				);
			}
	{	return
		(	...
		&	std::forward<decltype(i_rpArgument)>
			(	i_rpArgument
			)
		);
	}

	auto constexpr
	(	DoFold
	)	(	FoldToken<&Key::operator&, RightFold>
		,	auto&&
			...	i_rpArgument
		)
		noexcept
		(	noexcept
			(	(	std::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				&	...
				)
			)
		)
	->	decltype(auto)
		requires
			requires
			{	(	std::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				&	...
				);
			}
	{	return
		(	std::forward<decltype(i_rpArgument)>
			(	i_rpArgument
			)
		&	...
		);
	}
}
