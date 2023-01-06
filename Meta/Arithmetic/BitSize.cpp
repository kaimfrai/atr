export module Meta.Arithmetic.BitSize;

import Meta.Arithmetic.BitIndex;
import Meta.Arithmetic.Literals;
import Meta.Arithmetic.Integer;
import Meta.Bit.Count;

import Std;

using namespace Meta::Literals;

export namespace
	Meta::Arithmetic
{
	template
		<	Bits
				t_nWidth
		>
	requires
		(	t_nWidth
		>	0_bits
		)
	struct
		BitSize
	{
		static auto constexpr
			Width
		=	Bits
			{	::std::bit_width
				(	t_nWidth.get()
				)
			}
		;

		using
			SizeType
		=	UInt<Width>
		;

		[[nodiscard]]
		static auto constexpr
		(	Sanitize
		)	(	SizeType
					i_nIndex
			)
			noexcept
		->	SizeType
		{	return ::std::min<SizeType>(i_nIndex, t_nWidth.get());	}

		SizeType
			m_nValue
		;

		explicit(false) constexpr
		(	BitSize
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	BitSize
		)	(	BitSize const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr
		(	BitSize
		)	(	BitSize
				&&
			)
			noexcept
		=	default;

		explicit(true) constexpr
		(	BitSize
		)	(	SizeType
					i_nValue
			)
			noexcept
		:	m_nValue
			{	i_nValue
			}
		{
			(void)get();
		}

		template
			<	Bits
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(true) constexpr
		(	operator BitIndex<t_nOtherWidth>
		)	()	const
			noexcept
		{
			auto const nValue = get();
			if	(t_nOtherWidth.get() <= nValue)
				::std::unreachable();
			return
			BitIndex<t_nOtherWidth>
			{	static_cast<typename BitIndex<t_nOtherWidth>::IndexType>
				(	nValue
				)
			};
		}

		auto constexpr
		(	operator =
		)	(	BitSize const
				&
			)	&
			noexcept
		->	BitSize&
		=	default;

		auto constexpr
		(	operator =
		)	(	BitSize
				&&
			)	&
			noexcept
		->	BitSize&
		=	default;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	SizeType
		{
			if	(m_nValue != Sanitize(m_nValue))
				::std::unreachable();
			return m_nValue;
		}

		template
			<	Bits
					t_nLarger
			>
		requires
			(	t_nLarger
			>	t_nWidth
			)
		explicit(false) constexpr
		(	operator BitSize<t_nLarger>
		)	()	const
			noexcept
		{	return
			BitSize<t_nLarger>
			{	get()
			};
		}

		friend auto constexpr
		(	operator ==
		)	(	BitSize
			,	BitSize
			)
			noexcept
		->	bool
		=	default;

		friend auto constexpr
		(	operator <=>
		)	(	BitSize
			,	BitSize
			)
			noexcept
		->	::std::strong_ordering
		=	default;
	};
}


export namespace
	Meta::inline Literals
{
	template
		<	char
			...	t_npNumeric
		>
	[[nodiscard]]
	auto constexpr
	(	operator""_bsz
	)	()
		noexcept
	{
		auto constexpr
			nParsed
		=	Arithmetic::EvaluateNumericLiteral
			<	t_npNumeric
				...
			>()
		;

		return
		Arithmetic::BitSize
		<	Bits
			{	nParsed
			}
		>(	nParsed
		);
	}
}
