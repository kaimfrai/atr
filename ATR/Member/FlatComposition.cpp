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

using ::Meta::BitSize;
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
	};

	struct
		FlatComposition
	{
		auto static constexpr inline
			NameCount
		=	NameBufferSize
		;

		LayoutList
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
			=	HashFindIndex
				(	Members
					.	Names
				,	Members
					.	BucketSize
				,	i_vMemberName
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
