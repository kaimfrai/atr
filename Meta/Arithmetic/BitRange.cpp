export module Meta.Arithmetic.BitRange;

import Meta.Arithmetic.BitIndex;
import Meta.Arithmetic.Literals;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.BitIndexIterator;
import Meta.Memory.Size;
import Meta.Size;

import Std;

using namespace Meta::Literals;

export namespace
	Meta::Arithmetic
{
	template
		<	BitSize
				t_nWidth
		>
	struct
		BitRange
	{
		static auto constexpr
			FieldWidth
		=	t_nWidth
		;

		using
			iterator
		=	BitIndexIterator
			<	FieldWidth
			>
		;

		using
			sentinel
		=	BitIndexSentinel
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

		[[nodiscard]]
		static auto constexpr
		(	Sanitize
		)	(	UIntMax
					i_nRange
			)
			noexcept
		->	CountType
		{	return
			::std::min
			(	static_cast<CountType>
				(	i_nRange
				)
			,	static_cast<CountType>
				(	HighestValue.get()
				)
			);
		}

		CountType
			m_nValue
		;

		explicit(false) constexpr
		(	BitRange
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	BitRange
		)	(	BitRange const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr
		(	BitRange
		)	(	BitRange
				&&
			)
			noexcept
		=	default;

		explicit(true) constexpr
		(	BitRange
		)	(	UIntMax
					i_nValue
			)
			noexcept
		:	m_nValue
			{	Sanitize
				(	i_nValue
				)
			}
		{
			if	(	m_nValue
				!=	i_nValue
				)
			{	::std::unreachable
				();
			}
		}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(t_nOtherWidth < t_nWidth) constexpr
		(	operator BitRange<t_nOtherWidth>
		)	()	const
			noexcept
		{
			auto const
				nValue
			=	get()
			;
			using
				tOtherRange
			=	BitRange
				<	t_nOtherWidth
				>
			;

			if	(	nValue
				>	tOtherRange::HighestValue
				)
			{	::std::unreachable();
			}

			return
			tOtherRange
			{	static_cast<tOtherRange::CountType>
				(	nValue
				)
			};
		}

		auto constexpr
		(	operator =
		)	(	BitRange const
				&
			)	&
			noexcept
		->	BitRange&
		=	default;

		auto constexpr
		(	operator =
		)	(	BitRange
				&&
			)	&
			noexcept
		->	BitRange&
		=	default;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	CountType
		{
			if	(m_nValue != Sanitize(m_nValue))
				::std::unreachable();
			return m_nValue;
		}

		[[nodiscard]]
		auto constexpr
		(	front
		)	()	const
			noexcept
		->	BitIndex<t_nWidth>
		{
			auto const
				nValue
			=	get()
			;
			if	(nValue <= CountType{})
				::std::unreachable();

			using
				tIndexType
			=	BitIndex
				<	t_nWidth
				>
			;
			return
			tIndexType
			{	static_cast<tIndexType::IndexType>
				(	nValue
				-	nValue
				)
			};
		}

		[[nodiscard]]
		auto constexpr
		(	back
		)	()	const
			noexcept
		->	BitIndex<t_nWidth>
		{
			auto const
				nValue
			=	get()
			;
			if	(nValue <= CountType{})
				::std::unreachable();

			using
				tIndexType
			=	BitIndex
				<	t_nWidth
				>
			;
			return
			tIndexType
			{	static_cast<tIndexType::IndexType>
				(	nValue
				-	CountType{1u}
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	BitRange
			)
			noexcept
		->	iterator
		{	return
			{	CountType
				{}
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	BitRange
					i_nRange
			)
			noexcept
		->	sentinel
		{	return
			{	i_nRange
			.	m_nValue
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	BitRange
			,	BitRange
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	BitRange
			,	BitRange
			)
			noexcept
		->	::std::strong_ordering
		=	default;
	};
}
