export module ATR.Member.BitMemberIndexBuffer;

import ATR.Member.BitMemberIndexIterator;
import ATR.Member.Constants;

import Meta.Memory.Alignment;

import Std;

using ::Meta::Memory::Alignment;

export namespace
	ATR::Member
{
	class
		BitMemberIndexBuffer
	{
		short
		*	m_aBitMemberIndices
		;
		short
			m_vMemberCount
		;
		short
			m_vBitMemberIndicesCounts
			[	BitAlignCount
			]
		{};
	public:
		explicit(true) constexpr inline
		(	BitMemberIndexBuffer
		)	(	short
					i_vMemberCount
			)
			noexcept
		:	m_aBitMemberIndices
			{	new
				short
					[	static_cast<::std::size_t>
						(	BitAlignCount
						*	i_vMemberCount
						)
					]
			}
		,	m_vMemberCount
			{	i_vMemberCount
			}
		{}

		constexpr inline
		(	compl
			BitMemberIndexBuffer
		)	()
			noexcept
		{	delete
				[]
				m_aBitMemberIndices
			;
		}

		auto constexpr inline
		(	AppendMemberIndex
		)	(	Alignment
					i_vAlignment
			,	short
					i_vMemberIndex
			)
			noexcept
		->	void
		{
			auto const
				vAlignmentIndex
			=	ByteAlign
				.	Value
			-	i_vAlignment
				.	Value
			;
			auto const
				vInsertIndex
			=	m_vBitMemberIndicesCounts
					[	vAlignmentIndex
					]
				++
			;

			auto const
				aInsert
			=	m_aBitMemberIndices
			+	vInsertIndex
			+	(	m_vMemberCount
				*	vAlignmentIndex
				)
			;
			*	aInsert
			=	i_vMemberIndex
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	(	this BitMemberIndexBuffer const
				&	i_rThis
			)
			noexcept
		->	BitMemberIndexIterator
		{	return
				BitMemberIndexIterator
				{	i_rThis
					.	m_aBitMemberIndices
				,	i_rThis
					.	m_vBitMemberIndicesCounts
				,	i_rThis
					.	m_vMemberCount
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	(	this BitMemberIndexBuffer const
				&
			)
			noexcept
		->	auto
		{	return
				::std::default_sentinel
			;
		}
	};
}
