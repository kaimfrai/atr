export module Meta.Bit.Count;

import Meta.Math.Divide;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	template
		<	USize
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
		(	operator CountType
		)	()	const
			noexcept
		{	return get();	}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(false) constexpr
		(	operator Count<t_nOtherWidth>
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
}

export namespace
	Meta
{
	using
		Bits
	=	Bit::Count
		<	1uz
		>
	;
}

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	Bits
				i_vLeft
		,	Bits
				i_vRight
		)
		noexcept
	->	bool
	{	return
			i_vLeft.get()
		==	i_vRight.get()
		;
	}

	[[nodiscard]]
	auto constexpr
	(	operator <=>
	)	(	Bits
				i_vLeft
		,	Bits
				i_vRight
		)
		noexcept
	->	::std::strong_ordering
	{	return
			i_vLeft.get()
		<=>	i_vRight.get()
		;
	}
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
	->	Bits
	{	return
		{	static_cast<Bits::CountType>
			(	i_nBits
			)
		};
	}
}
