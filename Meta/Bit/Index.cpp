export module Meta.Bit.Index;

import Meta.Arithmetic.Literals;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Math.Divide;

import Std;

using namespace Meta::Literals;

export namespace
	Meta::Bit
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
		Index
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
		(	Index
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	Index
		)	(	Index const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr
		(	Index
		)	(	Index
				&&
			)
			noexcept
		=	default;

		explicit(true) constexpr
		(	Index
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
		(	Index
		)	(	BitSize
					i_nBitSize
			)
			noexcept
		:	Index
			{	Sanitize
				(	i_nBitSize
				.	get()
				)
			}
		{}

		auto constexpr
		(	operator =
		)	(	Index const
				&
			)	&
			noexcept
		->	Index&
		=	default;

		auto constexpr
		(	operator =
		)	(	Index
				&&
			)	&
			noexcept
		->	Index&
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
		(	operator Index<t_nOtherWidth>
		)	()	const
			noexcept
		{
			auto const
				nValue
			=	get()
			;

			using
				tOtherIndex
			=	Index
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
		)	(	Index
			,	Index
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	Index
			,	Index
			)
			noexcept
		->	::std::strong_ordering
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	BitSize
					i_nLeft
			,	Index
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
		)	(	Index
					i_nLeft
			,	Index
					i_nRight
			)
			noexcept
		->	Index
		{	return
			Index
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
		)	(	Index
					i_nOffset
			)	&
			noexcept
		->	Index&
		{
			*this = *this + i_nOffset;
			return *this;
		}

		auto constexpr
		(	operator ++
		)	()	&
			noexcept
		->	Index&
		{	return *this +=  Index{1};	}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	Index
		{	return
			::std::exchange
			(	*this
			,	*this + Index{1}
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	Index
					i_nLeft
			,	Index
					i_nRight
			)
			noexcept
		->	Index
		{	return
			Index
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
		)	(	Index
					i_nOffset
			)	&
			noexcept
		->	Index&
		{
			*this = *this - i_nOffset;
			return *this;
		}

		auto constexpr
		(	operator --
		)	()	&
			noexcept
		->	Index&
		{	return *this -=  Index{1};	}

		[[nodiscard("Use predecrement when discarding the result")]]
		auto constexpr
		(	operator --
		)	(int)	&
			noexcept
		->	Index
		{	return
			::std::exchange
			(	*this
			,	*this - Index{1}
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator >>
		)	(	FieldType
					i_nField
			,	Index
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
			,	Index
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
			,	Index
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
			,	Index
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
			,	Index
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
		)	(	Index
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
		=	Bit::Index
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
		Bit::Index
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
