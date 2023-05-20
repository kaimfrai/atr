export module Meta.String.Literals;

import Meta.String.Alias;
import Meta.String.Literal;

export namespace
	Meta::inline Literals
{
	template
		<	String::Literal
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

