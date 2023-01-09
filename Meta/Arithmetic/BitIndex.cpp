export module Meta.Arithmetic.BitIndex;

import Meta.Arithmetic.Literals;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Math.Divide;

import Std;

using namespace Meta::Literals;

export namespace
	Meta::Arithmetic
{
	template
		<	BitSize
				t_nWidth
		>
	requires
		(	t_nWidth
		>	0_bit
		)
	struct
		BitIndex
	{
		static auto constexpr
			FieldWidth
		=	t_nWidth
		;

		static auto constexpr
			HighestValue
		=	(	FieldWidth
			-	1_bit
			)
		;
		static auto constexpr
			LowestValue
		=	(	-
				HighestValue
			-	1_bit
			)
		;

		static BitSize constexpr
			IndexWidth
		{	::std::bit_width
			(	static_cast
				<	::std::make_unsigned_t
					<	BitSize::SizeType
					>
				>(	HighestValue.get()
				)
			)
		};

		using
			IndexType
		=	SInt
			<	IndexWidth
			+	1_bit
			>
		;

		using
			FieldType
		=	UInt
			<	FieldWidth
			>
		;

		[[nodiscard]]
		static auto constexpr
		(	Sanitize
		)	(	SIntMax
					i_nIndex
			)
			noexcept
		->	IndexType
		{	if	constexpr
				(	FieldWidth.get()
				>>	IndexWidth.get()
				)
			{	return
				static_cast<IndexType>
				(	i_nIndex
				);
			}
			else
			{	return
				static_cast<IndexType>
				(	i_nIndex
				%	FieldWidth.get()
				);
			}
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

		explicit(true) constexpr
		(	BitIndex
		)	(	BitSize
					i_nBitSize
			)
			noexcept
		:	BitIndex
			{	Sanitize
				(	i_nBitSize
				.	get()
				)
			}
		{}

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
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(t_nOtherWidth <= t_nWidth) constexpr
		(	operator BitIndex<t_nOtherWidth>
		)	()	const
			noexcept
		{
			auto const
				nValue
			=	get()
			;

			using
				tOtherIndex
			=	BitIndex
				<	t_nOtherWidth
				>
			;
			if	(	nValue < tOtherIndex::LowestValue.get()
				or	nValue > tOtherIndex::HighestValue.get()
				)
			{	::std::unreachable();
			}

			return
			tOtherIndex
			{	static_cast<tOtherIndex::IndexType>
				(	nValue
				)
			};
		}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator BitSize
		)	()	const
			noexcept
		{	return
			BitSize
			{	get()
			};
		}


		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	BitIndex
			,	BitIndex
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
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
		)	(	BitSize
					i_nLeft
			,	BitIndex
					i_nRight
			)
			noexcept
		->	BitSize
		{	i_nLeft.get() += i_nRight.get();
			return i_nLeft;
		}

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
				(	static_cast<IndexType>
					(	i_nLeft.get()
					+	i_nRight.get()
					)
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
				(	static_cast<IndexType>
					(	i_nLeft.get()
					-	i_nRight.get()
					)
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
			static_cast<FieldType>
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

		static auto constexpr
			ShiftedWidth
		=	FieldWidth
		+	HighestValue
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator <<
		)	(	FieldType
					i_nField
			,	BitIndex
					i_nIndex
			)
			noexcept
		requires
			(	ShiftedWidth
			<=	Memory::SizeOf<UIntMax>
			)
		{	return
			static_cast<UInt<ShiftedWidth>>
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
			=	static_cast<FieldType>
				(	i_rField
				<<	i_nIndex.get()
				)
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
		{
			FieldType
				nPower
			{	1
			};
			return
				nPower
			<<=	i_nIndex
			;
		}
	};
}

export namespace
	Meta::Memory
{
	template
		<	typename
				t_tSize
		>
	struct
		[[nodiscard]]
		FloorCastResult
	{
		t_tSize
			Quotient
		;
		using
			RemainderType
		=	Arithmetic::BitIndex
			<	t_tSize{1}
			>
		;
		RemainderType
			Remainder
		;

		explicit(true) constexpr
		(	FloorCastResult
		)	(	BitSize
					i_nBitSize
			)
		:	Quotient
			{	Math::Divide
				(	i_nBitSize.get()
				,	t_tSize::Width
				)
			.	Floor
				()
			}
		,	Remainder
			{	i_nBitSize
			-	Quotient
			}
		{}
	};

	///	ADL-enabled
	template
		<	typename
				t_tSize
		>
	[[nodiscard]]
	auto constexpr
	(	FloorCast
	)	(	BitSize
				i_nBitSize
		)
		noexcept
	->	FloorCastResult<t_tSize>
	{	return
		FloorCastResult<t_tSize>
		{	i_nBitSize
		};
	}
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
		<	BitSize
			{	static_cast<BitSize::SizeType>
				(	nParsed
				)
			}
		+	1_bit
		>{	nParsed
		};
	}
}
