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
	)	(	t_tFrom
			*	i_aObject
		)
		noexcept
	->	::std::conditional_t
		<	::std::is_const_v
			<	t_tFrom
			>
		,	t_tTo const*
		,	t_tTo*
		>
	{	using
			tTo
		=	::std::conditional_t
			<	::std::is_const_v
				<	t_tFrom
				>
			,	t_tTo const
			,	t_tTo
			>
		;
		if	constexpr
			(	::std::is_convertible_v
				<	t_tFrom*
				,	tTo*
				>
			or	::std::is_base_of_v
				<	t_tFrom
				,	tTo
				>
			)
		{	return
			static_cast<tTo*>
			(	i_aObject
			);
		}
		else
		{	return
			::std::bit_cast<tTo*>
			(	i_aObject
			);
		}
	}
}
