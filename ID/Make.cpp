export module ID.Make;

export import ID.StringLiteral;
export import Std;

export import PackTemplate.Instance;
export import Pack.Instance;

export import Stateless.Tuple;

char constexpr inline _0 ='0';
char constexpr inline _1 = '1';
char constexpr inline _2 = '2';
char constexpr inline _3 = '3';
char constexpr inline _4 = '4';
char constexpr inline _5 = '5';
char constexpr inline _6 = '6';
char constexpr inline _7 = '7';
char constexpr inline _8 = '8';
char constexpr inline _9 = '9';

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

namespace
	ID
{
	static auto constexpr
	(	ToReference
	)	(	char
				i_nCharacter
		)
	->	char const&
	{
		switch(i_nCharacter)
		{
			//	Digits
			case '0':
				return _0;
			case '1':
				return _1;
			case '2':
				return _2;
			case '3':
				return _3;
			case '4':
				return _4;
			case '5':
				return _5;
			case '6':
				return _6;
			case '7':
				return _7;
			case '8':
				return _8;
			case '9':
				return _9;

			//	Upper Case
			case 'A':
				return A;
			case 'B':
				return B;
			case 'C':
				return C;
			case 'D':
				return D;
			case 'E':
				return E;
			case 'F':
				return F;
			case 'G':
				return G;
			case 'H':
				return H;
			case 'I':
				return I;
			case 'J':
				return J;
			case 'K':
				return K;
			case 'L':
				return L;
			case 'M':
				return M;
			case 'N':
				return N;
			case 'O':
				return O;
			case 'P':
				return P;
			case 'Q':
				return Q;
			case 'R':
				return R;
			case 'S':
				return S;
			case 'T':
				return T;
			case 'U':
				return U;
			case 'V':
				return V;
			case 'W':
				return W;
			case 'X':
				return X;
			case 'Y':
				return Y;
			case 'Z':
				return Z;

			//	Underscore
			case '_':
				return _;

			//	Lower Case
			case 'a':
				return a;
			case 'b':
				return b;
			case 'c':
				return c;
			case 'd':
				return d;
			case 'e':
				return e;
			case 'f':
				return f;
			case 'g':
				return g;
			case 'h':
				return h;
			case 'i':
				return i;
			case 'j':
				return j;
			case 'k':
				return k;
			case 'l':
				return l;
			case 'm':
				return m;
			case 'n':
				return n;
			case 'o':
				return o;
			case 'p':
				return p;
			case 'q':
				return q;
			case 'r':
				return r;
			case 's':
				return s;
			case 't':
				return t;
			case 'u':
				return u;
			case 'v':
				return v;
			case 'w':
				return w;
			case 'x':
				return x;
			case 'y':
				return y;
			case 'z':
				return z;

			default:
				throw "Invalid character in identitfier!";
		}
	}
}

export namespace
	ID
{
	/// serves as a base class for all identifer types
	/// provides conversions to arrays as well as begin and end functions
	template
		<	char const
			&	t_rIdentifier
		,	char const
			&
			...	t_rpString
		>
	struct
		Base
	{
		static char const constexpr
		&	Identifier
		=	t_rIdentifier
		;

		static char constexpr
			RawArray
			[	sizeof...(t_rpString)
			+	1uz
			]
		{	t_rpString
			...
		,	'\0'
		};

		static StringLiteral constexpr
			StringLiteral
		{	RawArray
		};

		static StringView constexpr
			StringView
		{	StringLiteral
		};

		constexpr
		(	operator auto
		)	()	const
		{	return StringView;	}
	};

	/// dispatches a string literal into its characters
	///	creates an instance of the given identifer template with all dispatched characters inserted
	template
		<	template
				<	char const
					&
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	auto constexpr
		Make
		()
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
				t_t1Destination
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
		<	template
				<	char const
					&
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	using
		MakeT
	=	decltype(
			Make
			<	t_t1Destination
			,	t_vStringLiteral
			>()
		)
	;

	/// create an identifier value
	template
		<	template
				<	char
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	auto constexpr
		MakeV
	=	Make
		<	t_t1Destination
		,	t_vStringLiteral
		>()
	;
}

static_assert
(	starts_with
	(	ID::Base<I, a, b, c>{}
	,	ID::StringLiteral{"ab"}
	)
);

static_assert
(	ends_with
	(	ID::Base<I, a, b, c>{}
	,	ID::StringLiteral{"bc"}
	)
);
