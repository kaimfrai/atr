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
				t_vWidth
		>
	requires
		(	t_vWidth
		>	0_bit
		)
	struct
		Index
	{
		using
			MemorySizeType
		=	Memory::Size
			<	t_vWidth
			.	get()
			>
		;

		auto static constexpr inline
			MaximumShift
		=	t_vWidth
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
			m_vValue
		;

		explicit(false) constexpr inline
		(	Index
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Index
		)	(	SIntMax
					i_vValue
			)
			noexcept
		:	m_vValue
			{	AssertSanitized
				(	i_vValue
				)
			}
		{}

		explicit(true) constexpr inline
		(	Index
		)	(	BitSize
					i_vBitSize
			)
			noexcept
		:	Index
			{	i_vBitSize
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
			(	m_vValue
			);
		}

		template
			<	auto
					t_vOtherWidth
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	ChangeWidth
		)	(	Index
					i_vIndex
			)
			noexcept
		->	Index<t_vOtherWidth>
		{	return
			Index
			<	t_vOtherWidth
			>{	i_vIndex
			.	get()
			};
		}

		template
			<	auto
					t_vOtherWidth
			>
		[[nodiscard]]
		explicit(t_vOtherWidth <= t_vWidth) constexpr inline
		(	operator
			Index<t_vOtherWidth>
		)	()	const
			noexcept
		{	return
			ChangeWidth
			<	t_vOtherWidth
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
			...	t_vpNumeric
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator""_bdx
	)	()
		noexcept
	{
		auto static constexpr
			vParsed
		=	Arithmetic::EvaluateNumericLiteral
			<	t_vpNumeric
				...
			>()
		;

		return
		Bit::Index
		<	BitSize
			{	static_cast<BitSize::SizeType>
				(	vParsed
				)
			}
		+	1_bit
		>{	vParsed
		};
	}
}
