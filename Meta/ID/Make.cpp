module Meta.ID:Make;

import :Decimal;
import :ID;
import :LowerCase;
import :UpperCase;

import Meta.String.Literal;
import Meta.Token.Index;

import Std;

using ::Meta::IndexToken;
using ::Meta::String::Literal;

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
		(	IndexToken
			<	t_vLiteral
				[	t_npIndex
				]
			>{}
		)
		...
	>
{	return{};	}
