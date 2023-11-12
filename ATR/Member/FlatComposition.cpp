export module ATR.Member.FlatComposition;

import ATR.Member.Constants;
import ATR.Member.CountedType;
import ATR.Member.Info;
import ATR.Member.AlignBuffer;

import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::String::Hash;
using ::Meta::Type;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	struct
		MemberNameList
	{
		Hash
			Names
			[	NameBufferSize
			]
		;

		short
			MemberIndices
			[	NameBufferSize
			]
		;

		TypeID
			Types
			[	NameBufferSize
			]
		;

		short
			DistrictIndices
			[	NameBufferSize
			]
		;

		short
			MemberCount
		{};

		[[nodiscard]]
		auto constexpr inline
		(	HashIndexFor
		)	(	Hash
					i_vName
			)	const
			noexcept
		->	short
		{
			for	(	short
						vIndex
					=	static_cast<short>
						(	i_vName
						bitand
							0x3E // 64 entries and load factor of 2
						)
				;	// Termination by out of bounds
				;	++	vIndex
				)
			{	auto const
					vElement
				=	Names
						[	vIndex
						]
				;
				if	(	not
						vElement
					or	(	vElement
						==	i_vName
						)
					)
				{	return
						vIndex
					;
				}
			}
		}

		[[nodiscard]]
		auto constexpr inline
		(	AddTypeForHash
		)	(	short
					i_vHashIndex
			,	TypeID
					i_vType
			,	short
					i_vDistrictIndex
			)
			noexcept
		->	short
		{
			auto const
				vMemberIndex
			=	MemberCount
				++
			;

			MemberIndices
			[	i_vHashIndex
			]=	vMemberIndex
			;
			Types
			[	vMemberIndex
			]=	i_vType
			;
			DistrictIndices
			[	vMemberIndex
			]=	i_vDistrictIndex
			;

			return
				vMemberIndex
			;
		}
	};

	template
		<	short
				t_vDistrictCount
			=	0
		>
	struct
		FlatComposition
	{
		short static constexpr inline
			LayoutCount
		=	t_vDistrictCount
		+	1
		;

		AlignBuffer
			Layout
			[	LayoutCount
			]
		{};

		MemberNameList
			Members
		{};

		BitSize
			Offsets
			[	NameBufferSize
			]
		{};

		[[nodiscard]]
		auto constexpr inline
		(	GetMemberInfo
		)	(	short
					i_vMemberIndex
			)	const
			noexcept
		->	Info
		{
			auto const
				vType
			=	Members
				.	Types
					[	i_vMemberIndex
					]
			;
			auto const
				vOffset
			=	Offsets
				[	i_vMemberIndex
				]
			;
			auto const
				vDistrictIndex
			=	Members
				.	DistrictIndices
					[	i_vMemberIndex
					]
			;

			return
				Info
				{	vType
				,	vOffset
				,	vDistrictIndex
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetDistrictInfo
		)	(	short
					i_vDistrictIndex
			)	const
			noexcept
		->	Info
		{
			if	(	i_vDistrictIndex
				<=	0
				)
			{	::std::unreachable
				();
			}

			return
				GetMemberInfo
				(	Members
					.	MemberCount
				-	1
				+	i_vDistrictIndex
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	FindMemberInfo
		)	(	Hash
					i_vMemberName
			)	const
			noexcept
		->	Info
		{
			auto const
				vHashIndex
			=	Members
				.	HashIndexFor
					(	i_vMemberName
					)
			;

			if	(	not
					Members
					.	Names
						[	vHashIndex
						]
				)
			{	return
					Info
					{	Type<void>
					,	-1_bit
					,	-1
					}
				;
			}

			return
				GetMemberInfo
				(	Members
					.	MemberIndices
						[	vHashIndex
						]
				)
			;
		}
	};
}
