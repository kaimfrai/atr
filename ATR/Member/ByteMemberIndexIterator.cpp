export module ATR.Member.ByteMemberIndexIterator;

import ATR.Member.Constants;

import Std;

export namespace
	ATR::Member
{
	class
		ByteMemberIndexIterator
	{
		short const
		*	m_aMemberIndices
		;
		short const
		(*	m_aTypeIndicesCounts
		)	[	ByteAlignCount
			]
		;
		short const
		(*	m_aMemberIndicesCounts
		)	[	ByteAlignCount
			][	TypeBufferSize
			]
		;
		short
			m_vMemberCount
		;
		short
			m_vAlignmentIndex
		{};
		short
			m_vTypeIndexIndex
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
				(*	m_aMemberIndicesCounts
				)[	m_vAlignmentIndex
				][	m_vTypeIndexIndex
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	TypeIndicesCount
		)	()	const
			noexcept
		->	short
		{	return
				(*	m_aTypeIndicesCounts
				)[	m_vAlignmentIndex
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
					<	ByteAlignCount
				;	++	m_vAlignmentIndex
				)
			{	if	(	TypeIndicesCount
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
		(	ByteMemberIndexIterator
		)	(	short const
				*	i_aMemberIndices
			,	short const
				(&	i_rTypeIndicesCounts
				)	[	ByteAlignCount
					]
			,	short const
				(&	i_rMemberIndicesCounts
				)	[	ByteAlignCount
					][	TypeBufferSize
					]
			,	short
					i_vMemberCount
			)
			noexcept
		:	m_aMemberIndices
			{	i_aMemberIndices
			}
		,	m_aTypeIndicesCounts
			{	&	i_rTypeIndicesCounts
			}
		,	m_aMemberIndicesCounts
			{	&	i_rMemberIndicesCounts
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
					*	(	m_vTypeIndexIndex
						+	(	TypeBufferSize
							*	m_vAlignmentIndex
							)
						)
					)
				]
			;
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	ByteMemberIndexIterator&
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
				++	m_vTypeIndexIndex
				;
				if	(	m_vTypeIndexIndex
					>=	TypeIndicesCount
						()
					)
				{	m_vTypeIndexIndex
					=	0
					;
					++	m_vAlignmentIndex
					;
					AdvanceAlignmentIndex
					();
				}
			}
			return
				*this
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	ByteMemberIndexIterator const
				&	i_rIterator
			,	::std::default_sentinel_t
			)
			noexcept
		->	bool
		{	return
				i_rIterator
				.	m_vAlignmentIndex
			>=	ByteAlignCount
			;
		}
	};
}
