export module Meta.Byte.Count;

export import Meta.Bit.Count;
import Meta.Bit.ByteSize;
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
		Count
	=	::Meta::Bit::Count
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
	=	Count
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
			i_aObject
		+	i_nOffset.get()
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
			i_aObject
		-	i_nOffset.get()
		;
	}
}

export namespace
	Meta
{
	using
		Bytes
	=	Byte::Count
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
	Bytes constexpr inline
		SizeOf
	{	sizeof(t_tObject)
	};
}

export namespace
	Meta::inline Literals
{
	[[nodiscard]]
	auto constexpr
	(	operator""_bytes
	)	(	unsigned long long
				i_nBits
		)
	->	Bytes
	{	return
		{	static_cast<USize>
			(	i_nBits
			)
		};
	}
}
