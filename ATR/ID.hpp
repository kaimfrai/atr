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
{	return t_nCharacter;	}

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

template<>
auto constexpr
(	FromChar<'_'>
)	()
->	decltype(auto)
{	return (::_); }


template<>
auto constexpr
(	FromChar<'A'>
)	()
->	decltype(auto)
{	return (::A); }
template<>
auto constexpr
(	FromChar<'B'>
)	()
->	decltype(auto)
{	return (::B); }
template<>
auto constexpr
(	FromChar<'C'>
)	()
->	decltype(auto)
{	return (::C); }
template<>
auto constexpr
(	FromChar<'D'>
)	()
->	decltype(auto)
{	return (::D); }
template<>
auto constexpr
(	FromChar<'E'>
)	()
->	decltype(auto)
{	return (::E); }
template<>
auto constexpr
(	FromChar<'F'>
)	()
->	decltype(auto)
{	return (::F); }
template<>
auto constexpr
(	FromChar<'G'>
)	()
->	decltype(auto)
{	return (::G); }
template<>
auto constexpr
(	FromChar<'H'>
)	()
->	decltype(auto)
{	return (::H); }
template<>
auto constexpr
(	FromChar<'I'>
)	()
->	decltype(auto)
{	return (::I); }
template<>
auto constexpr
(	FromChar<'J'>
)	()
->	decltype(auto)
{	return (::J); }
template<>
auto constexpr
(	FromChar<'K'>
)	()
->	decltype(auto)
{	return (::K); }
template<>
auto constexpr
(	FromChar<'L'>
)	()
->	decltype(auto)
{	return (::L); }
template<>
auto constexpr
(	FromChar<'M'>
)	()
->	decltype(auto)
{	return (::M); }
template<>
auto constexpr
(	FromChar<'N'>
)	()
->	decltype(auto)
{	return (::N); }
template<>
auto constexpr
(	FromChar<'O'>
)	()
->	decltype(auto)
{	return (::O); }
template<>
auto constexpr
(	FromChar<'P'>
)	()
->	decltype(auto)
{	return (::P); }
template<>
auto constexpr
(	FromChar<'Q'>
)	()
->	decltype(auto)
{	return (::Q); }
template<>
auto constexpr
(	FromChar<'R'>
)	()
->	decltype(auto)
{	return (::R); }
template<>
auto constexpr
(	FromChar<'S'>
)	()
->	decltype(auto)
{	return (::S); }
template<>
auto constexpr
(	FromChar<'T'>
)	()
->	decltype(auto)
{	return (::T); }
template<>
auto constexpr
(	FromChar<'U'>
)	()
->	decltype(auto)
{	return (::U); }
template<>
auto constexpr
(	FromChar<'V'>
)	()
->	decltype(auto)
{	return (::V); }
template<>
auto constexpr
(	FromChar<'W'>
)	()
->	decltype(auto)
{	return (::W); }
template<>
auto constexpr
(	FromChar<'X'>
)	()
->	decltype(auto)
{	return (::X); }
template<>
auto constexpr
(	FromChar<'Y'>
)	()
->	decltype(auto)
{	return (::Y); }
template<>
auto constexpr
(	FromChar<'Z'>
)	()
->	decltype(auto)
{	return (::Z); }

template<>
auto constexpr
(	FromChar<'a'>
)	()
->	decltype(auto)
{	return (::a); }
template<>
auto constexpr
(	FromChar<'b'>
)	()
->	decltype(auto)
{	return (::b); }
template<>
auto constexpr
(	FromChar<'c'>
)	()
->	decltype(auto)
{	return (::c); }
template<>
auto constexpr
(	FromChar<'d'>
)	()
->	decltype(auto)
{	return (::d); }
template<>
auto constexpr
(	FromChar<'e'>
)	()
->	decltype(auto)
{	return (::e); }
template<>
auto constexpr
(	FromChar<'f'>
)	()
->	decltype(auto)
{	return (::f); }
template<>
auto constexpr
(	FromChar<'g'>
)	()
->	decltype(auto)
{	return (::g); }
template<>
auto constexpr
(	FromChar<'h'>
)	()
->	decltype(auto)
{	return (::h); }
template<>
auto constexpr
(	FromChar<'i'>
)	()
->	decltype(auto)
{	return (::i); }
template<>
auto constexpr
(	FromChar<'j'>
)	()
->	decltype(auto)
{	return (::j); }
template<>
auto constexpr
(	FromChar<'k'>
)	()
->	decltype(auto)
{	return (::k); }
template<>
auto constexpr
(	FromChar<'l'>
)	()
->	decltype(auto)
{	return (::l); }
template<>
auto constexpr
(	FromChar<'m'>
)	()
->	decltype(auto)
{	return (::m); }
template<>
auto constexpr
(	FromChar<'n'>
)	()
->	decltype(auto)
{	return (::n); }
template<>
auto constexpr
(	FromChar<'o'>
)	()
->	decltype(auto)
{	return (::o); }
template<>
auto constexpr
(	FromChar<'p'>
)	()
->	decltype(auto)
{	return (::p); }
template<>
auto constexpr
(	FromChar<'q'>
)	()
->	decltype(auto)
{	return (::q); }
template<>
auto constexpr
(	FromChar<'r'>
)	()
->	decltype(auto)
{	return (::r); }
template<>
auto constexpr
(	FromChar<'s'>
)	()
->	decltype(auto)
{	return (::s); }
template<>
auto constexpr
(	FromChar<'t'>
)	()
->	decltype(auto)
{	return (::t); }
template<>
auto constexpr
(	FromChar<'u'>
)	()
->	decltype(auto)
{	return (::u); }
template<>
auto constexpr
(	FromChar<'v'>
)	()
->	decltype(auto)
{	return (::v); }
template<>
auto constexpr
(	FromChar<'w'>
)	()
->	decltype(auto)
{	return (::w); }
template<>
auto constexpr
(	FromChar<'x'>
)	()
->	decltype(auto)
{	return (::x); }
template<>
auto constexpr
(	FromChar<'y'>
)	()
->	decltype(auto)
{	return (::y); }
template<>
auto constexpr
(	FromChar<'z'>
)	()
->	decltype(auto)
{	return (::z); }

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
			=	::ID
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
			=	::ID
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
			=	::ID
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
