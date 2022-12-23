export module Meta.Functional:Fold.RightShiftAssign;

export import :FoldTraits;
export import :Key;

export namespace
	Meta::Functional
{
	auto constexpr
	(	DoFold
	)	(	FoldToken<&Key::operator>>=, LeftFold>
		,	auto&&
			...	i_rpArgument
		)
		noexcept
		(	noexcept
			(	(	...
				>>=	static_cast<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				)
			)
		)
	->	decltype(auto)
		requires
			requires
			{	(	...
				>>=	static_cast<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				);
			}
	{	return
		(	...
		>>=	static_cast<decltype(i_rpArgument)>
			(	i_rpArgument
			)
		);
	}

	auto constexpr
	(	DoFold
	)	(	FoldToken<&Key::operator>>=, RightFold>
		,	auto&&
			...	i_rpArgument
		)
		noexcept
		(	noexcept
			(	(	static_cast<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				>>=	...
				)
			)
		)
	->	decltype(auto)
		requires
			requires
			{	(	static_cast<decltype(i_rpArgument)>
					(	i_rpArgument
					)
				>>=	...
				);
			}
	{	return
		(	static_cast<decltype(i_rpArgument)>
			(	i_rpArgument
			)
		>>=	...
		);
	}
}