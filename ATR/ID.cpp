export module ATR.ID;

export import ATR.StringLiteral;

import Meta.Index;

///	Unique class to prevent external specializations.
class
	Char
{
	char
		m_nChar
	;

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

Char constexpr inline i0 = '0';
Char constexpr inline i1 = '1';
Char constexpr inline i2 = '2';
Char constexpr inline i3 = '3';
Char constexpr inline i4 = '4';
Char constexpr inline i5= '5';
Char constexpr inline i6 = '6';
Char constexpr inline i7 = '7';
Char constexpr inline i8 = '8';
Char constexpr inline i9 = '9';

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
	ATR
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
				return ::i0;
			case '1':
				return ::i1;
			case '2':
				return ::i2;
			case '3':
				return ::i3;
			case '4':
				return ::i4;
			case '5':
				return ::i5;
			case '6':
				return ::i6;
			case '7':
				return ::i7;
			case '8':
				return ::i8;
			case '9':
				return ::i9;

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
	ATR
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

		static StringView constexpr
			StringView
		{	RawArray
		,	sizeof...(t_rpString)
		};

		constexpr
		(	operator decltype(auto)
		)	()	const
		{	return StringView;	}

		template
			<	Char const
				&
				...	t_rpBack
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator-
		)	(	ID
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
		(	operator-
		)	(	ID<t_rpFront...>
			,	ID
			)
		requires
			(	ends_with
				(	ID<t_rpFront...>::StringView
				,	StringView
				)
			)
		{	return
			[]	<	Meta::USize
					...	t_npIndex
				>(	Meta::IndexToken
					<	t_npIndex
						...
					>
				)
			{	return
					::ATR::ID
					<	::ATR::ToReference
						(	::ATR::ID<t_rpFront...>::RawArray
							[	t_npIndex

							]
						)
						...
					>{}
				;
			}(	Meta::Sequence
				<	sizeof...(t_rpFront)
				-	sizeof...(t_rpString)
				>()
			);
		}

		template
			<	Char const
				&
				...	t_rpBack
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator+
		)	(	ID
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

	template
		<	typename
				t_tID
		>
	concept
		ProtoID
	=	requires(t_tID c_vID)
		{
			::ATR::ID{c_vID};
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
		>
	auto constexpr
	(	Make
	)	()
	->	ProtoID auto
	{
		return
		[]	<	Meta::USize
				...	t_npIndex
			>(	Meta::IndexToken
				<	t_npIndex
					...
				>
			)
		{	return
				::ATR::ID
				<	ToReference
					(	t_vStringLiteral
						[	t_npIndex
						]
					)
					...
				>{}
			;
		}(	Meta::Sequence
			(	Meta::Index<t_vStringLiteral.size()>
			)
		);
	}
}

export namespace
	ATR
{
	/// creates an identifier type
	template
		<	StringLiteral
				t_vStringLiteral
		>
	using
		ID_T
	=	decltype
		(	Make
			<	t_vStringLiteral
			>()
		)
	;

	/// create an identifier value
	template
		<	StringLiteral
				t_vStringLiteral
		>
	ProtoID auto constexpr inline
		ID_V
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
	(	operator
		""_id
	)	()
	->	ID_T
		<	t_vString
		>
	{	return{};	}
}

static_assert
(	starts_with
	(	::ATR::ID<a, b, c>{}
	,	::ATR::ID_V<"ab">
	)
);

static_assert
(	ends_with
	(	::ATR::ID<a, b, c>{}
	,	::ATR::ID_V<"bc">
	)
);

using ATR::operator""_id;

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
