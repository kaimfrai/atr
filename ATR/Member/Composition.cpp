export module ATR.Member.Composition;

import ATR.Member.FlatComposer;
import ATR.Member.FlatComposition;
import ATR.Member.LayoutList;
import ATR.Member.ProtoComposer;

import Meta.ID;
import Meta.Memory.Constraint;
import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Hash;
import Meta.Token.Type;

import Std;

using ::Meta::BitSize;
using ::Meta::Memory::ByteAlign;
using ::Meta::ProtoID;
using ::Meta::SSize;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;

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

		BitSize
			vBitCounts
			[	ByteAlign
				.	Value
			-	1
			]
		{};

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
			=	AddType
				(	vType
				,	o_rComposition
					.	Layout
				,	vBitCounts
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
			=	MemberOffset
				(	vType
				,	o_rComposition
					.	Layout
				,	vBitCounts
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

		if	(	auto const
					vByteCount
				=	ByteCount
					(	vBitCounts
					)
				.	get
					()
			;	vByteCount
			>	0
			)
		{
			// TODO this will fail if byte is not the last type
			(void)
				AddByteType
				(	Type<::std::byte>
				,	o_rComposition
					.	Layout
				,	vByteCount
				)
			;
		}

		delete
			[]
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
			=	o_rComposition
				.	Members
				.	HashIndexFor
					(	rAliasTarget
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
				vAliasedType
			=	o_rComposition
				.	Members
				.	Types
					[	vAliasTargetMemberIndex
					]
			;

			auto const
				vMemberIndex
			=	o_rComposition
				.	Members
				.	AddTypeForHash
					(	rAliasTarget
						.	HashIndex
					,	vAliasedType
					)
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
