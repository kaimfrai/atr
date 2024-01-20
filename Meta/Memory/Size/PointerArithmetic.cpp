export module Meta.Memory.Size.PointerArithmetic;

import Meta.Memory.Size;

import Std;

export namespace
	Meta::Memory
{
	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	t_tObject
			*	i_aObject
		,	ByteWidth<t_tObject>
				i_vOffset
		)
		noexcept
	->	t_tObject*
	{	return
		::std::next
		(	i_aObject
		,	i_vOffset.get()
		);
	}

	template
		<	typename
				t_tObject
		>
	auto constexpr inline
	(	operator+=
	)	(	t_tObject
			*&	i_aObject
		,	ByteWidth<t_tObject>
				i_vOffset
		)
		noexcept
	->	t_tObject*&
	{	return
			i_aObject
		=	i_aObject
		+	i_vOffset
		;
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator-
	)	(	t_tObject
			*	i_aObject
		,	ByteWidth<t_tObject>
				i_vOffset
		)
		noexcept
	->	t_tObject*
	{	return
		::std::prev
		(	i_aObject
		,	i_vOffset.get()
		);
	}

	template
		<	typename
				t_tObject
		>
	auto constexpr inline
	(	operator-=
	)	(	t_tObject
			*&	i_aObject
		,	ByteWidth<t_tObject>
				i_vOffset
		)
		noexcept
	->	t_tObject*&
	{	return
			i_aObject
		=	i_aObject
		-	i_vOffset
		;
	}
}
