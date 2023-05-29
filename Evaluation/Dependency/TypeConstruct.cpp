export module Evaluation.Dependency.TypeConstruct;

import Meta.ID;
import Meta.String.Literal;

using ::Meta::ID;
using ::Meta::ProtoID;
using ::Meta::String::Literal;

export
{
	template
		<	ProtoID
				t_tTypeName
		>
	[[nodiscard]]
	auto constexpr
		TypeConstruct
		()
		noexcept
	->	t_tTypeName
	{	return{};	}
}
