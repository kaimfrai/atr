module Meta.ID:Default;

import Meta.Token.Index;

using ::Meta::IndexToken;

auto constexpr
(	ToChar
)	(	char
			i_cChar
	)
->	char
{	return i_cChar;	}

template
	<	char
			t_nCharacter
	>
auto constexpr
(	FromChar
)	(	IndexToken<t_nCharacter>
	)
->	char
{	return t_nCharacter;	}
