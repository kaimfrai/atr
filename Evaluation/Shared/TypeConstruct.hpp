export module Evaluation.Shared:TypeConstruct;

export import Meta.Token.Type;

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
