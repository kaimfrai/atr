export module Evaluation.Dependency.CopyConstruct;

export
{
	template
		<	typename
				t_tBody
		>
	[[nodiscard]]
	auto constexpr
		CopyConstruct
		()
	noexcept
	->	t_tBody
	{	return{};	}
}
