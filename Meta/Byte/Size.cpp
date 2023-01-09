export module Meta.Byte.Size;

export import Meta.Bit.Size;
import Meta.Size;

import Std;

export namespace
	Meta::Byte
{
	template
		<	USize
				t_nWidth
		>
	using
		Size
	=	::Meta::Bit::Size
		<	t_nWidth
		*	::std::numeric_limits
			<	std::underlying_type_t
				<	std::byte
				>
			>
		::	digits
		>
	;

	template
		<	typename
				t_tObject
		>
	using
		Width
	=	Size
		<	sizeof(t_tObject)
		>
	;
}

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	t_tObject
			*	i_aObject
		,	Byte::Width<t_tObject>
				i_nOffset
		)
		noexcept
	->	t_tObject*
	{	return
		::std::next
		(	i_aObject
		,	i_nOffset.get()
		);
	}

	template
		<	typename
				t_tObject
		>
	auto constexpr
	(	operator +=
	)	(	t_tObject
			*&	i_aObject
		,	Byte::Width<t_tObject>
				i_nOffset
		)
		noexcept
	->	t_tObject*&
	{	return
			i_aObject
		=	i_aObject
		+	i_nOffset
		;
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr
	(	operator -
	)	(	t_tObject
			*	i_aObject
		,	Byte::Width<t_tObject>
				i_nOffset
		)
		noexcept
	->	t_tObject*
	{	return
		::std::prev
		(	i_aObject
		,	i_nOffset.get()
		);
	}

	template
		<	typename
				t_tObject
		>
	auto constexpr
	(	operator -=
	)	(	t_tObject
			*&	i_aObject
		,	Byte::Width<t_tObject>
				i_nOffset
		)
		noexcept
	->	t_tObject*&
	{	return
			i_aObject
		=	i_aObject
		-	i_nOffset
		;
	}
}

export namespace
	Meta
{
	using
		ByteSize
	=	Byte::Size
		<	1uz
		>
	;
}

export namespace
	Meta::Byte
{
	template
		<	typename
				t_tObject
		>
	ByteSize constexpr inline
		SizeOf
	{	sizeof(t_tObject)
	};
}

export namespace
	Meta::inline Literals
{
	[[nodiscard]]
	auto constexpr
	(	operator""_byte
	)	(	unsigned long long
				i_nBits
		)
	->	ByteSize
	{	return
		{	static_cast<ByteSize::SizeType>
			(	i_nBits
			)
		};
	}
}
