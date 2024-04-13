export module ATR.Member.Storage;

import ATR.Member.Composition;

import Meta.ID;
import Meta.String.Hash;

using ::Meta::ProtoID;
using ::Meta::String::Hash;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	[[nodiscard]]
	auto constexpr inline
	(	IsAlignedMember
	)	(	Hash
				i_vMemberName
		,	bool
				i_vIsAligned
		)
		noexcept
	->	bool
	{
		auto const
		&	rComposition
		=	Composition_Of
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		;
		auto const
			vHashIndex
		=	rComposition
			.	Members
			.	HashIndexFor
				(	i_vMemberName
				)
		;
		if	(	not
				rComposition
				.	Members
				.	HasMember
					[	vHashIndex
					][	0u
					]
			)
		{	return
				false
			;
		}

		auto const
			vMemberIndex
		=	rComposition
			.	Members
			.	MemberIndices
				[	vHashIndex
				]
		;

		auto const
			vType
		=	rComposition
			.	GetMemberType
				(	vMemberIndex
				)
		;

		return
			vType
			.	IsAligned
				()
		==	i_vIsAligned
		;
	}

	template
		<	typename
				t_tProto
		,	typename
				t_tTypeName
		,	typename
			...	t_tpDecorator
		>
	concept
		ProtoDynamicMember_Of
	=	ProtoID
		<	t_tProto
		>
	and	(	IsAlignedMember
			<	t_tTypeName
			,	t_tpDecorator
				...
			>(	t_tProto
				{}
			,	true
			)
		)
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tTypeName
		,	typename
			...	t_tpDecorator
		>
	concept
		ProtoStaticMember_Of
	=	ProtoID
		<	t_tProto
		>
	and	(	IsAlignedMember
			<	t_tTypeName
			,	t_tpDecorator
				...
			>(	t_tProto
				{}
			,	false
			)
		)
	;
}
