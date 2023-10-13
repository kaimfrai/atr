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

		LayoutList
			Layout
		{};

		Hash
			Names
			[	NameBufferSize
			]
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
				vIndex
			=	HashFindIndex
				(	Names
				,	BucketSize
				,	i_vMemberName
				)
			;

			if	(	not
					Names
						[	vIndex
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
				vType
			=	Types
					[	vIndex
					]
			;

			auto const
				vTypeIndex
			=	TypeIndices
					[	vIndex
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
