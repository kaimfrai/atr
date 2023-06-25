export module ATR.DependencyIDMap;

import ATR.Dependency;
import ATR.Erase;
import ATR.Member.ConfigData;

import Meta.ID;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.String.Chain;

import Std;

using ::Meta::ProtoID;
using ::Meta::String::Chain;

using namespace ::Meta::Literals;

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
	=(	t_tProto
		::	Config
		.	FindMemberInfo
			(	t_tMemberName
				{}
			)
		.	Offset
	>=	0_bit
	);

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

