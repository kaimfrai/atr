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
using ::Meta::String::Hash;
using ::Meta::Type;
using ::Meta::TypeID;

namespace
	ATR::Member
{
	TypeID constexpr inline
		ByteType
	=	Type<::std::byte>
	;

	TypeID constexpr inline
		PointerType
	=	Type<void*>
	;

	template
		<	short
				t_vDistrictCount
		>
	auto constexpr inline
	(	SetOffsets
	)	(	FlatComposition<t_vDistrictCount>
			&	o_rComposition
		,	DistrictByteMemberIndexView
				i_rByteMemberIndexBuffer
		,	DistrictBitMemberIndexView
				i_rBitMemberIndexBuffer
		,	short
				i_vDistrictIndex
		)
		noexcept
	->	void
	{
		BitSize
			vTotalOffset
		{};

		for	(	short
					vMemberIndex
			:	i_rByteMemberIndexBuffer
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

			for	(	int
						vUnionIndex
					=	0
				;	(	vUnionIndex
					<	o_rComposition
						.	Members
						.	UnionCount
					)
				;	++	vUnionIndex
				)
			{
					o_rComposition
					.	Offsets
					[	vMemberIndex
					][	vUnionIndex
					]
				=	vTotalOffset
				;
			}

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
			:	i_rBitMemberIndexBuffer
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
			for	(	int
						vUnionIndex
					=	0
				;	(	vUnionIndex
					<	o_rComposition
						.	Members
						.	UnionCount
					)
				;	++	vUnionIndex
				)
			{
					o_rComposition
					.	Offsets
					[	vMemberIndex
					][	vUnionIndex
					]
				=	vTotalOffset
				;
			}
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
				(	ByteType
				,	o_rComposition
					.	Layout
						[	i_vDistrictIndex
						][	ByteAlign
						]
				,	vBitBytes
				)
			;
		}
	}

	template
		<	short
				t_vDistrictCount
		>
	auto constexpr inline
	(	ComputeOffsets
	)	(	FlatComposition<t_vDistrictCount>
			&	o_rComposition
		,	Hash const
			*	i_aDistrictNames
		,	Hash const
			*	i_aHostDistrictNames
		,	short
				i_vAliasCount
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

		ByteMemberIndexBuffer<t_vDistrictCount>
			vMemberIndexBuffer
		{	static_cast<short>
			(	vMemberCount
			+	t_vDistrictCount
			)
		,	o_rComposition
			.	Layout
		};

		BitMemberIndexBuffer<t_vDistrictCount>
			vBitMemberIndexBuffer
		{	static_cast<short>
			(	vMemberCount
			+	t_vDistrictCount
			)
		};

		short
			vMemberPerDistrictCount
			[	t_vDistrictCount
			+	1
			]
		{};

		for	(	short
					vMemberIndex
				=	0
			;	(	vMemberIndex
				<	vMemberCount
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
			{	continue
				;
			}

			auto const
				vDistrictIndex
			=	o_rComposition
				.	Members
				.	DistrictIndices
					[	vMemberIndex
					]
			;

			++	vMemberPerDistrictCount
				[	vDistrictIndex
				]
			;

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
					==	ByteType
					)
				)
			{
				vBitMemberIndexBuffer
				.	AppendMemberIndex
					(	vDistrictIndex
					,	vAlign
					,	vMemberIndex
					)
				;
				continue
				;
			}

			vMemberIndexBuffer
			.	AppendMemberIndex
				(	vType
				,	vDistrictIndex
				,	vAlign
				,	vMemberIndex
				)
			;
		}

		// Higher districts are allowed to nest in lower districts
		// but not vice versa
		for	(	short
					vDistrictIndex
				=	t_vDistrictCount
			;		vDistrictIndex
				>	0
			;	--	vDistrictIndex
			)
		{
			if	(	vMemberPerDistrictCount
					[	vDistrictIndex
					]
				<=	0
				)
			{	continue
				;
			}

			Hash const
				vHostDistrictName
			=	i_aHostDistrictNames
				[	vDistrictIndex
				]
			;

			for	(	short
						vHostDistrictIndex
					=	vDistrictIndex
					-	1
				;		vHostDistrictIndex
					>=	0
				;	++	vHostDistrictIndex
				)
			{
				if	(	i_aDistrictNames
						[	vHostDistrictIndex
						]
					!=	vHostDistrictName
					)
				{	continue
					;
				}

				short const
					vMemberIndex
				=	vMemberCount
				+	i_vAliasCount
				-	1
				+	vDistrictIndex
				;

				vMemberIndexBuffer
				.	AppendMemberIndex
					(	PointerType
					,	vHostDistrictIndex
					,	PointerType
						.	GetAlign
							()
					,	vMemberIndex
					)
				;

				o_rComposition
				.	Members
				.	Types
					[	vMemberIndex
					]
				=	PointerType
				;
				o_rComposition
				.	Members
				.	DistrictIndices
					[	vMemberIndex
					]
				=	vHostDistrictIndex
				;

				++	vMemberPerDistrictCount
					[	vHostDistrictIndex
					]
				;

				break
				;
			}
		}

		for	(	short
					vDistrictIndex
				=	0
			;		vDistrictIndex
				<=	t_vDistrictCount
			;	++	vDistrictIndex
			)
		{
			SetOffsets
			(	o_rComposition
			,	vMemberIndexBuffer
				[	vDistrictIndex
				]
			,	vBitMemberIndexBuffer
				[	vDistrictIndex
				]
			,	vDistrictIndex
			);
		}
	}

	template
		<	short
				t_vDistrictCount
		>
	auto constexpr inline
	(	ResolveAliases
	)	(	FlatComposition<t_vDistrictCount>
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

			[[assume("Alias targets non-existent member" && vAliasTargetMemberIndex >= 0)]];

			auto const
				vAliasedType
			=	o_rComposition
				.	Members
				.	Types
					[	vAliasTargetMemberIndex
					]
			;

			auto const
				vAliasedDistrictIndex
			=	o_rComposition
				.	Members
				.	DistrictIndices
					[	vAliasTargetMemberIndex
					]
			;

			auto
			&	rMemberIndex
			=	o_rComposition
				.	Members
				.	MemberIndices
				[	rAliasTarget
						.	HashIndex
				]
			;

			if	(	rMemberIndex
				<	0
				)
			{	o_rComposition
				.	Members
				.	AddNewMember
					(	rMemberIndex
					,	vAliasedType
					,	vAliasedDistrictIndex
					,	rAliasTarget
						.	Suffix
					)
				;
			}

				o_rComposition
				.	Offsets
				[	rMemberIndex
				][	rAliasTarget
					.	UnionIndex
				]
			=	o_rComposition
				.	Offsets
				[	vAliasTargetMemberIndex
				][	rAliasTarget
					.	UnionIndex
				]
			;
		}
	}

	template
		<	short
				t_vDistrictCount
		>
	[[nodiscard]]
	auto constexpr inline
	(	Finalize
	)	(	FlatComposer
			&&	i_rComposer
		,	Hash const
			*	i_aDistrictNames
		,	Hash const
			*	i_aHostDistrictNames
		)
		noexcept
	->	FlatComposition<t_vDistrictCount>
	{
		FlatComposition<t_vDistrictCount>
			vComposition
		{	.	Members
			=	i_rComposer
				.	Members
		};

		ComputeOffsets
		(	vComposition
		,	i_aDistrictNames
		,	i_aHostDistrictNames
		,	i_rComposer
			.	AliasCount
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

	[[nodiscard]]
	auto constexpr inline
	(	GetDistrictNames
	)	(	auto
			...	i_vpDistrict
		)
		noexcept
	->	Hash const*
	{
		Hash static constexpr
			vDistrictNames
			[]
		{	Hash{}
		,	i_vpDistrict
			.	DistrictName
			...
		};

		return
			vDistrictNames
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	GetHostDistrictNames
	)	(	auto
			...	i_vpDistrict
		)
		noexcept
	->	Hash const*
	{
		Hash static constexpr
			vHostDistrictNames
			[]
		{	Hash{}
		,	i_vpDistrict
			.	HostDistrictName
			...
		};

		return
			vHostDistrictNames
		;
	}

	template
		<	typename
				t_tDisctrict
		>
	[[nodiscard]]
	auto constexpr inline
	(	Hosts
	)	(	Hash
				i_vName
		,	short
			&	o_rIndex
		)
		noexcept
	->	bool
	{
		auto const
			vHosted
		=	t_tDisctrict
			::	Hosts
				(	i_vName
				)
		;
		o_rIndex
		-=	not
			vHosted
		;
		return
			vHosted
		;
	}

	template
		<	typename
			...	t_tpDistrict
		>
	[[nodiscard]]
	auto constexpr inline
	(	DistrictIndexOf
	)	(	Hash
				i_vName
		)
		noexcept
	->	short
	{
		short
			vDistrictIndex
		=	sizeof...(t_tpDistrict)
		;

		// Right to left: Deepest layout first
		(void)
		(	Hosts<t_tpDistrict>
			(	i_vName
			,	vDistrictIndex
			)
		or	...
		);
		// If no layout accepts, this is 0, the default layout
		return
			vDistrictIndex
		;
	}
}

export namespace
	ATR::Member
{
	template
		<	ProtoID
			...	t_tpTypeName
		>
	struct
		Union
	{
		[[nodiscard]]
		auto static constexpr inline
		(	IndexOf
		)	(	ImplicitHash
					i_vHash
			)
			noexcept
		->	::std::size_t
		{
			::std::size_t
				vIndex
			{};
			if	((	...
				or	(	(	t_tpTypeName
							{}
						==	i_vHash
						)
					or	(	void
							(	++	vIndex
							)
						,	false
						)
					)
				))
			{	return
					vIndex
				;
			}
			::std::unreachable
			();
		}

	};

	[[nodiscard]]
	auto constexpr inline
	(	MakeCompleteType
	)	(	ProtoComposer auto
			&&	i_rComposer
		,	ProtoID auto
				i_vTypeName
		)
	->	auto&&
	{	return
			Recompose
			(	static_cast<decltype(i_rComposer)>
				(	i_rComposer
				)
			,	i_vTypeName
			)
		.	CompleteType
			()
		;
	}

	template
		<	ProtoID
			...	t_tpTypeName
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeCompleteType
	)	(	ProtoComposer auto
			&&	i_rComposer
		,	Union
			<	t_tpTypeName
				...
			>
		)
		noexcept
	->	auto&&
	{	(	...
		,	void
			(	Recompose
				(	static_cast<decltype(i_rComposer)>
					(	i_rComposer
					)
				,	t_tpTypeName
					{}
				)
			.	CompleteType
				()
			)
		);

		if	constexpr
			(	sizeof...(t_tpTypeName)
			>	1
			)
		{	return
			i_rComposer
			.	Member
				(	"UnionTag"
				,	Type<unsigned char>
				)
			;
		}
		else
		{	return
			static_cast<decltype(i_rComposer)>
			(	i_rComposer
			);
		}
	}

	template
		<	typename
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	auto constexpr inline
		Composition_Of
	=	::ATR::Member::Finalize
		<	sizeof...(t_tpDistrict)
		>(	MakeCompleteType
			(	FlatComposer
				{	.	DistrictIndexOf
					=	&DistrictIndexOf
						<	t_tpDistrict
							...
						>
				}
			,	t_tTypeName
				{}
			)
		,	GetDistrictNames
			(	t_tpDistrict
				{}
				...
			)
		,	GetHostDistrictNames
			(	t_tpDistrict
				{}
				...
			)
		)
	;
}
