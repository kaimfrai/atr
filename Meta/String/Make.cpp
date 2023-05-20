export module Meta.String.Make;

import Meta.String.UpperCase;
import Meta.String.LowerCase;
import Meta.String.Decimal;
import Meta.String.Template;
import Meta.String.StringLiteral;

import Meta.Token.Index;

import Std;

export
{
	/// dispatches a string literal into its characters
	///	creates an instance of the given identifer template with all dispatched characters inserted
	template
		<	Meta::StringLiteral
				t_vStringLiteral
		,	::std::size_t
			...	t_npIndex
		>
	auto constexpr
	(	Make
	)	(	::std::index_sequence
			<	t_npIndex
				...
			>
		)
	->	::Meta::ID
		<	::FromChar
			(	Meta::IndexToken
				<	t_vStringLiteral
					[	t_npIndex
					]
				>{}
			)
			...
		>
	{	return{};	}
}
