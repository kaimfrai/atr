export module Meta.ID.Alias;

import Meta.ID.Make;
export import Meta.ID.StringView;
export import Meta.ID.StringLiteral;

import Meta.Token.Sequence;

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
			>(	Meta::Sequence<t_vStringLiteral.size()>
			)
		)
	;

	template
		<	StringView
				t_vString
		>
	using
		ID_Of
	=	ID_T
		<	StringLiteral<t_vString.size()>
			{	t_vString.data()
			}
		>
	;

	/// create an identifier value
	template
		<	StringLiteral
				t_vStringLiteral
		>
	ID_T<t_vStringLiteral> extern
		ID_V
	;
}

