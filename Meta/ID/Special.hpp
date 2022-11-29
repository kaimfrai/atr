module Meta.ID:Special;

import Meta.Token;

char constexpr inline _ = '_';

auto constexpr
(	FromChar
)	(	Meta::IndexToken<'_'>
	)
->	char const&
{	return (::_); }
