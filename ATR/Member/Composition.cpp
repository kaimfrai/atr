export module ATR.Member.Composition;

import ATR.Member.BitMemberIndexBuffer;
import ATR.Member.ByteMemberIndexBuffer;
import ATR.Member.Constants;
import ATR.Member.FlatComposer;
import ATR.Member.FlatComposition;
import ATR.Member.LayoutList;
import ATR.Member.ProtoComposer;

import Meta.ID;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::ByteSize;
using ::Meta::ProtoID;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;

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
		auto const
			vMemberCount
		=	o_rComposition
			.	Members
			.	MemberCount
		;

		ByteMemberIndexBuffer
			vMemberIndexBuffer
		{	vMemberCount
		,	o_rComposition
			.	Layout
			.	ElementCounts
		};

		BitMemberIndexBuffer
			vBitMemberIndexBuffer
		{	vMemberCount
		};

		TypeID constexpr static
			vByteType
		=	Type<::std::byte>
		;

		for	(	short
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

			if	(	not
					vType
					.	IsAligned
					()
				)
			{
				continue
				;
			}

			auto const
				vAlign
			=	vType
				.	GetAlign
					()
			;

			if	(	(	vAlign
					<	ByteAlign
					)
				or	(	vType
					==	vByteType
					)
				)
			{
				vBitMemberIndexBuffer
				.	AppendMemberIndex
					(	vAlign
					,	vMemberIndex
					)
				;
				continue
				;
			}

			auto const
				vTypeIndex
			=	AddByteType
				(	vType
				,	o_rComposition
					.	Layout
						[	vAlign
						]
				,	1z
				)
			;

			vMemberIndexBuffer
			.	AppendMemberIndex
				(	vAlign
				,	vTypeIndex
				,	vMemberIndex
				)
			;
		}


		BitSize
			vTotalOffset
		{};

		for	(	short
					vMemberIndex
			:	vMemberIndexBuffer
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
			o_rComposition
			.	Offsets
				[	vMemberIndex
				]
			=	vTotalOffset
			;
			vTotalOffset
			+=	vType
				.	GetSize
					()
			;
		}

		BitSize
			vByteCount
		{};

		for	(	short
					vMemberIndex
			:	vBitMemberIndexBuffer
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
			o_rComposition
			.	Offsets
				[	vMemberIndex
				]
			=	vTotalOffset
			;
			vTotalOffset
			+=	vType
				.	GetSize
					()
			;
			vByteCount
			+=	vType
				.	GetSize
					()
			;
		}

		if	(	auto const
					vBitBytes
				=	ByteSize
					(	vByteCount
					)
					.	get
						()
			;	vBitBytes
			>	0
			)
		{	(void)
				AddByteType
				(	vByteType
				,	o_rComposition
					.	Layout
						[	vByteType
							.	GetAlign
								()
						]
				,	ByteSize(vByteCount)
					.	get
						()
				)
			;
		}
	}

	auto constexpr inline
	(	ResolveAliases
	)	(	FlatComposition
			&	o_rComposition
		,	FlatComposer::AliasTarget const
			*	i_aAliasTargets
		,	short
				i_vAliasCount
		)
		noexcept
	->	void
	{
		for	(	short
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
			).	IsValid
				()
		;
	}
}
