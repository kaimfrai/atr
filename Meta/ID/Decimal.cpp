module Meta.ID:Decimal;

import Meta.Token.Index;

auto constexpr
(	FromChar
)	(	Meta::IndexToken<'0'>
	)
->	int
{	return 0; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'1'>
	)
->	int
{	return 1; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'2'>
	)
->	int
{	return 2; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'3'>
	)
->	int
{	return 3; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'4'>
	)
->	int
{	return 4; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'5'>
	)
->	int
{	return 5; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'6'>
	)
->	int
{	return 6; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'7'>
	)
->	int
{	return 7; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'8'>
	)
->	int
{	return 8; }
auto constexpr
(	FromChar
)	(	Meta::IndexToken<'9'>
	)
->	int
{	return 9; }

auto constexpr
(	ToChar
)	(	int
			i_nChar
	)
->	char
{	return static_cast<char>(i_nChar + '0');	}
