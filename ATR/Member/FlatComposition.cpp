export module ATR.Member.FlatComposition;

import ATR.Member.Constants;
import ATR.Member.Info;
import ATR.Member.LayoutList;

import Meta.Generic.LowerBound;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::Generic::LowerBoundIndex;
using ::Meta::SSize;
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
		,	SSize
				i_vBucketSize
		,	Hash
				i_vHash
		)
		noexcept
	->	SSize
	{
		for	(	auto
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
		FlatComposition
	{
		auto static constexpr inline
			BucketSize
		=	3z
		;

		auto static constexpr inline
			NameCount
		=	NameBufferSize
		;

		auto static constexpr inline
			HashBufferSize
		=	NameBufferSize
		;

		LayoutList
			Layout
		{};

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

		::std::int16_t
			MemberCount
		{};

		TypeID
			Types
			[	NameBufferSize
			]
		{};

		SSize
			TypeIndices
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
			=	HashFindIndex
				(	Names
				,	BucketSize
				,	i_vMemberName
				)
			;

			if	(	not
					Names
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
			=	MemberIndices
				[	vHashIndex
				]
			;

			auto const
				vType
			=	Types
				[	vMemberIndex
				]
			;

			auto const
				vTypeIndex
			=	TypeIndices
				[	vMemberIndex
				]
			;

			auto const
				vOffset
			=	Layout
				.	MemberOffset
					(	vType
					,	vTypeIndex
					)
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
