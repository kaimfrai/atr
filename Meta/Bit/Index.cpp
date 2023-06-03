export module Meta.Bit.Index;

import Meta.Arithmetic.Sanitize;
import Meta.Arithmetic.Literals;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Arithmetic;

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
		using
			MemorySizeType
		=	Memory::Size
			<	t_nWidth
			.	get()
			>
		;

		auto static constexpr inline
			MaximumShift
		=	t_nWidth
		-	1_bit
		;

		auto static constexpr inline
			AssertSanitized
		=	&
			Arithmetic::AssertSanitizedSigned
			<	MaximumShift
			.	get()
			>
		;

		using
			IndexType
		=	decltype
			(	AssertSanitized
				(	0
				)
			)
		;

		IndexType
			m_nValue
		;

		explicit(false) constexpr inline
		(	Index
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Index
		)	(	SIntMax
					i_nValue
			)
			noexcept
		:	m_nValue
			{	AssertSanitized
				(	i_nValue
				)
			}
		{}

		explicit(true) constexpr inline
		(	Index
		)	(	BitSize
					i_nBitSize
			)
			noexcept
		:	Index
			{	i_nBitSize
			.	get()
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	const
			noexcept
		->	IndexType
		{	return
			AssertSanitized
			(	m_nValue
			);
		}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	ChangeWidth
		)	(	Index
					i_nIndex
			)
			noexcept
		->	Index<t_nOtherWidth>
		{	return
			Index
			<	t_nOtherWidth
			>{	i_nIndex
			.	get()
			};
		}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(t_nOtherWidth <= t_nWidth) constexpr inline
		(	operator
			Index<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			ChangeWidth
			<	t_nOtherWidth
			>(	*this
			);
		}

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			BitSize
		)	()	const
			noexcept
		{	return
			BitSize
			{	get()
			};
		}
	};

	template
		<	typename
				t_tObject
		>
	using
		Index_For
	=	Index
		<	Memory::SizeOf
			<	t_tObject
			>
		>
	;
}

export namespace
	Meta
{
	using
		ByteIndex
	=	Bit::Index
		<	1_byte
		>
	;
}

export namespace
	Meta::inline Literals
{
	template
		<	char
			...	t_npNumeric
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator""_bdx
	)	()
		noexcept
	{
		auto static constexpr
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
