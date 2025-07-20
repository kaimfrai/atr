export module Meta.ID:Alias;

import :Make;

import Meta.String.Literal;

import std;

using ::Meta::String::Literal;

export namespace
	Meta
{
	template
		<	Literal
				t_vLiteral
		>
	using
		ID
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

