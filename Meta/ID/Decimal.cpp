module Meta.ID:Decimal;

import Meta.Token.Index;

using ::Meta::IndexToken;

auto constexpr
(	FromChar
)	(	IndexToken<'0'>
	)
	noexcept
->	int
{	return 0; }
auto constexpr
(	FromChar
)	(	IndexToken<'1'>
	)
	noexcept
->	int
{	return 1; }
auto constexpr
(	FromChar
)	(	IndexToken<'2'>
	)
	noexcept
->	int
{	return 2; }
auto constexpr
(	FromChar
)	(	IndexToken<'3'>
	)
	noexcept
->	int
{	return 3; }
auto constexpr
(	FromChar
)	(	IndexToken<'4'>
	)
	noexcept
->	int
{	return 4; }
auto constexpr
(	FromChar
)	(	IndexToken<'5'>
	)
	noexcept
->	int
{	return 5; }
auto constexpr
(	FromChar
)	(	IndexToken<'6'>
	)
	noexcept
->	int
{	return 6; }
auto constexpr
(	FromChar
)	(	IndexToken<'7'>
	)
	noexcept
->	int
{	return 7; }
auto constexpr
(	FromChar
)	(	IndexToken<'8'>
	)
	noexcept
->	int
{	return 8; }
auto constexpr
(	FromChar
)	(	IndexToken<'9'>
	)
	noexcept
->	int
{	return 9; }

auto constexpr
(	ToChar
)	(	int
			i_vInteger
	)
	noexcept
->	char
{	return
	static_cast<char>
	(	i_vInteger
	+	'0'
	);
}
