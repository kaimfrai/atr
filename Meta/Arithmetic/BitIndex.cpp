export module Meta.Arithmetic.BitIndex;

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
		BitIndex
	{
		static auto constexpr
			Width
		=	Bits
			(	::std::bit_width
				(	t_nWidth.get()
				-	1uz
				)
			+	1uz
			)
		;

		using
			IndexType
		=	SInt<Width>
		;

		using
			FieldType
		=	UInt<t_nWidth>
		;

		[[nodiscard]]
		static auto constexpr
		(	Sanitize
		)	(	IndexType
					i_nIndex
			)
			noexcept
		->	IndexType
		{	if	constexpr(t_nWidth.get() >> (Width - 1_bits))
				return i_nIndex;
			else
				return
				IndexType
				(	i_nIndex
				%	static_cast<IndexType>(t_nWidth.get())
				);
		}

		IndexType
			m_nValue
		;

		explicit(false) constexpr
		(	BitIndex
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	BitIndex
		)	(	BitIndex const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr
		(	BitIndex
		)	(	BitIndex
				&&
			)
			noexcept
		=	default;

		explicit(true) constexpr
		(	BitIndex
		)	(	IndexType
					i_nValue
			)
			noexcept
		:	m_nValue
			{	i_nValue
			}
		{
			(void)get();
		}

		auto constexpr
		(	operator =
		)	(	BitIndex const
				&
			)	&
			noexcept
		->	BitIndex&
		=	default;

		auto constexpr
		(	operator =
		)	(	BitIndex
				&&
			)	&
			noexcept
		->	BitIndex&
		=	default;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	IndexType
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
		(	operator BitIndex<t_nLarger>
		)	()	const
			noexcept
		{	return
			BitIndex<t_nLarger>
			{	get()
			};
		}

		friend auto constexpr
		(	operator ==
		)	(	BitIndex
			,	BitIndex
			)
			noexcept
		->	bool
		=	default;

		friend auto constexpr
		(	operator <=>
		)	(	BitIndex
			,	BitIndex
			)
			noexcept
		->	::std::strong_ordering
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	BitIndex
					i_nLeft
			,	BitIndex
					i_nRight
			)
			noexcept
		->	BitIndex
		{	return
			BitIndex
			{	Sanitize
				(	i_nLeft.get()
				+	i_nRight.get()
				)
			};
		}

		auto constexpr
		(	operator +=
		)	(	BitIndex
					i_nOffset
			)	&
			noexcept
		->	BitIndex&
		{
			*this = *this + i_nOffset;
			return *this;
		}

		auto constexpr
		(	operator ++
		)	()	&
			noexcept
		->	BitIndex&
		{	return *this +=  BitIndex{1};	}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	BitIndex
		{	return
			::std::exchange
			(	*this
			,	*this + BitIndex{1}
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	BitIndex
					i_nLeft
			,	BitIndex
					i_nRight
			)
			noexcept
		->	BitIndex
		{	return
			BitIndex
			{	Sanitize
				(	i_nLeft.get()
				-	i_nRight.get()
				)
			};
		}

		auto constexpr
		(	operator -=
		)	(	BitIndex
					i_nOffset
			)	&
			noexcept
		->	BitIndex&
		{
			*this = *this - i_nOffset;
			return *this;
		}

		auto constexpr
		(	operator --
		)	()	&
			noexcept
		->	BitIndex&
		{	return *this -=  BitIndex{1};	}

		[[nodiscard("Use predecrement when discarding the result")]]
		auto constexpr
		(	operator --
		)	(int)	&
			noexcept
		->	BitIndex
		{	return
			::std::exchange
			(	*this
			,	*this - BitIndex{1}
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator >>
		)	(	FieldType
					i_nField
			,	BitIndex
					i_nIndex
			)
			noexcept
		->	FieldType
		{	return
			FieldType
			(	i_nField
			>>	i_nIndex.get()
			);
		}

		friend auto constexpr
		(	operator >>=
		)	(	FieldType
				&	i_rField
			,	BitIndex
					i_nIndex
			)
			noexcept
		->	FieldType&
		{	return
				i_rField
			=	i_rField
			>>	i_nIndex
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator <<
		)	(	FieldType
					i_nField
			,	BitIndex
					i_nIndex
			)
			noexcept
		->	FieldType
		{	return
			FieldType
			(	i_nField
			<<	i_nIndex.get()
			);
		}

		friend auto constexpr
		(	operator <<=
		)	(	FieldType
				&	i_rField
			,	BitIndex
					i_nIndex
			)
			noexcept
		->	FieldType&
		{	return
				i_rField
			=	i_rField
			<<	i_nIndex
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	Test
		)	(	FieldType
					i_nField
			,	BitIndex
					i_nIndex
			)
			noexcept
		->	bool
		{
			FieldType constexpr nOne{1};

			return
			(	nOne
			==	(	(	i_nField
					>>	i_nIndex
					)
				bitand
					nOne
				)
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	Power
		)	(	BitIndex
					i_nIndex
			)
		->	FieldType
		{	return
				FieldType{1}
			<<	i_nIndex
			;
		}
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
	(	operator""_bdx
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
		Arithmetic::BitIndex
		<	Bits
			{	nParsed + 1ull
			}
		>(	nParsed
		);
	}
}
