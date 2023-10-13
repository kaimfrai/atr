export module ATR.Member.Composition;

import ATR.Member.FlatComposer;
import ATR.Member.FlatComposition;

import Meta.ID;

using ::Meta::ProtoID;

[[nodiscard]]
auto constexpr inline
(	Finalize
)	(	auto
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
			vAliasTargetIndex
		=	::ATR::Member::HashFindIndex
			(	rComposition
				.	Names
			,	rComposition
				.	BucketSize
			,	rAliasTarget
				.	Target
			)
		;

		rComposition
		.	Types
			[	rAliasTarget
				.	NameIndex
			]
		=	rComposition
			.	Types
				[	vAliasTargetIndex
				]
		;

		rComposition
		.	TypeIndices
			[	rAliasTarget
				.	NameIndex
			]
		=	rComposition
			.	TypeIndices
				[	vAliasTargetIndex
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
		,	typename
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
}
