export module ATR.Member.OffsetOf;

import ATR.Member.Config;
import ATR.Member.Static;
import ATR.Member.Offset;

import Meta.ID.Concept;
import Meta.Token.Type;
import Meta.Memory.Alignment;

using namespace ::Meta::Literals;

using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;

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
			<	i_vOwnerName
			>
		;

		auto constexpr
			vMemberInfo
		=	rConfig
			.	FindMemberInfo
				(	i_vMemberName
				)
		;

		if	constexpr
			(	vMemberInfo
				->	Type
				.	GetAlign
					()
			!=	0_align
			)
		{
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
		else
		{	return
			Static
			<	RestoreTypeEntity
				<	vMemberInfo
					->	Type
				>
			>{};
		}
	}
}
