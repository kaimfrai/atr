export module Meta.Functional.Fold.Equals;

import Meta.Functional.FoldDirection;
import Meta.Functional.FoldTraits;
import Meta.Functional.Key;

export namespace
	Meta::Functional
{
	auto constexpr
	(	DoFold
	)	(	FoldToken<&Key::operator==, LeftFold>
		,	auto&&
			...	i_rpArgument
		)
		noexcept
		(	noexcept
			(	(	...
				==	static_cast<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				)
			)
		)
	->	decltype(auto)
		requires
			requires
			{	(	...
				==	static_cast<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				);
			}
	{	return
		(	...
		==	static_cast<decltype(i_rpArgument)>
			(	i_rpArgument
			)
		);
	}

	auto constexpr
	(	DoFold
	)	(	FoldToken<&Key::operator==, RightFold>
		,	auto&&
			...	i_rpArgument
		)
		noexcept
		(	noexcept
			(	(	static_cast<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				==	...
				)
			)
		)
	->	decltype(auto)
		requires
			requires
			{	(	static_cast<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				==	...
				);
			}
	{	return
		(	static_cast<decltype(i_rpArgument)>
			(	i_rpArgument
			)
		==	...
		);
	}
}
