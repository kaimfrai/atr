export module ATR.Dependency;

import Meta.ID;
import Meta.String.Literal;

using ::Meta::ID;
using ::Meta::String::Literal;

export namespace
	ATR
{
	/// wraps around an object and provides member access via dependency maps
	template
		<	typename
				t_tArgument
		,	typename
			...	t_tpItem
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
