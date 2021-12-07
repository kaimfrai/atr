export module Meta.Literals;

template
	<	char
	>
struct
	BasicCharacter
{};

auto constexpr inline
	Decimal
=	10ull
;
auto constexpr inline
	Octal
=	8ull
;
auto constexpr inline
	Hexadecimal
=	16ull
;
auto constexpr inline
	Binary
=	2ull
;

template
	<	typename
			t_tDerivedParser
	,	char
			t_nCharacter
	,	unsigned long long
			t_nParsed
	>
struct
	ParseItem
{};

template
	<	template
			<	unsigned long long
			,	auto
				...
			>
		typename
			t_t1DerivedParser
	,	unsigned long long
			t_nRadix
	,	auto
		...	t_vpDerivedParserArgument
	,	char
			t_nCharacter
	,	unsigned long long
			t_nParsed
	>
requires
	(	t_nRadix
	>	t_nParsed
	)
struct
	ParseItem
	<	t_t1DerivedParser
		<	t_nRadix
		,	t_vpDerivedParserArgument
			...
		>
	,	t_nCharacter
	,	t_nParsed
	>
{
	friend auto consteval
	(	operator<<
	)	(	t_t1DerivedParser<t_nRadix,	t_vpDerivedParserArgument...>
				i_vParser
		,	BasicCharacter<t_nCharacter>
		)
	{	return i_vParser.Append(t_nParsed);	}
};

template
	<	typename
			t_tDerivedParser
	>
struct
	BaseParser
:	ParseItem<t_tDerivedParser, '0', 0x0ull>
,	ParseItem<t_tDerivedParser, '1', 0x1ull>
,	ParseItem<t_tDerivedParser, '2', 0x2ull>
,	ParseItem<t_tDerivedParser, '3', 0x3ull>
,	ParseItem<t_tDerivedParser, '4', 0x4ull>
,	ParseItem<t_tDerivedParser, '5', 0x5ull>
,	ParseItem<t_tDerivedParser, '6', 0x6ull>
,	ParseItem<t_tDerivedParser, '7', 0x7ull>
,	ParseItem<t_tDerivedParser, '8', 0x8ull>
,	ParseItem<t_tDerivedParser, '9', 0x9ull>
,	ParseItem<t_tDerivedParser, 'A', 0xAull>
,	ParseItem<t_tDerivedParser, 'a', 0xAull>
,	ParseItem<t_tDerivedParser, 'B', 0xBull>
,	ParseItem<t_tDerivedParser, 'b', 0xBull>
,	ParseItem<t_tDerivedParser, 'C', 0xCull>
,	ParseItem<t_tDerivedParser, 'c', 0xCull>
,	ParseItem<t_tDerivedParser, 'D', 0xDull>
,	ParseItem<t_tDerivedParser, 'd', 0xDull>
,	ParseItem<t_tDerivedParser, 'E', 0xEull>
,	ParseItem<t_tDerivedParser, 'e', 0xEull>
,	ParseItem<t_tDerivedParser, 'F', 0xFull>
,	ParseItem<t_tDerivedParser, 'f', 0xFull>
{
	friend auto consteval
	(	operator<<
	)	(	t_tDerivedParser
				i_vParser
		,	BasicCharacter<'\''>
		)
	{	return i_vParser;	}
};

auto constexpr
(	Power
)	(	unsigned long long
			i_nBase
	,	unsigned long long
			i_nExponent
	)
->	unsigned long long
{
	if	(	i_nExponent
		==	0ull
		)
		return 1ull;
	else
	if	(	i_nExponent
		==	1ul
		)
		return
			i_nBase
		;
	else
	{
		auto const
			nUnevenPower
		=	Power
			(	i_nBase
			,	i_nExponent % 2ull
			)
		;
		auto const
			nHalfPower
		=	Power
			(	i_nBase
			,	i_nExponent / 2ull
			)
		;
		return
			nUnevenPower
		*	nHalfPower
		*	nHalfPower
		;
	}
}

template
	<	unsigned long long
			t_nRadix
	,	unsigned long long
			t_nBase
	,	bool
			t_bPositive
		=	true
	>
struct
	ExponentParser
:	BaseParser
	<	ExponentParser
		<	t_nRadix
		,	t_nBase
		,	t_bPositive
		>
	>
{
	unsigned long long
		Numerator
	;
	unsigned long long
		Denominator
	=	1ull
	;
	unsigned long long
		Exponent
	=	0ull
	;

	auto consteval
	(	Append
	)	(	unsigned long long
				i_nParsed
		)	const
	->	ExponentParser
	{	return
		{	.Numerator = Numerator
		,	.Denominator = Denominator
		,	.Exponent = Exponent * t_nRadix + i_nParsed
		};
	}

	friend auto consteval
	(	operator<<
	)	(	ExponentParser
				i_vParser
		,	BasicCharacter<'+'>
		)
	->	ExponentParser
	{	return i_vParser;	}

	friend auto consteval
	(	operator<<
	)	(	ExponentParser
				i_vParser
		,	BasicCharacter<'-'>
		)
	->	ExponentParser
		<	t_nRadix
		,	t_nBase
		,	not
			t_bPositive
		>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = i_vParser.Denominator
		,	.Exponent = i_vParser.Exponent
		};
	}

	friend auto consteval
	(	Evaluate
	)	(	ExponentParser
				i_vParser
		)
	->	long double
	{
		unsigned long long const
			nExponent
		=	Power
			(	t_nBase
			,	i_vParser.Exponent
			)
		;
		if	constexpr(t_bPositive)
			return
			(	static_cast<long double>
				(	i_vParser.Numerator
				*	nExponent
				)
			/	static_cast<long double>
				(	i_vParser.Denominator
				)
			);
		else
			return
			(	static_cast<long double>
				(	i_vParser.Numerator
				)
			/	static_cast<long double>
				(	i_vParser.Denominator
				*	nExponent
				)
			);
	}
};

template
	<	typename
			t_tDerivedParser
	>
struct
	SignificandParser
:	BaseParser
	<	t_tDerivedParser
	>
{
	friend auto consteval
	(	operator<<
	)	(	t_tDerivedParser
				i_vParser
		,	BasicCharacter<'E'>
		)
	->	ExponentParser<Decimal, Decimal>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = i_vParser.Denominator
		};
	}

	friend auto consteval
	(	operator<<
	)	(	t_tDerivedParser
				i_vParser
		,	BasicCharacter<'e'>
		)
	->	ExponentParser<Decimal, Decimal>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = i_vParser.Denominator
		};
	}
};

template
	<	template
			<	unsigned long long
			>
		typename
			t_t1DerivedParser
	>
struct
	SignificandParser
	<	t_t1DerivedParser
		<	Hexadecimal
		>
	>
:	BaseParser
	<	t_t1DerivedParser
		<	Hexadecimal
		>
	>
{
	friend auto consteval
	(	operator<<
	)	(	t_t1DerivedParser<Hexadecimal>
				i_vParser
		,	BasicCharacter<'P'>
		)
		//	radix for hexadecimal exponent is decimal
		//	base for hexadecimal exponent is binary
	->	ExponentParser<Decimal, Binary>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = i_vParser.Denominator
		};
	}

	friend auto consteval
	(	operator<<
	)	(	t_t1DerivedParser<Hexadecimal>
				i_vParser
		,	BasicCharacter<'p'>
		)
		//	radix for hexadecimal exponent is decimal
		//	base for hexadecimal exponent is binary
	->	ExponentParser<Decimal, Binary>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = i_vParser.Denominator
		};
	}
};

template
	<	unsigned long long
			t_nRadix
	>
struct
	FloatParser
:	SignificandParser
	<	FloatParser
		<	t_nRadix
		>
	>
{
	unsigned long long
		Numerator
	;
	unsigned long long
		Denominator
	;

	auto consteval
	(	Append
	)	(	unsigned long long
				i_nParsed
		)	const
	->	FloatParser
	{	return
		{	.Numerator = Numerator * t_nRadix + i_nParsed
		,	.Denominator = Denominator * t_nRadix
		};
	}

	friend auto consteval
	(	Evaluate
	)	(	FloatParser
				i_vParser
		)
	->	long double
	{	return
		(	static_cast<long double>
			(	i_vParser.Numerator
			)
		/	static_cast<long double>
			(	i_vParser.Denominator
			)
		);
	}
};

template
	<	unsigned long long
			t_nRadix
	>
struct
	IntegerParser
:	SignificandParser
	<	IntegerParser
		<	t_nRadix
		>
	>
{
	unsigned long long
		Numerator
	;

	static unsigned long long constexpr
		Denominator
	=	1ull
	;

	auto consteval
	(	Append
	)	(	unsigned long long
				i_nParsed
		)
	->	IntegerParser
	{	return
		{	.Numerator = Numerator * t_nRadix + i_nParsed
		};
	}

	friend auto consteval
	(	operator<<
	)	(	IntegerParser
				i_vParser
		,	BasicCharacter<'.'>
		)
	->	FloatParser<t_nRadix>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = Denominator
		};
	}

	friend auto consteval
	(	Evaluate
	)	(	IntegerParser
				i_vParser
		)
	->	unsigned long long
	{	return i_vParser.Numerator;	}
};

auto constexpr inline
	DecimalParser
=	IntegerParser
	<	Decimal
	>{}
;

auto constexpr inline
	OctalParser
=	IntegerParser
	<	Octal
	>{}
;

auto constexpr inline
	HexadecimalParser
=	IntegerParser
	<	Hexadecimal
	>{}
;

auto constexpr inline
	BinaryParser
=	IntegerParser
	<	Binary
	>{}
;

template
	<	char
		...	t_npBasicCharacter
	>
auto consteval
(	ParseNumericLiteral
)	(	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
{	return
	(	DecimalParser
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_npBasicCharacter
	>
auto consteval
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
/// leading 0 indicates octal integral unless there is a separator or exponent
requires
	(	...
	and	(	t_npBasicCharacter != '.'
		and	t_npBasicCharacter != 'e'
		and	t_npBasicCharacter != 'E'
		)
	)
{	return
	(	OctalParser
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_npBasicCharacter
	>
auto consteval
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<'X'>
	,	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
{	return
	(	HexadecimalParser
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_npBasicCharacter
	>
auto consteval
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<'x'>
	,	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
{	return
	(	HexadecimalParser
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_npBasicCharacter
	>
auto consteval
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<'B'>
	,	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
{	return
	(	BinaryParser
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_npBasicCharacter
	>
auto consteval
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<'b'>
	,	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
{	return
	(	BinaryParser
	<<	...
	<<	i_vpNumeric
	);
}

export namespace
	Meta::Literals
{
	template
		<	char
			...	t_npBasicCharacter
		>
	auto consteval
	(	EvaluateNumericLiteral
	)	()
	{	return
		Evaluate
		(	::ParseNumericLiteral
			(	::BasicCharacter<t_npBasicCharacter>
				{}
				...
			)
		);
	}
}

