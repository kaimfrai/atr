export module ATR.DependencyIDMap;

import ATR.Dependency;
import ATR.Erase;

import Meta.String.Hash;

using ::Meta::String::ImplicitHash;

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
	=	requires
		{	t_tProto
			::	template
				Offset_Of
				<	t_vMemberName
				>
			;
		}
	;

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
		,	t_tOwner{}
			.	template
				Offset_Of
				<	t_vpMemberName
				>
			...
		>
	;
}

