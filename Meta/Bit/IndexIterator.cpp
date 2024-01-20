export module Meta.Bit.IndexIterator;

import Std;

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tCount
		>
	struct
		IndexSentinel
	{
		using
			CountType
		=	t_tCount
		;

		CountType
			m_vCount
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	IndexSentinel
			,	IndexSentinel
			)
			noexcept
		->	bool
		=	default;
	};

	template
		<	typename
				t_tIndex
		>
	struct
		IndexIterator
	:	IndexSentinel
		<	::std::make_unsigned_t
			<	typename
					t_tIndex
				::	IndexType
			>
		>
	{
		using
			difference_type
		=	int
		;
		using
			value_type
		=	t_tIndex
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	value_type
		{	return
			value_type
			{	static_cast<value_type::IndexType>
				(	this->m_vCount
				)
			};
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	IndexIterator&
		{	++this->m_vCount;
			return
				*this
			;
		}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr inline
		(	operator++
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
