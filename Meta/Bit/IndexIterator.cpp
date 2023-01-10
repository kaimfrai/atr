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
			return
				*this
			;
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
