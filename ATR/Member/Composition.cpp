export module ATR.Member.Composition;

import ATR.Member.FlatComposer;
import ATR.Member.FlatComposition;
import ATR.Member.ProtoComposer;
import ATR.Member.Constants;

import Meta.ID;
import Meta.String.Hash;
import Meta.Size;

import Std;

using ::Meta::SSize;
using ::Meta::ProtoID;
using ::Meta::String::ImplicitHash;

namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr inline
	(	Finalize
	)	(	FlatComposer
			&&	i_rComposer
		)
		noexcept
	->	FlatComposition
	{
		FlatComposition
			vComposition
		{	.	Members
			=	i_rComposer
				.	Members
		};

		auto
		*	const
			aTypeIndices
		=	new
			SSize
				[	static_cast<::std::size_t>
					(	vComposition
						.	Members
						.	MemberCount
					)
				]
		;

		for	(	::std::int16_t
					vMemberIndex
				=	0
			;	(	vMemberIndex
				<	vComposition
					.	Members
					.	MemberCount
				)
			;	++	vMemberIndex
			)
		{
			auto const
				vType
			=	vComposition
				.	Members
				.	Types
					[	vMemberIndex
					]
			;

			aTypeIndices
				[	vMemberIndex
				]
			=	vComposition
				.	Layout
				.	AddType
					(	vType
					)
			;
		}

		for	(	::std::int16_t
					vMemberIndex
				=	0
			;	(	vMemberIndex
				<	vComposition
					.	Members
					.	MemberCount
				)
			;	++	vMemberIndex
			)
		{
			auto const
				vType
			=	vComposition
				.	Members
				.	Types
					[	vMemberIndex
					]
			;

			auto const
				vTypeIndex
			=	aTypeIndices
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
			.	Offsets
				[	vMemberIndex
				]
			=	vOffset
			;
		}

		delete[]
			aTypeIndices
		;

		for	(	::std::int16_t
					vIndex
				=	0
			;	(	vIndex
				<	i_rComposer
					.	AliasCount
				)
			;	++	vIndex
			)
		{
			auto const
			&	rAliasTarget
			=	i_rComposer
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
			.	Members
			.	Types
				[	vMemberIndex
				]
			=	vComposition
				.	Members
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
