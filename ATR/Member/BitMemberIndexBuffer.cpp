export module ATR.Member.BitMemberIndexBuffer;

import ATR.Member.BitMemberIndexIterator;
import ATR.Member.Constants;

import Meta.Memory.Alignment;

import std;

using ::Meta::Memory::Alignment;

export namespace
	ATR::Member
{
	struct
		DistrictBitMemberIndexView
	{
		short const
		*	BitMemberIndices
		;
		short const
		*	BitMemberIndicesCounts
		;
		short
			MemberCount
		;

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	(	this DistrictBitMemberIndexView const
				&	i_rThis
			)
			noexcept
		->	BitMemberIndexIterator
		{	return
				BitMemberIndexIterator
				{	i_rThis
					.	BitMemberIndices
				,	i_rThis
					.	BitMemberIndicesCounts
				,	i_rThis
					.	MemberCount
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	(	this DistrictBitMemberIndexView const
				&
			)
			noexcept
		->	::std::default_sentinel_t
		{	return
				{}
			;
		}
	};


	template
		<	short
				t_vDistrictCount
		>
	class
		BitMemberIndexBuffer
	{
		short static constexpr inline
			LayoutCount
		=	t_vDistrictCount
		+	1
		;

		short
		*	m_aBitMemberIndices
		;
		short
			m_vBitMemberIndicesCounts
			[	LayoutCount
			][	BitAlignCount
			]
		{};
		short
			m_vMemberCount
		;
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
						(	LayoutCount
						*	BitAlignCount
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
		)	(	short
					i_vDistrictIndex
			,	Alignment
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
				[	i_vDistrictIndex
				][	vAlignmentIndex
				]
				++
			;

			auto const
				aInsert
			=	m_aBitMemberIndices
			+	vInsertIndex
			+	(	m_vMemberCount
				*	(	vAlignmentIndex
					+	(	BitAlignCount
						*	i_vDistrictIndex
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
		(	operator[]
		)	(	short
					i_vDistrictIndex
			)	const
			noexcept
		->	DistrictBitMemberIndexView
		{	return
			{	.	BitMemberIndices
				=	m_aBitMemberIndices
				+	(	m_vMemberCount
					*	BitAlignCount
					*	i_vDistrictIndex
					)
			,	.	BitMemberIndicesCounts
				=	m_vBitMemberIndicesCounts
					[	i_vDistrictIndex
					]
			,	.	MemberCount
				=	m_vMemberCount
			};
		}
	};
}
