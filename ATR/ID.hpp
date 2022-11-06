export module ATR:ID;

export import :StringLiteral;

import Meta.Arithmetic;

import Std;

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

char constexpr inline _ = '_';

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

template
	<	char
			t_nCharacter
	>
auto constexpr
(	FromChar
)	(
	)
->	decltype(auto)
{
	if	constexpr(t_nCharacter >= '0' and t_nCharacter <= '9')
		return t_nCharacter - '0';
	else
		switch(t_nCharacter)
		{
			//	Upper Case
			case 'A':
				return (::A);
			case 'B':
				return (::B);
			case 'C':
				return (::C);
			case 'D':
				return (::D);
			case 'E':
				return (::E);
			case 'F':
				return (::F);
			case 'G':
				return (::G);
			case 'H':
				return (::H);
			case 'I':
				return (::I);
			case 'J':
				return (::J);
			case 'K':
				return (::K);
			case 'L':
				return (::L);
			case 'M':
				return (::M);
			case 'N':
				return (::N);
			case 'O':
				return (::O);
			case 'P':
				return (::P);
			case 'Q':
				return (::Q);
			case 'R':
				return (::R);
			case 'S':
				return (::S);
			case 'T':
				return (::T);
			case 'U':
				return (::U);
			case 'V':
				return (::V);
			case 'W':
				return (::W);
			case 'X':
				return (::X);
			case 'Y':
				return (::Y);
			case 'Z':
				return (::Z);

			//	Underscore
			case '_':
				return (::_);

			//	Lower Case
			case 'a':
				return (::a);
			case 'b':
				return (::b);
			case 'c':
				return (::c);
			case 'd':
				return (::d);
			case 'e':
				return (::e);
			case 'f':
				return (::f);
			case 'g':
				return (::g);
			case 'h':
				return (::h);
			case 'i':
				return (::i);
			case 'j':
				return (::j);
			case 'k':
				return (::k);
			case 'l':
				return (::l);
			case 'm':
				return (::m);
			case 'n':
				return (::n);
			case 'o':
				return (::o);
			case 'p':
				return (::p);
			case 'q':
				return (::q);
			case 'r':
				return (::r);
			case 's':
				return (::s);
			case 't':
				return (::t);
			case 'u':
				return (::u);
			case 'v':
				return (::v);
			case 'w':
				return (::w);
			case 'x':
				return (::x);
			case 'y':
				return (::y);
			case 'z':
				return (::z);

			default:
				throw "Invalid character in identitfier!";
		}
}

auto constexpr
(	ToChar
)	(	int
			i_nChar
	)
->	char
{	return static_cast<char>(i_nChar + '0');	}

auto constexpr
(	ToChar
)	(	char const
		&	i_rChar
	)
->	char
{	return i_rChar;	}

/// serves as a base class for all identifer types
/// provides conversions to arrays as well as begin and end functions
template
	<	decltype(auto)
		...	t_vpString
	>
struct
	ID final
{
	static ::Meta::USize constexpr
		Length
	=	sizeof...(t_vpString)
	;

	static char constexpr
		RawArray
		[	Length
		+	1uz
		]
	{	::ToChar(t_vpString)
		...
	,	'\0'
	};

	static ::ATR::StringView constexpr
		StringView
	{	RawArray
	,	Length
	};

	static ::ATR::StringLiteral<Length> constexpr
		String
	{	RawArray
	};

	[[nodiscard]] constexpr
	(	operator decltype(auto)
	)	()	const
		noexcept
	{	return (StringView);	}
};

export namespace
	ATR
{
	template
		<	decltype(auto)
			...	t_vpString
		>
	using
		ID
	=	::ID<t_vpString...>
	;

	template
		<	typename
				t_tID
		>
	concept
		ProtoID
	=	requires(t_tID c_vID)
		{
			{ &t_tID::Length } -> std::same_as<Meta::USize const*>;
			{ &t_tID::RawArray } -> std::same_as<char const(*)[t_tID::Length + 1uz]>;
			{ &t_tID::StringView } -> std::same_as<StringView const*>;
			{ &t_tID::String } -> std::same_as<StringLiteral<t_tID::Length> const*>;
			{ &t_tID::operator decltype(auto) } -> std::same_as<auto (t_tID::*)() const noexcept -> StringView const&>;
		}
	;
}

namespace
	ATR
{
	/// dispatches a string literal into its characters
	///	creates an instance of the given identifer template with all dispatched characters inserted
	template
		<	StringLiteral
				t_vStringLiteral
		,	template
				<	decltype(auto)
				...
				>
			typename
				t_t1ID
		,	Meta::USize
			...	t_npIndex
		>
	auto constexpr
	(	Make
	)	(	Meta::IndexToken
				<	t_npIndex
					...
				>
		)
	->	decltype(auto)
	{	return
		t_t1ID
		<	::FromChar
			<	t_vStringLiteral
				[	t_npIndex
				]
			>()
			...
		>{};
	}
}

export namespace
	ATR
{
	/// creates an identifier type
	template
		<	StringLiteral
				t_vStringLiteral
		,	template
				<	decltype(auto)
					...
				>
			typename
				t_t1ID
			=	::ATR::ID
		>
	using
		ID_T
	=	decltype
		(	Make
			<	t_vStringLiteral
			,	t_t1ID
			>(	Meta::Sequence<t_vStringLiteral.size()>
			)
		)
	;

	template
		<	StringView
				t_vString
		,	template
				<	decltype(auto)
				...
				>
			typename
				t_t1ID
			=	::ATR::ID
		>
	using
		ID_Of
	=	ID_T
		<	StringLiteral<t_vString.size()>
			{	t_vString.data()
			}
		,	t_t1ID
		>
	;

	/// create an identifier value
	template
		<	StringLiteral
				t_vStringLiteral
		,	template
				<	decltype(auto)
				...
				>
			typename
				t_t1ID
			=	::ATR::ID
		>
	ID_T<t_vStringLiteral, t_t1ID> extern
		ID_V
	;

	inline namespace
		Literals
	{
		template
			<	StringLiteral
					t_vString
			>
		[[nodiscard]]
		auto constexpr
		(	operator
			""_ID
		)	()
		->	ID_T
			<	t_vString
			>
		{	return{};	}

		template
			<	StringLiteral
					t_vString
			>
		[[nodiscard]]
		auto constexpr
		(	operator
			""_SV
		)	()
		->	StringView
		{	return ID_T<t_vString>::StringView;	}
	}
}
