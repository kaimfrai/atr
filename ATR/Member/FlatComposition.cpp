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
		auto static constexpr inline
			HashBufferSize
		=	NameBufferSize
		;

		Hash
			Names
			[	HashBufferSize
			]
		{};

		::std::int16_t
			MemberIndices
			[	HashBufferSize
			]
		{};

		TypeID
			Types
			[	NameBufferSize
			]
		{};

		::std::int16_t
			MemberCount
		{};

		[[nodiscard]]
		auto constexpr inline
		(	HashIndexFor
		)	(	Hash
					i_vName
			)	const
			noexcept
		->	::std::int16_t
		{
			for	(	::std::int16_t
						vIndex
					=	static_cast<::std::int16_t>
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
		)	(	::std::int16_t
					i_vHashIndex
			,	TypeID
					i_vType
			)
			noexcept
		->	::std::int16_t
		{
			auto const
				vMemberIndex
			=	MemberCount
				++
			;

			MemberIndices
				[	i_vHashIndex
				]
			=	vMemberIndex
			;
			Types
				[	vMemberIndex
				]
			=	i_vType
			;

			return
				vMemberIndex
			;
		}
	};

	struct
		FlatComposition
	{
		auto static constexpr inline
			NameCount
		=	NameBufferSize
		;

		AlignBuffer<CountedTypeBuffer>
			Layout
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
					}
				;
			}

			auto const
				vMemberIndex
			=	Members
				.	MemberIndices
					[	vHashIndex
					]
			;

			auto const
				vType
			=	Members
				.	Types
					[	vMemberIndex
					]
			;

			auto const
				vOffset
			=	Offsets
					[	vMemberIndex
					]
			;

			return
				Info
				{	vType
				,	vOffset
				}
			;
		}
	};
}
