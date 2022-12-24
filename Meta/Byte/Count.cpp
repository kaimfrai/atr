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
