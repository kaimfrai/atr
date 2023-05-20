export module Meta.ID:Literals;

import :Alias;

import Meta.String.Literal;

using ::Meta::String::Literal;

export namespace
	Meta::inline Literals
{
	template
		<	Literal
				t_vString
		>
	[[nodiscard]]
	auto constexpr
	(	operator
		""_ID
	)	()
	->	ID_T
		<	t_vString
		>
	{	return{};	}
}

