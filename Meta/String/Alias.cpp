export module Meta.String.Alias;

import Meta.String.Make;
import Meta.String.StringLiteral;

import Std;

export namespace
	Meta
{
	/// creates an identifier type
	template
		<	StringLiteral
				t_vStringLiteral
		>
	using
		ID_T
	=	decltype
		(	::Make
			<	t_vStringLiteral
			>(	::std::make_index_sequence
				<	t_vStringLiteral
					.	max_size
						()
				>{}
			)
		)
	;

	/// create an identifier value
	template
		<	StringLiteral
				t_vStringLiteral
		>
	ID_T<t_vStringLiteral> constexpr
		ID_V
	{};
}

