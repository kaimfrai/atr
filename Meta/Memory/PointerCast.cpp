export module Meta.Memory.PointerCast;

import Std;

export namespace
	Meta::Memory
{
	template
		<	typename
				t_tTo
		,	typename
				t_tFrom
		>
	[[nodiscard]]
	auto constexpr
	(	PointerCast
	)	(	t_tFrom const
			*	i_aObject
		)
		noexcept
	->	t_tTo const*
	{	if	constexpr
			(	::std::is_convertible_v
				<	t_tFrom const*
				,	t_tTo const*
				>
			)
		{	return
			static_cast<t_tTo const*>
			(	i_aObject
			);
		}
		else
		{	return
			static_cast<t_tTo const*>
			(	static_cast<void const*>
				(	i_aObject
				)
			);
		}
	}

	template
		<	typename
				t_tTo
		,	typename
				t_tFrom
		>
	[[nodiscard]]
	auto constexpr
	(	PointerCast
	)	(	t_tFrom
			*	i_aObject
		)
		noexcept
	->	t_tTo*
	{	if	constexpr
			(	::std::is_convertible_v
				<	t_tFrom*
				,	t_tTo*
				>
			)
		{	return
			static_cast<t_tTo*>
			(	i_aObject
			);
		}
		else
		{	return
			static_cast<t_tTo*>
			(	static_cast<void*>
				(	i_aObject
				)
			);
		}
	}
}
