export module Meta.Bit.Index;

import Meta.Arithmetic.Literals;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.IntegerFor;
import Meta.Arithmetic.Sanitize;
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
			HighestValue
		=	(	t_nWidth
			-	1_bit
			)
		;

		using
			IndexType
		=	SInt_For
			<	HighestValue
			.	get()
			>
		;

		IndexType
			m_nValue
		;

		static auto constexpr
			AssertSanitized
		=	&
			Arithmetic::AssertSanitizedSigned
			<	HighestValue
			.	get()
			>
		;

		explicit(false) constexpr
		(	Index
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
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

		explicit(true) constexpr
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
		auto constexpr
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
		explicit(t_nOtherWidth <= t_nWidth) constexpr
		(	operator Index<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			Index
			<	t_nOtherWidth
			>{	get()
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
