module Meta.ID:Special;

import :Conversion;

char constexpr inline _ = '_';

template<>
auto constexpr
(	FromChar<'_'>
)	()
->	decltype(auto)
{	return (::_); }
