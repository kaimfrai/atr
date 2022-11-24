module Meta.ID:Make;

import :Conversion;
import :UpperCase;
import :LowerCase;
import :Special;
import :Decimal;
import :Template;
import :StringLiteral;

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
		<	t_vStringLiteral
			[	t_npIndex
			]
		>()
		...
	>
{	return{};	}
