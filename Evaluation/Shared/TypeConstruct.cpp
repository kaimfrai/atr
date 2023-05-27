export module Evaluation.Shared.TypeConstruct;

import Meta.ID;
import Meta.String.Literal;

using ::Meta::ID;
using ::Meta::String::Literal;

export
{
	template
		<	Literal
				t_vTypeName
		>
	[[nodiscard]]
	auto constexpr
		TypeConstruct
		()
		noexcept
	->	ID
		<	t_vTypeName
		>
	{	return{};	}
}
