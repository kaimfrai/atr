export module Evaluation.Dependency.InPlaceConstruct;

import Std;

export
{
	template
		<	typename
				t_tBody
		>
	[[nodiscard]]
	auto constexpr
		InPlaceConstruct
		()
		noexcept
	->	::std::in_place_type_t
		<	t_tBody
		>
	{	return
		::std::in_place_type
		<	t_tBody
		>;
	}
}
