export module Meta.Memory.Count;

import Meta.Math.Divide;

import Std;

export namespace
	Meta::Memory
{
	template
		<	decltype(0uz)
				t_vWidth
		>
	struct
		Count
	{
		using
			CountType
		=	decltype(auto(t_vWidth))
		;

		CountType
			m_vValue
		;

		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	&
			noexcept
		->	CountType&
		{	return m_vValue;	}

		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	const&
			noexcept
		->	CountType const&
		{	return m_vValue;	}

		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	&&
			noexcept
		->	CountType
		{	return m_vValue;	}

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			CountType
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
			Count<t_vOtherWidth>
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
		<	typename
				t_tObject
		>
	using
		ByteCount
	=	Count
		<	::std::numeric_limits
			<	std::underlying_type_t
				<	std::byte
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
		Bits
	=	Memory::Count
		<	1uz
		>
	;

	using
		Bytes
	=	Memory::ByteCount
		<	::std::byte
		>
	;
}

export namespace
	Meta::inline Literals
{
	[[nodiscard]]
	auto constexpr inline
	(	operator""_bits
	)	(	unsigned long long
				i_vBits
		)
		noexcept
	->	Bits
	{	return
		{	static_cast<Bits::CountType>
			(	i_vBits
			)
		};
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator""_bytes
	)	(	unsigned long long
				i_vBytes
		)
		noexcept
	->	Bytes
	{	return
		{	static_cast<Bytes::CountType>
			(	i_vBytes
			)
		};
	}
}
