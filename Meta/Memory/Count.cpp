export module Meta.Memory.Count;

import Meta.Math.Divide;

import Std;

export namespace
	Meta::Memory
{
	template
		<	decltype(0uz)
				t_nWidth
		>
	struct
		Count
	{
		using
			CountType
		=	decltype(auto(t_nWidth))
		;

		CountType
			m_nValue
		;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	&
			noexcept
		->	CountType&
		{	return m_nValue;	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	CountType const&
		{	return m_nValue;	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	CountType
		{	return m_nValue;	}

		[[nodiscard]]
		explicit(true) constexpr
		(	operator
			CountType
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
			Count<t_nOtherWidth>
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
	auto constexpr
	(	operator""_bits
	)	(	unsigned long long
				i_nBits
		)
		noexcept
	->	Bits
	{	return
		{	static_cast<Bits::CountType>
			(	i_nBits
			)
		};
	}

	[[nodiscard]]
	auto constexpr
	(	operator""_bytes
	)	(	unsigned long long
				i_nBytes
		)
		noexcept
	->	Bytes
	{	return
		{	static_cast<Bytes::CountType>
			(	i_nBytes
			)
		};
	}
}
