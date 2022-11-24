module Meta.ID:Decimal;

import :Conversion;

template<>
auto constexpr
(	FromChar<'0'>
)	()
->	decltype(auto)
{	return 0; }
template<>
auto constexpr
(	FromChar<'1'>
)	()
->	decltype(auto)
{	return 1; }
template<>
auto constexpr
(	FromChar<'2'>
)	()
->	decltype(auto)
{	return 2; }
template<>
auto constexpr
(	FromChar<'3'>
)	()
->	decltype(auto)
{	return 3; }
template<>
auto constexpr
(	FromChar<'4'>
)	()
->	decltype(auto)
{	return 4; }
template<>
auto constexpr
(	FromChar<'5'>
)	()
->	decltype(auto)
{	return 5; }
template<>
auto constexpr
(	FromChar<'6'>
)	()
->	decltype(auto)
{	return 6; }
template<>
auto constexpr
(	FromChar<'7'>
)	()
->	decltype(auto)
{	return 7; }
template<>
auto constexpr
(	FromChar<'8'>
)	()
->	decltype(auto)
{	return 8; }
template<>
auto constexpr
(	FromChar<'9'>
)	()
->	decltype(auto)
{	return 9; }

auto constexpr
(	ToChar
)	(	int
			i_nChar
	)
->	char
{	return static_cast<char>(i_nChar + '0');	}
