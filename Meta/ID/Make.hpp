module Meta.ID:Make;

import :UpperCase;
import :LowerCase;
import :Decimal;
import :Template;
import :StringLiteral;

import Meta.Token;
import Meta.Arithmetic.Size;

template
	<	char
			t_nCharacter
	>
auto constexpr
(	FromChar
)	(	Meta::IndexToken<t_nCharacter>
	)
->	char
{	return t_nCharacter;	}

/// dispatches a string literal into its characters
///	creates an instance of the given identifer template with all dispatched characters inserted
template
	<	Meta::StringLiteral
			t_vStringLiteral
	,	Meta::USize
		...	t_npIndex
	>
auto constexpr
(	Make
)	(	Meta::IndexToken
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
