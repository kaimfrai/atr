module Meta.ID:Default;

import Meta.Token.Index;

using ::Meta::IndexToken;

auto constexpr
(	ToChar
)	(	char
			i_vChar
	)
	noexcept
->	char
{	return i_vChar;	}

template
	<	char
			t_vCharacter
	>
auto constexpr
(	FromChar
)	(	IndexToken<t_vCharacter>
	)
	noexcept
->	char
{	return t_vCharacter;	}
