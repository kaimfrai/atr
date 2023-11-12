export module ATR.Member.BitMemberIndexIterator;

import ATR.Member.Constants;

import Std;

export namespace
	ATR::Member
{
	class
		BitMemberIndexIterator
	{
		short const
		*	m_aMemberIndices
		;
		short const
		*	m_aMemberIndicesCounts
		;
		short
			m_vMemberCount
		;
		short
			m_vAlignmentIndex
		{};
		short
			m_vMemberIndexIndex
		{};

		[[nodiscard]]
		auto constexpr inline
		(	MemberIndicesCount
		)	()	const
			noexcept
		->	short
		{	return
				m_aMemberIndicesCounts
				[	m_vAlignmentIndex
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
					<	BitAlignCount
				;	++	m_vAlignmentIndex
				)
			{	if	(	MemberIndicesCount
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
		=	short
		;

		explicit(true) constexpr inline
		(	BitMemberIndexIterator
		)	(	short const
				*	i_aMemberIndices
			,	short const
				*	i_aMemberIndicesCounts
			,	short
					i_vMemberCount
			)
			noexcept
		:	m_aMemberIndices
			{	i_aMemberIndices
			}
		,	m_aMemberIndicesCounts
			{	i_aMemberIndicesCounts
			}
		,	m_vMemberCount
			{	i_vMemberCount
			}
		{
			AdvanceAlignmentIndex
			();
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	short
		{	return
				m_aMemberIndices
				[	m_vMemberIndexIndex
				+	(	m_vMemberCount
					*	m_vAlignmentIndex
					)
				]
			;
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	BitMemberIndexIterator&
		{
			++	m_vMemberIndexIndex
			;
			if	(	m_vMemberIndexIndex
				>=	MemberIndicesCount
					()
				)
			{
				m_vMemberIndexIndex
				=	0
				;
				++	m_vAlignmentIndex
				;
				AdvanceAlignmentIndex
				();
			}
			return
				*this
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	BitMemberIndexIterator const
				&	i_rIterator
			,	::std::default_sentinel_t
			)
			noexcept
		->	bool
		{	return
				i_rIterator
				.	m_vAlignmentIndex
			>=	BitAlignCount
			;
		}
	};
}
