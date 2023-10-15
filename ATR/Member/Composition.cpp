export module ATR.Member.Composition;

import ATR.Member.FlatComposer;
import ATR.Member.FlatComposition;
import ATR.Member.ProtoComposer;
import ATR.Member.Constants;

import Meta.ID;
import Meta.String.Hash;
import Meta.Size;

using ::Meta::SSize;
using ::Meta::ProtoID;
using ::Meta::String::ImplicitHash;

namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr inline
	(	Finalize
	)	(	ProtoComposer auto
				i_vComposer
		)
		noexcept
	->	FlatComposition
	{
		FlatComposition
			vComposition
		{	.	Members
			=	i_vComposer
				.	Members
		};

		SSize
			TypeIndices
			[	NameBufferSize
			]
		{};

		for	(	auto
					vMemberIndex
				=	0z
			;	(	vMemberIndex
				<	i_vComposer
					.	Members
					.	MemberCount
				)
			;	++	vMemberIndex
			)
		{
			auto const
				vType
			=	i_vComposer
				.	Types
					[	vMemberIndex
					]
			;

			TypeIndices
				[	vMemberIndex
				]
			=	vComposition
				.	Layout
				.	AddType
					(	vType
					)
			;
		}

		for	(	auto
					vMemberIndex
				=	0z
			;	(	vMemberIndex
				<	i_vComposer
					.	Members
					.	MemberCount
				)
			;	++	vMemberIndex
			)
		{
			auto const
				vType
			=	i_vComposer
				.	Types
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
			=	vComposition
				.	Layout
				.	MemberOffset
					(	vType
					,	vTypeIndex
					)
			;
			vComposition
			.	Types
				[	vMemberIndex
				]
			=	vType
			;
			vComposition
			.	Offsets
				[	vMemberIndex
				]
			=	vOffset
			;
		}

		for	(	auto
					vIndex
				=	0z
			;	(	vIndex
				<	i_vComposer
					.	AliasCount
				)
			;	++	vIndex
			)
		{
			auto const
			&	rAliasTarget
			=	i_vComposer
				.	AliasTargets
					[	vIndex
					]
			;

			auto const
				vAliasTargetHashIndex
			=	HashFindIndex
				(	vComposition
					.	Members
					.	Names
				,	vComposition
					.	Members
					.	BucketSize
				,	rAliasTarget
					.	Target
				)
			;

			auto const
				vAliasTargetMemberIndex
			=	vComposition
				.	Members
				.	MemberIndices
					[	vAliasTargetHashIndex
					]
			;

			auto const
				vMemberIndex
			=	vComposition
				.	Members
				.	MemberCount
				++
			;

			vComposition
			.	Members
			.	MemberIndices
				[	rAliasTarget
					.	HashIndex
				]
			=	vMemberIndex
			;

			vComposition
			.	Types
				[	vMemberIndex
				]
			=	vComposition
				.	Types
					[	vAliasTargetMemberIndex
					]
			;

			vComposition
			.	Offsets
				[	vMemberIndex
				]
			=	vComposition
				.	Offsets
					[	vAliasTargetMemberIndex
					]
			;
		}

		return
			vComposition
		;
	}
}

export namespace
	ATR::Member
{
	template
		<	ProtoID
				t_tTypeName
		,	ProtoComposer
				t_tComposer
			=	FlatComposer
		>
	auto constexpr inline
		Composition_Of
	=	::ATR::Member::Finalize
		(	Recompose
			(	t_tComposer
				{}
			,	t_tTypeName
				{}
			)
		)
	;

	template
		<	ProtoComposer
				t_tComposer
			=	FlatComposer
		>
	auto constexpr inline
	(	GetInfo
	)	(	ProtoID auto
				i_vTypeName
		,	ImplicitHash
				i_vMemberName
		)
		noexcept
	{	return
			Composition_Of
			<	decltype(i_vTypeName)
			,	t_tComposer
			>
			.	FindMemberInfo
				(	i_vMemberName
				)
		;
	};

	template
		<	ProtoComposer
				t_tComposer
			=	FlatComposer
		>
	auto constexpr inline
	(	Exists
	)	(	ProtoID auto
				i_vTypeName
		,	ImplicitHash
				i_vMemberName
		)
		noexcept
	->	bool
	{	return
			GetInfo
			<	t_tComposer
			>(	i_vTypeName
			,	i_vMemberName
			)
			.	IsValid
				()
		;
	}
}
