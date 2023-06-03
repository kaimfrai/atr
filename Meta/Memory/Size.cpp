export module Meta.Memory.Size;

import Meta.Math.Divide;

import Std;

export namespace
	Meta::Memory
{
	template
		<	decltype(0z)
				t_nWidth
		>
	requires
		(	t_nWidth
		>	0z
		)
	struct
		Size
	{
		auto static constexpr inline
			Width
		=	t_nWidth
		;

		using
			SizeType
		=	decltype(auto(t_nWidth))
		;

		SizeType
			Value
		;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	&
			noexcept
		->	SizeType&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	SizeType const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	SizeType
		{	return Value;	}

		[[nodiscard]]
		explicit(true) constexpr
		(	operator
			SizeType
		)	()	const
			noexcept
		{	return get();	}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			Size<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			{	Math::Divide
				(	get()
				*	t_nWidth
				,	t_nOtherWidth
				)
			.	Ceil()
			};
		}
	};

	template
		<	auto
				t_nWidth
		>
	(	Size
	)	(	Size<t_nWidth>
		)
	->	Size
		<	t_nWidth
		>
	;

	template
		<	typename
				t_tObject
		>
	using
		ByteWidth
	=	Size
		<	::std::numeric_limits
			<	::std::underlying_type_t
				<	::std::byte
				>
			>
		::	digits
		*	sizeof(t_tObject)
		>
	;
}

export namespace
	Meta
{
	using
		BitSize
	=	Memory::Size
		<	1uz
		>
	;

	using
		ByteSize
	=	Memory::ByteWidth
		<	::std::byte
		>
	;
}

export namespace
	Meta::Memory
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
	(	operator""_bit
	)	(	unsigned long long
				i_nBits
		)
		noexcept
	->	BitSize
	{	return
		{	static_cast<BitSize::SizeType>
			(	i_nBits
			)
		};
	}

	[[nodiscard]]
	auto constexpr
	(	operator""_byte
	)	(	unsigned long long
				i_nBytes
		)
		noexcept
	->	ByteSize
	{	return
		{	static_cast<ByteSize::SizeType>
			(	i_nBytes
			)
		};
	}
}
