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
	[[nodiscard]]
	auto constexpr inline
	(	HashFindIndex
	)	(	Hash const
			*	i_aStorage
		,	::std::int16_t
				i_vBucketSize
		,	Hash
				i_vHash
		)
		noexcept
	->	::std::int16_t
	{
		for	(	::std::int16_t
					vIndex
				=	i_vHash
					.	Fold4
						()
				*	i_vBucketSize
			;
			;	++	vIndex
			)
		{
			auto const
				vElement
			=	i_aStorage
					[	vIndex
					]
			;
			if	(	not
					vElement
				or	(	vElement
					==	i_vHash
					)
				)
			{	return
					vIndex
				;
			}
		}
	}

	struct
		MemberNameList
	{
		::std::int16_t static constexpr inline
			BucketSize
		=	3
		;

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
		{	return
				HashFindIndex
				(	Names
				,	BucketSize
				,	i_vName
				)
			;
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

		AlignBuffer<CountedType, TypeBufferSize>
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
