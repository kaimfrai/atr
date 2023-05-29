module Meta.ID:Make;

import :Decimal;
import :Default;
import :ID;
import :LowerCase;
import :UpperCase;

import Meta.String.Literal;
import Meta.Token.Index;

import Std;

using ::Meta::IndexToken;
using ::Meta::String::Literal;

template
	<	Literal
			t_vLiteral
	,	::std::size_t
		...	t_vpIndex
	>
auto constexpr
(	Make
)	(	::std::index_sequence
		<	t_vpIndex
			...
		>
	)
	noexcept
->	::ID
	<	::FromChar
		(	IndexToken
			<	t_vLiteral
				[	t_vpIndex
				]
			>{}
		)
		...
	>
{	return{};	}
