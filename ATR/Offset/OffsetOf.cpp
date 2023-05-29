export module ATR.Member.OffsetOf;

import ATR.Member.Config;
import ATR.Member.Offset;

import Meta.ID;
import Meta.Memory.Alignment;
import Meta.Token.Type;

using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr
	(	OffsetOf
	)	(	ProtoID auto
				i_vMemberName
		,	ProtoID auto
				i_vOwnerName
		)
		noexcept
	{
		auto constexpr
		&	rConfig
		=	Config_Of
			<	decltype(i_vOwnerName)
			>
		;

		auto constexpr
			vMemberInfo
		=	rConfig
			.	FindMemberInfo
				(	i_vMemberName
				)
		;
		return
		Offset
		<	vMemberInfo
			->	Offset
		,	RestoreTypeEntity
			<	vMemberInfo
				->	Type
			>
		>{};
	}
}
