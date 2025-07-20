export module Meta.Memory.Size;

import Meta.Math.Divide;

import std;

export namespace
	Meta::Memory
{
	template
		<	decltype(0z)
				t_vWidth
		>
	requires
		(	t_vWidth
		>	0z
		)
	struct
		Size
	{
		auto static constexpr inline
			Width
		=	t_vWidth
		;

		using
			SizeType
		=	decltype(auto(t_vWidth))
		;

		SizeType
			Value
		;

		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	&
			noexcept
		->	SizeType&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	const&
			noexcept
		->	SizeType const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	&&
			noexcept
		->	SizeType
		{	return Value;	}

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			SizeType
		)	()	const
			noexcept
		{	return get();	}

		template
			<	auto
					t_vOtherWidth
			>
		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			Size<t_vOtherWidth>
		)	()	const
			noexcept
		{	return
			{	Math::Divide
				(	get()
				*	t_vWidth
				,	t_vOtherWidth
				)
			.	Ceil()
			};
		}
	};

	template
		<	auto
				t_vWidth
		>
	(	Size
	)	(	Size<t_vWidth>
		)
	->	Size
		<	t_vWidth
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
	auto constexpr inline
	(	operator""_bit
	)	(	unsigned long long
				i_vBits
		)
		noexcept
	->	BitSize
	{	return
		{	static_cast<BitSize::SizeType>
			(	i_vBits
			)
		};
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator""_byte
	)	(	unsigned long long
				i_vBytes
		)
		noexcept
	->	ByteSize
	{	return
		{	static_cast<ByteSize::SizeType>
			(	i_vBytes
			)
		};
	}
}
