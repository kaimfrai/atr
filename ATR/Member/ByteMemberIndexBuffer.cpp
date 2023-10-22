export module ATR.Member.ByteMemberIndexBuffer;

import ATR.Member.ByteMemberIndexIterator;
import ATR.Member.Constants;

import Meta.Memory.Alignment;

import Std;

using ::Meta::Memory::Alignment;

export namespace
	ATR::Member
{
	class
		ByteMemberIndexBuffer
	{
		short
		*	m_aMemberIndices
		;
		short const
		(&	m_rTypeIndicesCounts
		)	[	ByteAlignCount
			]
		;
		short
			m_vMemberCount
		;
		short
			m_vMemberIndicesCounts
			[	ByteAlignCount
			][	TypeBufferSize
			]
		{};

	public:
		explicit constexpr inline
		(	ByteMemberIndexBuffer
		)	(	short
					i_vMemberCount
			,	short const
				(&	i_rTypeIndicesCounts
				)	[	ByteAlignCount
					]
			)
			noexcept
		:	m_aMemberIndices
			{	new
				short
					[	static_cast<::std::size_t>
						(	ByteAlignCount
						*	TypeBufferSize
						*	i_vMemberCount
						)
					]
			}
		,	m_rTypeIndicesCounts
			{	i_rTypeIndicesCounts
			}
		,	m_vMemberCount
			{	i_vMemberCount
			}
		{}

		constexpr inline
		(	compl
			ByteMemberIndexBuffer
		)	()
			noexcept
		{
			delete
				[]
				m_aMemberIndices
			;
		}

		auto constexpr inline
		(	AppendMemberIndex
		)	(	Alignment
					i_vAlignment
			,	short
					i_vTypeIndex
			,	short
					i_vMemberIndex
			)
			noexcept
		->	void
		{
			auto const
				vAlignmentIndex
			=	MaxAlign
				.	Value
			-	i_vAlignment
				.	Value
			;
			auto const
				vInsertIndex
			=	m_vMemberIndicesCounts
					[	vAlignmentIndex
					][	i_vTypeIndex
					]
				++
			;

			auto const
				aInsert
			=	m_aMemberIndices
			+	vInsertIndex
			+	(	m_vMemberCount
				*	(	i_vTypeIndex
					+	(	TypeBufferSize
						*	vAlignmentIndex
						)
					)
				)
			;
			*	aInsert
			=	i_vMemberIndex
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	(	this ByteMemberIndexBuffer const
				&	i_rThis
			)
			noexcept
		->	ByteMemberIndexIterator
		{	return
				ByteMemberIndexIterator
				{	i_rThis
					.	m_aMemberIndices
				,	i_rThis
					.	m_rTypeIndicesCounts
				,	i_rThis
					.	m_vMemberIndicesCounts
				,	i_rThis
					.	m_vMemberCount
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	(	this ByteMemberIndexBuffer const
				&
			)
			noexcept
		{	return
				::std::default_sentinel
			;
		}
	};
}
