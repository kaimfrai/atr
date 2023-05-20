export module Meta.String.Make;

import Meta.String.Decimal;
import Meta.String.ID;
import Meta.String.Literal;
import Meta.String.LowerCase;
import Meta.String.UpperCase;

import Meta.Token.Index;

import Std;

using ::Meta::String::Literal;

export
{
	/// dispatches a string literal into its characters
	///	creates an instance of the given identifer template with all dispatched characters inserted
	template
		<	Literal
				t_vLiteral
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
				<	t_vLiteral
					[	t_npIndex
					]
				>{}
			)
			...
		>
	{	return{};	}
}
