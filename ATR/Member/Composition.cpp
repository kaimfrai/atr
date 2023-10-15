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
	auto
	&	rComposition
	=	i_vComposer
		.	Composition
	;
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
			(	rComposition
				.	Names
			,	rComposition
				.	BucketSize
			,	rAliasTarget
				.	Target
			)
		;

		auto const
			vAliasTargetMemberIndex
		=	rComposition
			.	MemberIndices
				[	vAliasTargetHashIndex
				]
		;

		rComposition
		.	Types
			[	rAliasTarget
				.	MemberIndex
			]
		=	rComposition
			.	Types
				[	vAliasTargetMemberIndex
				]
		;

		rComposition
		.	TypeIndices
			[	rAliasTarget
				.	MemberIndex
			]
		=	rComposition
			.	TypeIndices
				[	vAliasTargetMemberIndex
				]
		;
	}

	return
		rComposition
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
