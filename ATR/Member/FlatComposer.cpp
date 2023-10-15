export module ATR.Member.FlatComposer;

import ATR.Member.FlatComposition;
import ATR.Member.PrefixGuard;

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
		FlatComposition
			Composition
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
				(	Composition
					.	Names
				,	Composition
					.	BucketSize
				,	vPrefixedMemberName
				)
			;
			if	(	not
					Composition
					.	Names
						[	vHashIndex
						]
				)
			{
				Composition
				.	Names
					[	vHashIndex
					]
				=	vPrefixedMemberName
				;

				auto const
					vMemberIndex
				=	Composition
					.	MemberCount
					++
				;

				Composition
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
				(	Composition
					.	Names
				,	Composition
					.	BucketSize
				,	vPrefixedMemberName
				)
			;
			if	(	not
					Composition
					.	Names
						[	vInsertIndex
						]
				)
			{
				Composition
				.	Names
					[	vInsertIndex
					]
				=	vPrefixedMemberName
				;

				auto const
					vMemberIndex
				=	Composition
					.	MemberCount
					++
				;

				Composition
				.	MemberIndices
					[	vInsertIndex
					]
				=	vMemberIndex
				;

				Composition
				.	Types
					[	vMemberIndex
					]
				=	i_vType
				;

				auto const
					vTypeIndex
				=	Composition
					.	Layout
					.	AddType
						(	i_vType
						)
				;

				Composition
				.	TypeIndices
					[	vMemberIndex
					]
				=	vTypeIndex
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
