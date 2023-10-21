export module ATR.Member.AlignBufferIterator;

import ATR.Member.Constants;

export namespace
	ATR::Member
{
	struct
		AlignBufferSentinel
	{};

	template
		<	typename
				t_tBuffer
		>
	class
		AlignBufferIterator
	{
		t_tBuffer
		(*	m_aBuffer
		)	[	AlignmentCount
			]
		;

		short const
		(*	m_aElementCounts
		)	[	AlignmentCount
			]
		;

		int
			m_vAlignmentIndex
		=	0
		;
		short
			m_vBufferIndex
		=	0
		;

		auto constexpr inline
		(	ElementCount
		)	()	const
			noexcept
		->	short
		{	return
				(*	m_aElementCounts
				)	[	m_vAlignmentIndex
					]
			;
		}

		auto constexpr inline
		(	AdvanceAlignmentIndex
		)	()
			noexcept
		->	void
		{
			for	(
				;		m_vAlignmentIndex
					<	AlignmentCount
				;	++	m_vAlignmentIndex
				)
			{
				if	(	ElementCount
							()
					>	0
					)
				{	return;
				}
			}
		}

	public:
		using
			difference_type
		=	short
		;
		using
			value_type
		=	t_tBuffer
			::	value_type
		;

		explicit(true) constexpr inline
		(	AlignBufferIterator
		)	(	t_tBuffer
				(&	i_rBuffer
				)	[	AlignmentCount
					]
			,	short const
				(&	i_rElementCounts
				)	[	AlignmentCount
					]
			)
			noexcept
		:	m_aBuffer
			{	&i_rBuffer
			}
		,	m_aElementCounts
			{	&i_rElementCounts
			}
		{
			AdvanceAlignmentIndex
				()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	decltype(auto)
		{	return
				(*	m_aBuffer
				)	[	m_vAlignmentIndex
					]
				.	Buffer
					[	m_vBufferIndex
					]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	AlignBufferIterator&
		{
			++	m_vBufferIndex
			;

			if	(	m_vBufferIndex
				>=	ElementCount
						()
				)
			{	m_vBufferIndex
				=	0
				;
				++	m_vAlignmentIndex
				;
				AdvanceAlignmentIndex
					()
				;
			}

			return
				*this
			;
		}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr inline
		(	operator++
		)	(int)	&
			noexcept
		->	AlignBufferIterator
		{
			AlignBufferIterator
				vOld
			=	*this
			;
			++	*this
			;
			return
				vOld
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	AlignBufferIterator const
				&	i_rIterator
			,	AlignBufferSentinel
			)
			noexcept
		->	bool
		{	return
				i_rIterator
				.	m_vAlignmentIndex
			>=	AlignmentCount
			;
		}
	};

	template
		<	typename
				t_tElement
		>
	(	AlignBufferIterator
	)	(	t_tElement
				(&	i_rBuffer
				)	[	AlignmentCount
					]
			,	short const
				(&	i_rElementCounts
				)	[	AlignmentCount
					]
		)
	->	AlignBufferIterator
		<	t_tElement
		>
	;
}
