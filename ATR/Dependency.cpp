export module ATR.Dependency;

import Meta.String.Hash;

using ::Meta::String::ImplicitHash;

export namespace
	ATR
{
	template
		<	ImplicitHash
				t_vFunctionName
		,	auto
			...	t_vpGlobalDependency
		>
	struct
		GlobalDependency
	{};

	template
		<	typename
				t_tArgument
		,	auto
			...	t_vpArgumentDependency
		>
	struct
		Dependency
	{
		using
			ArgumentType
		=	t_tArgument
		;

		[[no_unique_address]]
		t_tArgument
			Argument
		;
	};
}
