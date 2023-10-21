export module ATR.Member.Composition;

import ATR.Member.FlatComposer;
import ATR.Member.FlatComposition;
import ATR.Member.LayoutList;
import ATR.Member.ProtoComposer;

import Meta.ID;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::ByteSize;
using ::Meta::BitSize;
using ::Meta::Memory::ByteAlign;
using ::Meta::ProtoID;
using ::Meta::SSize;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

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

		BitSize
			vTotalBitCount
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

			if	(	not
					vType
					.	IsAligned
					()
				)
			{
				aTypeIndices
					[	vMemberIndex
					]
				=	0
				;
				continue
				;
			}

			auto const
				vAlign
			=	vType
				.	GetAlign
					()
			;

			if	(	vAlign
				<	ByteAlign
				)
			{
				auto const
					vSize
				=	vType
					.	GetSize
						()
				;

				auto
				&	rBitCount
				=	vBitCounts
						[	ByteAlign
							.	Value
						-	vAlign
							.	Value
						-	1
						]
				;

				auto const
					vPreviousIndex
				=	rBitCount
					.	Value
				;

				rBitCount
				+=	vSize
				;
				vTotalBitCount
				+=	vSize
				;

				aTypeIndices
					[	vMemberIndex
					]
				=	vPreviousIndex
				;

				continue
				;
			}

			aTypeIndices
				[	vMemberIndex
				]
			=	AddByteType
				(	vType
				,	o_rComposition
					.	Layout
						[	vAlign
						]
				,	1z
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

		if	(	ByteSize const
					vTotalByteCount
				=	vTotalBitCount
			;	vTotalByteCount
			>	0_byte
			)
		{
			TypeID const
				vByte
			=	Type<::std::byte>
			;

			// TODO this will fail if byte is not the last type
			(void)
				AddByteType
				(	vByte
				,	o_rComposition
					.	Layout
						[	vByte
							.	GetAlign
								()
						]
				,	vTotalByteCount
					.	get
						()
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
