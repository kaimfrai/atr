export module Evaluation.Dependency.DefaultConstruct;

export
{
	template
		<	typename
				t_tBody
		>
	[[nodiscard]]
	auto constexpr inline
	(	DefaultConstruct
	)	()
		noexcept
	->	t_tBody
	{	return{};	}
}
