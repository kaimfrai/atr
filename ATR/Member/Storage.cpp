export module ATR.Member.Storage;

import ATR.Member.Config;

import Meta.ID;
import Meta.String.Chain;

using ::Meta::String::Chain;
using ::Meta::ProtoID;

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr inline
	(	IsDynamicMember
	)	(	ProtoID auto
				i_vTypeName
		,	Chain
				i_rMemberName
		)
		noexcept
	->	bool
	{	return
			Config_Of
			<	decltype(i_vTypeName)
			>
			.	FindMemberInfo
				(	i_rMemberName
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
			(	t_tTypeName
				{}
			,	t_tProto
				{}
			)
		)
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tTypeName
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
			(	t_tTypeName
				{}
			,	t_tProto
				{}
			)
		)
	;
}
