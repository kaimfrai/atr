export module Evaluation.Shared.TypeConstruct;

import Meta.Token.Type;

export
{
	template
		<	typename
				t_tBody
		>
	[[nodiscard]]
	auto constexpr
		TypeConstruct
		()
		noexcept
	->	::Meta::TypeToken
		<	t_tBody
		>
	{	return{};	}
}
