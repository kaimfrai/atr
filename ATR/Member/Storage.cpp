export module ATR.Member.Storage;

import ATR.Member.Name;
import ATR.Member.Config;

import Meta.ID.Concept;
import Meta.Memory.Size.Compare;

import Std;

using ::Meta::ProtoID;

export namespace
	ATR::Member
{
	enum class
		EStorage
	:	::std::uint8_t
	{	None
	,	Dynamic
	,	Static
	};

	[[nodiscard]]
	auto constexpr
	(	GetStorage
	)	(	ProtoID auto
				i_vTypeName
		,	NameView
				i_rMemberName
		)
		noexcept
	->	EStorage
	{
		auto constexpr
		&	rConfig
		=	Config_Of
			<	i_vTypeName
			>
		;

		if	(	auto const
					vOffset
				=	rConfig
					.	FindMemberInfo
						(	i_rMemberName
						)
			;	vOffset
				.	has_value
					()
			)
		{
			if	(	vOffset
					.	value
						()
					.	Offset
				<	rConfig
					.	Size
				)
			{	return
					EStorage::Dynamic
				;
			}
			else
			{	return
					EStorage::Static
				;
			}
		}

		return
			EStorage::None
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
	and	(	GetStorage
			(	t_tTypeName
				{}
			,	t_tProto
				{}
			)
		==	EStorage::Dynamic
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
	and	::Meta::ProtoID
		<	t_tTypeName
		>
	and	(	GetStorage
			(	t_tTypeName
				{}
			,	t_tProto
				{}
			)
		==	EStorage::Static
		)
	;
}
