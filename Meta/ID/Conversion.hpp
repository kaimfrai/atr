module Meta.ID:Conversion;

template
	<	char8_t
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
)	(	char8_t
			i_cChar
	)
->	char8_t
{	return i_cChar;	}
