export module ATR.Member.FlatComposer;

import ATR.Member.FlatComposition;
import ATR.Member.PrefixGuard;
import ATR.Member.Constants;
import ATR.Member.LayoutList;

import Meta.ID;
import Meta.Size;
import Meta.String.Hash;
import Meta.Token.TypeID;

import Std;

using ::Meta::ProtoID;
using ::Meta::SSize;
using ::Meta::String::Hash;
using ::Meta::String::ImplicitHash;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		FlatComposer
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

		MemberNameList
			Members
		{};

		TypeID
			Types
			[	NameBufferSize
			]
		{};

		struct
			AliasTarget
		{
			::std::int16_t
				MemberIndex
			{};
			Hash
				Target
			{};
		};

		AliasTarget
			AliasTargets
			[	FlatComposition::NameCount
			]
		{};

		SSize
			AliasCount
		{};

		Hash
			Prefix
		{	""
		};

		auto constexpr inline
		(	Alias
		)	(	ImplicitHash
					i_vMemberName
			,	ImplicitHash
					i_vTargetName
			)
			noexcept
		->	FlatComposer&&
		{
			auto const
				vPrefixedMemberName
			=	Prefix
			+	i_vMemberName
			;

			auto const
				vHashIndex
			=	HashFindIndex
				(	Members
					.	Names
				,	Members
					.	BucketSize
				,	vPrefixedMemberName
				)
			;
			if	(	not
					Members
					.	Names
						[	vHashIndex
						]
				)
			{
				Members
				.	Names
					[	vHashIndex
					]
				=	vPrefixedMemberName
				;

				auto const
					vMemberIndex
				=	Members
					.	MemberCount
					++
				;

				Members
				.	MemberIndices
					[	vHashIndex
					]
				=	vMemberIndex
				;
				AliasTargets
					[	AliasCount
						++
					]
				=	AliasTarget
					{	vMemberIndex
					,	(	Prefix
						+	i_vTargetName
						)
					}
				;
			}

			return
				static_cast<FlatComposer&&>
				(	*this
				)
			;
		}

		auto constexpr inline
		(	Member
		)	(	ImplicitHash
					i_vMemberName
			,	TypeID
					i_vType
			)
			noexcept
		->	FlatComposer&&
		{
			auto const
				vPrefixedMemberName
			=	Prefix
			+	i_vMemberName
			;

			auto const
				vInsertIndex
			=	HashFindIndex
				(	Members
					.	Names
				,	Members
					.	BucketSize
				,	vPrefixedMemberName
				)
			;
			if	(	not
					Members
					.	Names
						[	vInsertIndex
						]
				)
			{
				Members
				.	Names
					[	vInsertIndex
					]
				=	vPrefixedMemberName
				;

				auto const
					vMemberIndex
				=	Members
					.	MemberCount
					++
				;

				Members
				.	MemberIndices
					[	vInsertIndex
					]
				=	vMemberIndex
				;

				Types
					[	vMemberIndex
					]
				=	i_vType
				;
			}

			return
				static_cast<FlatComposer&&>
				(	*this
				)
			;
		}

		auto constexpr inline
		(	Splice
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	FlatComposer&&
		{	return
				Recompose
				(	static_cast<FlatComposer&&>
					(	*this
					)
				,	i_vBaseID
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	ScopedPrefix
		)	(	ImplicitHash
					i_vPrefix
			)
			noexcept
		->	PrefixGuard
		{	return
				PrefixGuard
				{	Prefix
				,	i_vPrefix
				}
			;
		}
	};
}
