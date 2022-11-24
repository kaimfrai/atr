module Meta.ID:Conversion;

template
	<	char
			t_nCharacter
	>
auto constexpr
(	FromChar
)	(
	)
->	decltype(auto)
{	return t_nCharacter;	}

auto constexpr
(	ToChar
)	(	char
			i_cChar
	)
->	char
{	return i_cChar;	}
