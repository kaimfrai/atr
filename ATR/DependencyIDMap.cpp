export module ATR.DependencyIDMap;

import ATR.Dependency;
import ATR.Erase;

import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.String.Hash;

using ::Meta::String::ImplicitHash;

using namespace ::Meta::Literals;

export namespace
	ATR
{
	template
		<	typename
				t_tProto
		,	ImplicitHash
				t_vMemberName
		>
	concept
		ProtoMemberInterface
	=(	t_tProto
		::	Composition
		.	FindMemberInfo
			(	t_vMemberName
			)
		.	Offset
	>=	0_bit
	);

	template
		<	typename
				t_tOwner
		,	ImplicitHash
			...	t_vpMemberName
		>
	using
		ArgumentDependency
	=	Dependency
		<	ErasedType<t_tOwner>
		,	typename
			decltype(auto(t_tOwner{}))
			::	template
				Offset_Of
				<	t_vpMemberName
				>
			...
		>
	;
}

