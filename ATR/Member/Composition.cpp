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
	auto constexpr inline
	(	ComputeOffsets
	)	(	FlatComposition
			&	o_rComposition
		)
		noexcept
	->	void
	{
		auto
		*	const
			aTypeIndices
		=	new
			SSize
				[	static_cast<::std::size_t>
					(	o_rComposition
						.	Members
						.	MemberCount
					)
				]
		;

		for	(	::std::int16_t
					vMemberIndex
				=	0
			;	(	vMemberIndex
				<	o_rComposition
					.	Members
					.	MemberCount
				)
			;	++	vMemberIndex
			)
		{
			auto const
				vType
			=	o_rComposition
				.	Members
				.	Types
					[	vMemberIndex
					]
			;

			aTypeIndices
				[	vMemberIndex
				]
			=	o_rComposition
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
				<	o_rComposition
					.	Members
					.	MemberCount
				)
			;	++	vMemberIndex
			)
		{
			auto const
				vType
			=	o_rComposition
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
			=	o_rComposition
				.	Layout
				.	MemberOffset
					(	vType
					,	vTypeIndex
					)
			;
			o_rComposition
			.	Offsets
				[	vMemberIndex
				]
			=	vOffset
			;
		}

		delete[]
			aTypeIndices
		;
	}

	auto constexpr inline
	(	ResolveAliases
	)	(	FlatComposition
			&	o_rComposition
		,	FlatComposer::AliasTarget const
			*	i_aAliasTargets
		,	::std::int16_t
				i_vAliasCount
		)
		noexcept
	->	void
	{
		for	(	::std::int16_t
					vIndex
				=	0
			;	(	vIndex
				<	i_vAliasCount
				)
			;	++	vIndex
			)
		{
			auto const
			&	rAliasTarget
			=	i_aAliasTargets
					[	vIndex
					]
			;

			auto const
				vAliasTargetHashIndex
			=	HashFindIndex
				(	o_rComposition
					.	Members
					.	Names
				,	o_rComposition
					.	Members
					.	BucketSize
				,	rAliasTarget
					.	Target
				)
			;

			auto const
				vAliasTargetMemberIndex
			=	o_rComposition
				.	Members
				.	MemberIndices
					[	vAliasTargetHashIndex
					]
			;

			auto const
				vMemberIndex
			=	o_rComposition
				.	Members
				.	MemberCount
				++
			;

			o_rComposition
			.	Members
			.	MemberIndices
				[	rAliasTarget
					.	HashIndex
				]
			=	vMemberIndex
			;

			o_rComposition
			.	Members
			.	Types
				[	vMemberIndex
				]
			=	o_rComposition
				.	Members
				.	Types
					[	vAliasTargetMemberIndex
					]
			;

			o_rComposition
			.	Offsets
				[	vMemberIndex
				]
			=	o_rComposition
				.	Offsets
					[	vAliasTargetMemberIndex
					]
			;
		}
	}

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

		ComputeOffsets
		(	vComposition
		);

		ResolveAliases
		(	vComposition
		,	i_rComposer
			.	AliasTargets
		,	i_rComposer
			.	AliasCount
		);

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
