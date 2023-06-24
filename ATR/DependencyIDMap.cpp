export module ATR.DependencyIDMap;

import ATR.Dependency;
import ATR.Erase;
import ATR.Member.ConfigData;

import Meta.ID;
import Meta.String.Chain;

import Std;

using ::Meta::ProtoID;
using ::Meta::String::Chain;

export namespace
	ATR::Trait
{
	[[nodiscard]]
	auto constexpr inline
	(	HasDataMember
	)	(	Member::ConfigData const
			&	i_rConfig
		,	Chain
				i_rMemberName
		)
		noexcept
	->	bool
	{
		for	(	auto const
				&	rNamedInfo
			:	i_rConfig
				.	NamedInfoList
			)
		{
			auto const
				vCompare
			=	(	rNamedInfo
				<=>	i_rMemberName
				)
			;
			if	(	::std::is_eq
					(	vCompare
					)
				)
			{	return
					true
				;
			}

			if	(	::std::is_gt
					(	vCompare
					)
				)
			{	return
					false
				;
			}
		}

		return
			false
		;
	}
}

export namespace
	ATR
{
	template
		<	typename
				t_tProto
		,	typename
				t_tMemberName
		>
	concept
		ProtoMemberInterface
	=	::ATR::Trait::HasDataMember
		(	t_tProto
			::	Config
		,	t_tMemberName
			{}
		)
	;

	template
		<	typename
				t_tOwner
		,	ProtoID
			...	t_tpMemberName
		>
	using
		ArgumentDependency
	=	Dependency
		<	ErasedType<t_tOwner>
		,	typename
			decltype(auto(t_tOwner{}))
			::	template
				Offset_Of
				<	t_tpMemberName
				>
			...
		>
	;
}

