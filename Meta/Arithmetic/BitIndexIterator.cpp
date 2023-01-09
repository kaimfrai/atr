export module Meta.Arithmetic.BitIndexIterator;

import Meta.Arithmetic.BitIndex;
import Meta.Memory.Size;
import Meta.Memory.Count;
import Meta.Size;
import Meta.Arithmetic.Integer;

import Std;

export namespace
	Meta::Arithmetic
{
	template
		<	BitSize
				t_nWidth
		>
	struct
		BitIndexSentinel
	{
		static auto constexpr
			FieldWidth
		=	t_nWidth
		;

		static Bits constexpr
			HighestValue
		{	static_cast
			<	::std::make_unsigned_t
				<	BitSize::SizeType
				>
			>(	FieldWidth.get()
			)
		};

		static BitSize constexpr
			CountWidth
		{	::std::bit_width
			(	HighestValue.get()
			)
		};

		using
			CountType
		=	UInt
			<	CountWidth
			>
		;

		CountType
			m_nCount
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	BitIndexSentinel
			,	BitIndexSentinel
			)
			noexcept
		->	bool
		=	default;
	};

	template
		<	BitSize
				t_nWidth
		>
	struct
		BitIndexIterator
	:	BitIndexSentinel
		<	t_nWidth
		>
	{
		using
			difference_type
		=	SSize
		;
		using
			value_type
		=	BitIndex
			<	t_nWidth
			>
		;

		[[nodiscard]]
		auto constexpr
		(	operator *
		)	()	const
			noexcept
		->	value_type
		{	return
			value_type
			{	static_cast<value_type::IndexType>
				(	this->m_nCount
				)
			};
		}

		auto constexpr
		(	operator ++
		)	()	&
			noexcept
		->	BitIndexIterator&
		{	++this->m_nCount;
			return *this;
		}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	BitIndexIterator
		{	return
			::std::exchange
			(	*this
			,	::std::next
				(	*this
				)
			);
		}
	};
}
