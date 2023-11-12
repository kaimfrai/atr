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
		<	ProtoID
				t_tTypeName
		,	typename
			...	t_tpDecorator
		>
	[[nodiscard]]
	auto constexpr inline
	(	IsDynamicMember
	)	(	Hash
				i_vMemberName
		)
		noexcept
	->	bool
	{	return
				Composition_Of
				<	t_tTypeName
				,	t_tpDecorator
					...
				>
			.	FindMemberInfo
				(	i_vMemberName
				)
			.	Type
			.	IsAligned
				()
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
	and	ProtoID
		<	t_tTypeName
		>
	and	(	IsDynamicMember
			<	t_tTypeName
			,	t_tpDecorator
				...
			>(	t_tProto
				{}
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
	and	ProtoID
		<	t_tTypeName
		>
	and	(	not
			IsDynamicMember
			<	t_tTypeName
			,	t_tpDecorator
				...
			>(	t_tProto
				{}
			)
		)
	;
}
