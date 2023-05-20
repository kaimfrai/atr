export module Meta.ID:Alias;

import :Make;

import Meta.String.Literal;

import Std;

using ::Meta::String::Literal;

export namespace
	Meta
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

