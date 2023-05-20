export module Meta.String.Alias;

import Meta.String.Make;
import Meta.String.Literal;

import Std;

export namespace
	Meta::String
{
	/// creates an identifier type
	template
		<	Literal
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
}

