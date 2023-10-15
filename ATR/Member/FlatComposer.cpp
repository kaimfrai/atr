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

		struct
			AliasTarget
		{
			::std::int16_t
				HashIndex
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

		::std::int16_t
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
