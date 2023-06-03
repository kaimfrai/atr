export module Evaluation.Dependency.DefaultConstruct;

export
{
	template
		<	typename
				t_tBody
		>
	[[nodiscard]]
	auto constexpr
	(	DefaultConstruct
	)	()
		noexcept
	->	t_tBody
	{	return{};	}
}
