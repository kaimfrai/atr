export module ID.Make;

export import ID.StringLiteral;
export import Stateless.Type;
export import Std;

class
	Char
{
	char m_nChar;

public:
	constexpr
	(	Char
	)	(	char
				i_nChar
		)
	:	m_nChar
		{	i_nChar
		}
	{}

	constexpr
	(	operator char
	)	()	const
	{	return m_nChar;	}
};

Char constexpr inline _0 = '0';
Char constexpr inline _1 = '1';
Char constexpr inline _2 = '2';
Char constexpr inline _3 = '3';
Char constexpr inline _4 = '4';
Char constexpr inline _5 = '5';
Char constexpr inline _6 = '6';
Char constexpr inline _7 = '7';
Char constexpr inline _8 = '8';
Char constexpr inline _9 = '9';

Char constexpr inline A = 'A';
Char constexpr inline B = 'B';
Char constexpr inline C = 'C';
Char constexpr inline D = 'D';
Char constexpr inline E = 'E';
Char constexpr inline F = 'F';
Char constexpr inline G = 'G';
Char constexpr inline H = 'H';
Char constexpr inline I = 'I';
Char constexpr inline J = 'J';
Char constexpr inline K = 'K';
Char constexpr inline L = 'L';
Char constexpr inline M = 'M';
Char constexpr inline N = 'N';
Char constexpr inline O = 'O';
Char constexpr inline P = 'P';
Char constexpr inline Q = 'Q';
Char constexpr inline R = 'R';
Char constexpr inline S = 'S';
Char constexpr inline T = 'T';
Char constexpr inline U = 'U';
Char constexpr inline V = 'V';
Char constexpr inline W = 'W';
Char constexpr inline X = 'X';
Char constexpr inline Y = 'Y';
Char constexpr inline Z = 'Z';

Char constexpr inline _ = '_';

Char constexpr inline a = 'a';
Char constexpr inline b = 'b';
Char constexpr inline c = 'c';
Char constexpr inline d = 'd';
Char constexpr inline e = 'e';
Char constexpr inline f = 'f';
Char constexpr inline g = 'g';
Char constexpr inline h = 'h';
Char constexpr inline i = 'i';
Char constexpr inline j = 'j';
Char constexpr inline k = 'k';
Char constexpr inline l = 'l';
Char constexpr inline m = 'm';
Char constexpr inline n = 'n';
Char constexpr inline o = 'o';
Char constexpr inline p = 'p';
Char constexpr inline q = 'q';
Char constexpr inline r = 'r';
Char constexpr inline s = 's';
Char constexpr inline t = 't';
Char constexpr inline u = 'u';
Char constexpr inline v = 'v';
Char constexpr inline w = 'w';
Char constexpr inline x = 'x';
Char constexpr inline y = 'y';
Char constexpr inline z = 'z';

namespace
	ID
{
	static auto constexpr
	(	ToReference
	)	(	char
				i_nCharacter
		)
	->	Char const&
	{
		switch(i_nCharacter)
		{
			//	Digits
			case '0':
				return ::_0;
			case '1':
				return ::_1;
			case '2':
				return ::_2;
			case '3':
				return ::_3;
			case '4':
				return ::_4;
			case '5':
				return ::_5;
			case '6':
				return ::_6;
			case '7':
				return ::_7;
			case '8':
				return ::_8;
			case '9':
				return ::_9;

			//	Upper Case
			case 'A':
				return ::A;
			case 'B':
				return ::B;
			case 'C':
				return ::C;
			case 'D':
				return ::D;
			case 'E':
				return ::E;
			case 'F':
				return ::F;
			case 'G':
				return ::G;
			case 'H':
				return ::H;
			case 'I':
				return ::I;
			case 'J':
				return ::J;
			case 'K':
				return ::K;
			case 'L':
				return ::L;
			case 'M':
				return ::M;
			case 'N':
				return ::N;
			case 'O':
				return ::O;
			case 'P':
				return ::P;
			case 'Q':
				return ::Q;
			case 'R':
				return ::R;
			case 'S':
				return ::S;
			case 'T':
				return ::T;
			case 'U':
				return ::U;
			case 'V':
				return ::V;
			case 'W':
				return ::W;
			case 'X':
				return ::X;
			case 'Y':
				return ::Y;
			case 'Z':
				return ::Z;

			//	Underscore
			case '_':
				return ::_;

			//	Lower Case
			case 'a':
				return ::a;
			case 'b':
				return ::b;
			case 'c':
				return ::c;
			case 'd':
				return ::d;
			case 'e':
				return ::e;
			case 'f':
				return ::f;
			case 'g':
				return ::g;
			case 'h':
				return ::h;
			case 'i':
				return ::i;
			case 'j':
				return ::j;
			case 'k':
				return ::k;
			case 'l':
				return ::l;
			case 'm':
				return ::m;
			case 'n':
				return ::n;
			case 'o':
				return ::o;
			case 'p':
				return ::p;
			case 'q':
				return ::q;
			case 'r':
				return ::r;
			case 's':
				return ::s;
			case 't':
				return ::t;
			case 'u':
				return ::u;
			case 'v':
				return ::v;
			case 'w':
				return ::w;
			case 'x':
				return ::x;
			case 'y':
				return ::y;
			case 'z':
				return ::z;

			default:
				throw "Invalid character in identitfier!";
		}
	}
}

export namespace
	Function
{
	/// serves as a base class for all identifer types
	/// provides conversions to arrays as well as begin and end functions
	template
		<	::Char const
			&
			...	t_rpString
		>
	struct
		ID final
	{
		static char constexpr
			RawArray
			[	sizeof...(t_rpString)
			+	1uz
			]
		{	t_rpString
			...
		,	'\0'
		};

		static ::ID::StringLiteral constexpr
			StringLiteral
		{	RawArray
		};

		static ::ID::StringView constexpr
			StringView
		{	StringLiteral
		};

		constexpr
		(	operator auto
		)	()	const
		{	return StringView;	}

		template
			<	Char const
				&
				...	t_rpBack
			>
		[[nodiscard]]
		friend auto constexpr
			operator-
			(	ID
			,	ID
				<	t_rpString
					...
				,	t_rpBack
					...
				>
			)
		{	return
				ID
				<	t_rpBack
					...
				>{}
			;
		}

		template
			<	Char const
				&
				...	t_rpFront
			>
		[[nodiscard]]
		friend auto constexpr
			operator-
			(	ID<t_rpFront...>
			,	ID
			)
		requires
			(	::ID::ends_with
				(	ID<t_rpFront...>::StringView
				,	StringView
				)
			)
		{	return
			[]	<	Meta::USize
					...	t_npIndex
				>(	std::index_sequence
					<	t_npIndex
						...
					>
				)
			{	return
					::Function::ID
					<	::ID::ToReference
						(	ID<t_rpFront...>::StringLiteral
							[	t_npIndex

							]
						)
						...
					>{}
				;
			}(	std::make_index_sequence
				<	sizeof...(t_rpFront)
				-	sizeof...(t_rpString)
				>{}
			);
		}

		template
			<	Char const
				&
				...	t_rpBack
			>
		[[nodiscard]]
		friend auto constexpr
			operator+
			(	ID
			,	ID
				<	t_rpBack
					...
				>
			)
		{	return
			ID
			<	t_rpString
				...
			,	t_rpBack
				...
			>{};
		}
	};

	template<>
	struct
		ID<>
	{
		template
			<	Char const
				&
				...	t_rpBack
			>
		[[nodiscard]]
		friend auto constexpr
			operator-
			(	ID
			,	ID
				<	t_rpBack
					...
				>
			)
		{	return
				ID
				<	t_rpBack
					...
				>{}
			;
		}

		template
			<	Char const
				&
				...	t_rpFront
			>
		[[nodiscard]]
		friend auto constexpr
			operator-
			(	ID
				<	t_rpFront
					...
				>
			,	ID
			)
		{	return
				ID
				<	t_rpFront
					...
				>{}
			;
		}

		template
			<	Char const
				&
				...	t_rpBack
			>
		[[nodiscard]]
		friend auto constexpr
			operator+
			(	ID
			,	ID
				<	t_rpBack
					...
				>
			)
		{	return
			ID
			<	t_rpBack
				...
			>{};
		}
	};

	using ::ID::operator<=>;
}

export namespace
	ID
{
	template
		<	typename
				t_tID
		>
	concept
		Instance
	=	Stateless::Type<t_tID>
	and	requires(t_tID c_vID)
		{
			::Function::ID{c_vID};
		}
	;

	/// checks if an identifier starts with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vStart
		>
	concept
		Prefix
	=	Instance<t_tID>
	and	starts_with(t_tID{}, t_vStart)
	;

	/// checks if an identifier end with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vEnd
		>
	concept
		Suffix
	=	Instance<t_tID>
	and	ends_with(t_tID{}, t_vEnd)
	;

	/// dispatches a string literal into its characters
	///	creates an instance of the given identifer template with all dispatched characters inserted
	template
		<	StringLiteral
				t_vStringLiteral
		>
	auto constexpr
		Make
		()
	->	Instance auto
	{
		return
		[]	<	Meta::USize
				...	t_npIndex
			>(	std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
				::Function::ID
				<	ToReference
					(	t_vStringLiteral
						[	t_npIndex
						]
					)
					...
				>{}
			;
		}(	std::make_index_sequence
			<	t_vStringLiteral.size()
			>{}
		);
	}

	/// creates an identifier type
	template
		<	StringLiteral
				t_vStringLiteral
		>
	using
		MakeT
	=	decltype(
			Make
			<	t_vStringLiteral
			>()
		)
	;

	/// create an identifier value
	template
		<	StringLiteral
				t_vStringLiteral
		>
	Instance auto constexpr
		MakeV
	=	Make
		<	t_vStringLiteral
		>()
	;

	template
		<	StringLiteral
				t_vString
		>
	[[nodiscard]]
	auto constexpr
		operator
		""_id
		()
	->	MakeT
		<	t_vString
		>
	{	return{};	}
}

static_assert
(	starts_with
	(	Function::ID<a, b, c>{}
	,	ID::StringLiteral{"ab"}
	)
);

static_assert
(	ends_with
	(	Function::ID<a, b, c>{}
	,	ID::StringLiteral{"bc"}
	)
);

using ID::operator""_id;
using ID::operator==;

static_assert
(	"ab"_id
+	"c"_id
==	"abc"_id
);
static_assert
(	"ab"_id
-	"abc"_id
==	"c"_id
);
static_assert
(	"a"_id
+	"bc"_id
==	"abc"_id
);
static_assert
(	"abc"_id
-	"bc"_id
==	"a"_id
);
