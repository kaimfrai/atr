export module Meta.ID:ID;

import :Base;

import Meta.String.Hash;

using ::Meta::String::Hash;

auto constexpr inline
(	ToChar
)	(	char
			i_vChar
	)
	noexcept
->	char
{	return i_vChar;	}

auto constexpr inline
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

template
	<	decltype(auto)
		...	t_vpString
	>
struct
	ID final
:	Base
{
	[[nodiscard]]
	explicit(false) constexpr inline
	(	operator
		Hash
	)	()	const
		noexcept
	{	char static constexpr
			String
			[]
		{	::ToChar(t_vpString)
			...
		,	'\0'
		};

		return
			Hash
			{	String
			}
		;
	}
};
