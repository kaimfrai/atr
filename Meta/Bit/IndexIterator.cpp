export module Meta.Bit.IndexIterator;

import Meta.Bit.Index;
import Meta.Memory.Size;
import Meta.Memory.Count;
import Meta.Size;
import Meta.Arithmetic.Integer;

import Std;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_nWidth
		>
	struct
		IndexSentinel
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
		)	(	IndexSentinel
			,	IndexSentinel
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
		IndexIterator
	:	IndexSentinel
		<	t_nWidth
		>
	{
		using
			difference_type
		=	SSize
		;
		using
			value_type
		=	Index
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
		->	IndexIterator&
		{	++this->m_nCount;
			return *this;
		}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	IndexIterator
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
