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
		MemberNameList
			Members
		{};

		struct
			AliasTarget
		{
			short
				HashIndex
			{};
			Hash
				Target
			{};
		};

		AliasTarget
			AliasTargets
			[	NameBufferSize
			]
		{};

		short
			AliasCount
		{};

		Hash
			Prefix
		{	""
		};

		auto
		(*	DistrictIndexOf
		)	(	Hash
			)
			noexcept
		->	short
		;

		auto constexpr inline
		(	Alias
		)	(	char const
				*	i_vMemberName
			,	char const
				*	i_vTargetName
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
			=	Members
				.	HashIndexFor
					(	vPrefixedMemberName
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

				AliasTargets
					[	AliasCount
						++
					]
				=	AliasTarget
					{	vHashIndex
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
		)	(	char const
				*	i_vMemberName
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
				vHashIndex
			=	Members
				.	HashIndexFor
					(	vPrefixedMemberName
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

				(void)
				Members
				.	AddTypeForHash
					(	vHashIndex
					,	i_vType
					,	i_vType
						.	IsAligned
							()
						?	DistrictIndexOf
							(	vPrefixedMemberName
							)
						:	-1
					)
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
		)	(	char const
				*	i_vPrefix
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
