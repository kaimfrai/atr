export module Meta.ID.Alias;

import Meta.ID.Make;
import Meta.ID.StringView;
import Meta.ID.StringLiteral;

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
				.	size()
				>{}
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
	ID_T<t_vStringLiteral> constexpr inline
		ID_V
	{};
}

