export module Evaluation.Shared:TypeConstruct;

export import Meta.Token;

export
{
	template
		<	typename
				t_tBody
		>
	auto constexpr
		TypeConstruct
		()
	noexcept
	->	Meta::TypeToken
		<	t_tBody
		>
	{	return{};	}
}
