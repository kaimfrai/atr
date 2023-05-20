export module Meta.ID:Literals;

import :Alias;
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
	->	String::ID_T
		<	t_vString
		>
	{	return{};	}
}

