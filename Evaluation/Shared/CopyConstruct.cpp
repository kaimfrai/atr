export module Evaluation.Shared:CopyConstruct;

export
{
	template
		<	typename
				t_tBody
		>
	auto constexpr
		CopyConstruct
		()
	noexcept
	->	t_tBody
	{	return{};	}
}
