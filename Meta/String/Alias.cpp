export module Meta.String.Alias;

import Meta.String.Make;
import Meta.String.Literal;

import Std;

export namespace
	Meta
{
	/// creates an identifier type
	template
		<	String::Literal
				t_vLiteral
		>
	using
		ID_T
	=	decltype
		(	::Make
			<	t_vLiteral
			>(	::std::make_index_sequence
				<	t_vLiteral
					.	max_size
						()
				>{}
			)
		)
	;

	/// create an identifier value
	template
		<	String::Literal
				t_vLiteral
		>
	ID_T<t_vLiteral> constexpr
		ID_V
	{};
}

