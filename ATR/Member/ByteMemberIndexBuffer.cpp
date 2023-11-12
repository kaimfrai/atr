export module ATR.Member.ByteMemberIndexBuffer;

import ATR.Member.AlignBuffer;
import ATR.Member.ByteMemberIndexIterator;
import ATR.Member.Constants;

import Meta.Memory.Alignment;
import Meta.Token.TypeID;

import Std;

using ::Meta::TypeID;
using ::Meta::Memory::Alignment;

export namespace
	ATR::Member
{
	struct
		DistrictByteMemberIndexView
	{
		short const
		*	MemberIndices
		;
		short const
		*	TypeIndicesCounts
		;
		short const
		(*	MemberIndicesCounts
		)	[	TypeBufferSize
			]
		;
		short
			MemberCount
		;

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	(	this DistrictByteMemberIndexView const
				&	i_rThis
			)
			noexcept
		->	ByteMemberIndexIterator
		{	return
				ByteMemberIndexIterator
				{	i_rThis
					.	MemberIndices
				,	i_rThis
					.	TypeIndicesCounts
				,	i_rThis
					.	MemberIndicesCounts
				,	i_rThis
					.	MemberCount
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	(	this DistrictByteMemberIndexView const
				&
			)
			noexcept
		{	return
				::std::default_sentinel
			;
		}
	};

	template
		<	short
				t_vDistrictCount
		>
	class
		ByteMemberIndexBuffer
	{
		short static constexpr inline
			LayoutCount
		=	t_vDistrictCount
		+	1
		;

		short
		*	m_aMemberIndices
		;
		short
			m_vMemberCount
		;
		AlignBuffer
		(&	m_rAlignBuffer
		)	[	LayoutCount
			]
		;
		short
			m_vMemberIndicesCounts
			[	LayoutCount
			][	ByteAlignCount
			][	TypeBufferSize
			]
		{};

	public:
		explicit constexpr inline
		(	ByteMemberIndexBuffer
		)	(	short
					i_vMemberCount
			,	AlignBuffer
				(&	i_rAlignBuffer
				)	[	LayoutCount
					]
			)
			noexcept
		:	m_aMemberIndices
			{	new
				short
					[	static_cast<::std::size_t>
						(	LayoutCount
						*	ByteAlignCount
						*	TypeBufferSize
						*	i_vMemberCount
						)
					]
			}
		,	m_vMemberCount
			{	i_vMemberCount
			}
		,	m_rAlignBuffer
			{	i_rAlignBuffer
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
		)	(	TypeID
					i_vType
			,	short
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
				vTypeIndex
			=	AddByteType
				(	i_vType
				,	m_rAlignBuffer
					[	i_vDistrictIndex
					][	i_vAlignment
					]
				,	1z
				)
			;

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
				[	i_vDistrictIndex
				][	vAlignmentIndex
				][	vTypeIndex
				]
				++
			;

			auto const
				aInsert
			=	m_aMemberIndices
			+	vInsertIndex
			+	(	m_vMemberCount
				*	(	vTypeIndex
					+	(	TypeBufferSize
						*	(	vAlignmentIndex
							+	(	ByteAlignCount
								*	i_vDistrictIndex
								)
							)
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
		->	DistrictByteMemberIndexView
		{	return
			{	.	MemberIndices
				=	m_aMemberIndices
				+	(	m_vMemberCount
					*	TypeBufferSize
					*	ByteAlignCount
					*	i_vDistrictIndex
					)
			,	.	TypeIndicesCounts
				=	m_rAlignBuffer
					[	i_vDistrictIndex
					].	ElementCounts
			,	.	MemberIndicesCounts
				=	m_vMemberIndicesCounts
					[	i_vDistrictIndex
					]
			,	.	MemberCount
				=	m_vMemberCount
			};
		}
	};
}
