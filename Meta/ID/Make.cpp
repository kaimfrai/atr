module Meta.ID:Make;

import :ID;

import Meta.String.Literal;

import Std;

using ::Meta::String::Literal;

enum class
	ECharType
{	Other
,	Number
,	UpperCase
,	LowerCase
};

[[nodiscard]]
auto constexpr
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
auto constexpr
(	FromChar
)	(	char
			i_vChar
	)
	noexcept
->	decltype(auto)
{	return i_vChar;	}

template<>
auto constexpr
(	FromChar<ECharType::Number>
)	(	char
			i_vChar
	)
	noexcept
->	decltype(auto)
{	return i_vChar - '0'; }

char constexpr a = 'a';
char constexpr b = 'b';
char constexpr c = 'c';
char constexpr d = 'd';
char constexpr e = 'e';
char constexpr f = 'f';
char constexpr g = 'g';
char constexpr h = 'h';
char constexpr i = 'i';
char constexpr j = 'j';
char constexpr k = 'k';
char constexpr l = 'l';
char constexpr m = 'm';
char constexpr n = 'n';
char constexpr o = 'o';
char constexpr p = 'p';
char constexpr q = 'q';
char constexpr r = 'r';
char constexpr s = 's';
char constexpr t = 't';
char constexpr u = 'u';
char constexpr v = 'v';
char constexpr w = 'w';
char constexpr x = 'x';
char constexpr y = 'y';
char constexpr z = 'z';

template<>
auto constexpr
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

char constexpr A = 'A';
char constexpr B = 'B';
char constexpr C = 'C';
char constexpr D = 'D';
char constexpr E = 'E';
char constexpr F = 'F';
char constexpr G = 'G';
char constexpr H = 'H';
char constexpr I = 'I';
char constexpr J = 'J';
char constexpr K = 'K';
char constexpr L = 'L';
char constexpr M = 'M';
char constexpr N = 'N';
char constexpr O = 'O';
char constexpr P = 'P';
char constexpr Q = 'Q';
char constexpr R = 'R';
char constexpr S = 'S';
char constexpr T = 'T';
char constexpr U = 'U';
char constexpr V = 'V';
char constexpr W = 'W';
char constexpr X = 'X';
char constexpr Y = 'Y';
char constexpr Z = 'Z';

template<>
auto constexpr
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

template
	<	Literal
			t_vLiteral
	,	::std::size_t
		...	t_vpIndex
	>
auto constexpr
(	Make
)	(	::std::index_sequence
		<	t_vpIndex
			...
		>
	)
	noexcept
->	::ID
	<	::FromChar
		<	ToCharType
			(	t_vLiteral[t_vpIndex]
			)
		>(	t_vLiteral[t_vpIndex]
		)
		...
	>
{	return{};	}
