export module ATR.Member.Composition;

import ATR.Member.FlatComposer;
import ATR.Member.FlatComposition;
import ATR.Member.ProtoComposer;

import Meta.ID;
import Meta.String.Hash;

using ::Meta::ProtoID;
using ::Meta::String::ImplicitHash;

[[nodiscard]]
auto constexpr inline
(	Finalize
)	(	::ATR::Member::ProtoComposer auto
			i_vComposer
	)
	noexcept
->	::ATR::Member::FlatComposition
{
	::ATR::Member::FlatComposition
		vComposition
	{	.	Layout
		=	i_vComposer
			.	Layout
	,	.	Members
		=	i_vComposer
			.	Members
	};

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

		if	(	vType
			==	decltype(vType)
				{}
			)
		{	continue;
		}

		auto const
			vTypeIndex
		=	i_vComposer
			.	TypeIndices
				[	vMemberIndex
				]
		;

		auto const
			vOffset
		=	i_vComposer
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
		=	::ATR::Member::HashFindIndex
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

		vComposition
		.	Types
			[	rAliasTarget
				.	MemberIndex
			]
		=	vComposition
			.	Types
				[	vAliasTargetMemberIndex
				]
		;

		vComposition
		.	Offsets
			[	rAliasTarget
				.	MemberIndex
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
	=	::Finalize
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
