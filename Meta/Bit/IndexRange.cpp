export module Meta.Bit.IndexRange;

import Meta.Bit.Index;
import Meta.Arithmetic.Literals;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.Sanitize;
import Meta.Bit.IndexIterator;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_nWidth
		>
	struct
		IndexRange
	{
		static auto constexpr
			FieldWidth
		=	t_nWidth
		;

		using
			iterator
		=	IndexIterator
			<	FieldWidth
			>
		;

		using
			sentinel
		=	IndexSentinel
			<	FieldWidth
			>
		;

		static auto constexpr
			HighestValue
		=	iterator
		::	HighestValue
		;

		using
			CountType
		=	typename
				iterator
			::	CountType
		;

		static auto constexpr
			AssertSanitized
		=	&
			Arithmetic::AssertSanitizedUnsigned
			<	HighestValue.get()
			>
		;

		CountType
			m_nValue
		;

		explicit(false) constexpr
		(	IndexRange
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
		(	IndexRange
		)	(	UIntMax
					i_nValue
			)
			noexcept
		:	m_nValue
			{	AssertSanitized
				(	i_nValue
				)
			}
		{}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(t_nOtherWidth <= t_nWidth) constexpr
		(	operator IndexRange<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			IndexRange
			<	t_nOtherWidth
			>{	get()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	CountType
		{	return
			AssertSanitized
			(	m_nValue
			);
		}
	};
}
