export module Meta.ID;

import Meta.String.Hash;
import Meta.String.Literal;

using ::Meta::String::ImplicitHash;
using ::Meta::String::Literal;

[[nodiscard]]
auto constexpr inline
(	ToChar
)	(	char
			i_vChar
	)
	noexcept
->	char
{	return
		i_vChar
	;
}

[[nodiscard]]
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

struct
	Base
{};

extern "C++"
{
	template
		<	decltype(auto)
			...	t_vpString
		>
	struct
		ID final
	:	Base
	{
		char static constexpr inline
			String
			[	sizeof...(t_vpString)
			+	1uz
			]
		{	::ToChar(t_vpString)
			...
		,	'\0'
		};

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			ImplicitHash
		)	()	const
			noexcept
		{	return
				String
			;
		}
	};
}

enum class
	ECharType
{	Other
,	Number
,	UpperCase
,	LowerCase
};

[[nodiscard]]
auto constexpr inline
(	ToCharType
)	(	char
			i_vChar
	)
	noexcept
->	ECharType
{
	if	(	i_vChar
		>=	'a'
		)
	{	return
			i_vChar
		<=	'z'
		?	ECharType::LowerCase
		:	ECharType::Other
		;
	}

	if	(	i_vChar
		>=	'A'
		)
	{
		return
			i_vChar
		<=	'Z'
		?	ECharType::UpperCase
		:	ECharType::Other
		;
	}

	return
	(	(	i_vChar
		>=	'0'
		)
	and	(	i_vChar
		<=	'9'
		)
	)
	?	ECharType::Number
	:	ECharType::Other
	;
}

template
	<	ECharType
	>
auto constexpr inline
(	FromChar
)	(	char
			i_vChar
	)
	noexcept
->	decltype(auto)
{	return
		i_vChar
	;
}

template<>
auto constexpr inline
(	FromChar<ECharType::Number>
)	(	char
			i_vChar
	)
	noexcept
->	decltype(auto)
{	return
		i_vChar
	-	'0'
	;
}

extern "C++"
{
	char constexpr inline a = 'a';
	char constexpr inline b = 'b';
	char constexpr inline c = 'c';
	char constexpr inline d = 'd';
	char constexpr inline e = 'e';
	char constexpr inline f = 'f';
	char constexpr inline g = 'g';
	char constexpr inline h = 'h';
	char constexpr inline i = 'i';
	char constexpr inline j = 'j';
	char constexpr inline k = 'k';
	char constexpr inline l = 'l';
	char constexpr inline m = 'm';
	char constexpr inline n = 'n';
	char constexpr inline o = 'o';
	char constexpr inline p = 'p';
	char constexpr inline q = 'q';
	char constexpr inline r = 'r';
	char constexpr inline s = 's';
	char constexpr inline t = 't';
	char constexpr inline u = 'u';
	char constexpr inline v = 'v';
	char constexpr inline w = 'w';
	char constexpr inline x = 'x';
	char constexpr inline y = 'y';
	char constexpr inline z = 'z';
}

template<>
auto constexpr inline
(	FromChar<ECharType::LowerCase>
)	(	char
			i_vChar
	)
	noexcept
->	decltype(auto)
{
	char const static constexpr
	*	vLowerCase
		[]
	{	&a
	,	&b
	,	&c
	,	&d
	,	&e
	,	&f
	,	&g
	,	&h
	,	&i
	,	&j
	,	&k
	,	&l
	,	&m
	,	&n
	,	&o
	,	&p
	,	&q
	,	&r
	,	&s
	,	&t
	,	&u
	,	&v
	,	&w
	,	&x
	,	&y
	,	&z
	};
	return
	(*	vLowerCase
		[	i_vChar
		-	'a'
		]
	);
}

extern "C++"
{
	char constexpr inline A = 'A';
	char constexpr inline B = 'B';
	char constexpr inline C = 'C';
	char constexpr inline D = 'D';
	char constexpr inline E = 'E';
	char constexpr inline F = 'F';
	char constexpr inline G = 'G';
	char constexpr inline H = 'H';
	char constexpr inline I = 'I';
	char constexpr inline J = 'J';
	char constexpr inline K = 'K';
	char constexpr inline L = 'L';
	char constexpr inline M = 'M';
	char constexpr inline N = 'N';
	char constexpr inline O = 'O';
	char constexpr inline P = 'P';
	char constexpr inline Q = 'Q';
	char constexpr inline R = 'R';
	char constexpr inline S = 'S';
	char constexpr inline T = 'T';
	char constexpr inline U = 'U';
	char constexpr inline V = 'V';
	char constexpr inline W = 'W';
	char constexpr inline X = 'X';
	char constexpr inline Y = 'Y';
	char constexpr inline Z = 'Z';
}

template<>
auto constexpr inline
(	FromChar<ECharType::UpperCase>
)	(	char
			i_vChar
	)
	noexcept
->	decltype(auto)
{
	char const static constexpr
	*	vUpperCase
		[]
	{	&A
	,	&B
	,	&C
	,	&D
	,	&E
	,	&F
	,	&G
	,	&H
	,	&I
	,	&J
	,	&K
	,	&L
	,	&M
	,	&N
	,	&O
	,	&P
	,	&Q
	,	&R
	,	&S
	,	&T
	,	&U
	,	&V
	,	&W
	,	&X
	,	&Y
	,	&Z
	};
	return
	(*	vUpperCase
		[	i_vChar
		-	'A'
		]
	);
}

export namespace
	Meta::inline Literals
{
	template
		<	Literal
				t_vString
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator
		""_id
	)	()
		noexcept
	{
		auto const
		&	[	...
				vChars
			,	vZero
			]
		=	t_vString
			.	Buffer
		;
		return
		::ID
		<	::FromChar
			<	ToCharType
				(	vChars
				)
			>(	vChars
			)
			...
		>{};
	}
}

export namespace
	Meta
{
	template
		<	Literal
				t_vLiteral
		>
	using
		ID
	=	decltype
		(	::Meta::Literals::operator""_id
			<	t_vLiteral
			>()
		)
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoID
	=	requires
		{	Base
			{	t_tProto
				{}
			};
		}
	;
}
