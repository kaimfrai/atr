export module Evaluation.Shared:InPlaceConstruct;

import std;

export
{
	template
		<	typename
				t_tBody
		>
	auto constexpr
		InPlaceConstruct
		()
	noexcept
	->	std::in_place_type_t
		<	t_tBody
		>
	{	return
		std::in_place_type
		<	t_tBody
		>;
	}
}
