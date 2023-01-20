export module Meta.Arithmetic.Literals;

import Meta.Math.Power;

using ::Meta::Math::Power;

template
	<	char
	>
struct
	BasicCharacter
{};

unsigned char constexpr inline
	Decimal
=	10u
;
unsigned char constexpr inline
	Octal
=	8u
;
unsigned char constexpr inline
	Hexadecimal
=	16u
;
unsigned char constexpr inline
	Binary
=	2u
;

template
	<	typename
			t_tDerivedParser
	,	char
			t_nCharacter
	,	unsigned char
			t_nParsed
	>
struct
	ParseItem
{};

template
	<	template
			<	unsigned char
			>
		typename
			t_t1DerivedParser
	,	unsigned char
			t_nRadix
	,	char
			t_nCharacter
	,	unsigned char
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
		>
	,	t_nCharacter
	,	t_nParsed
	>
{
	[[nodiscard]]
	friend auto constexpr
	(	operator <<
	)	(	t_t1DerivedParser<t_nRadix>
				i_vParser
		,	BasicCharacter<t_nCharacter>
		)
		noexcept
	->	t_t1DerivedParser<t_nRadix>
	{	return
			i_vParser
		.	Append
			(	t_nParsed
			)
		;
	}
};

template
	<	typename
			t_tDerivedParser
	>
struct
	BaseParser
:	ParseItem<t_tDerivedParser, '0', 0x0u>
,	ParseItem<t_tDerivedParser, '1', 0x1u>
,	ParseItem<t_tDerivedParser, '2', 0x2u>
,	ParseItem<t_tDerivedParser, '3', 0x3u>
,	ParseItem<t_tDerivedParser, '4', 0x4u>
,	ParseItem<t_tDerivedParser, '5', 0x5u>
,	ParseItem<t_tDerivedParser, '6', 0x6u>
,	ParseItem<t_tDerivedParser, '7', 0x7u>
,	ParseItem<t_tDerivedParser, '8', 0x8u>
,	ParseItem<t_tDerivedParser, '9', 0x9u>
,	ParseItem<t_tDerivedParser, 'A', 0xAu>
,	ParseItem<t_tDerivedParser, 'B', 0xBu>
,	ParseItem<t_tDerivedParser, 'C', 0xCu>
,	ParseItem<t_tDerivedParser, 'D', 0xDu>
,	ParseItem<t_tDerivedParser, 'E', 0xEu>
,	ParseItem<t_tDerivedParser, 'F', 0xFu>
{
	[[nodiscard]]
	friend auto constexpr
	(	operator<<
	)	(	t_tDerivedParser
				i_vParser
		,	BasicCharacter<'\''>
		)
		noexcept
	->	t_tDerivedParser
	{	return
			i_vParser
		;
	}
};

template
	<	unsigned char
			t_nRadix
	>
struct
	ExponentParser
:	BaseParser
	<	ExponentParser
		<	t_nRadix
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
	unsigned
		Exponent
	=	0u
	;
	unsigned char
		Base
	;
	bool
		Positive
	=	true
	;

	auto constexpr
	(	Append
	)	(	unsigned char
				i_nParsed
		)	&
		noexcept
	->	ExponentParser&
	{
		Exponent *= t_nRadix;
		Exponent += i_nParsed;
		return
			*this
		;
	}

	[[nodiscard]]
	friend auto constexpr
	(	operator <<
	)	(	ExponentParser
				i_vParser
		,	BasicCharacter<'+'>
		)
		noexcept
	->	ExponentParser
	{
		i_vParser.Positive = true;

		return
			i_vParser
		;
	}

	[[nodiscard]]
	friend auto constexpr
	(	operator <<
	)	(	ExponentParser
				i_vParser
		,	BasicCharacter<'-'>
		)
		noexcept
	->	ExponentParser
	{
		i_vParser.Positive = false;

		return
			i_vParser
		;
	}

	[[nodiscard]]
	friend auto constexpr
	(	Evaluate
	)	(	ExponentParser
				i_vParser
		)
		noexcept
	->	long double
	{
		auto const
			nExponent
		=	Power
			(	static_cast<long double>(i_vParser.Base)
			,	i_vParser.Exponent
			)
		;
		if	(	i_vParser
			.	Positive
			)
		{	return
			(	(	static_cast<long double>
					(	i_vParser.Numerator
					)
				*	nExponent
				)
			/	static_cast<long double>
				(	i_vParser.Denominator
				)
			);
		}
		else
		{	return
			(	static_cast<long double>
				(	i_vParser.Numerator
				)
			/	(	static_cast<long double>
					(	i_vParser.Denominator
					)
				*	nExponent
				)
			);
		}
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
	[[nodiscard]]
	friend auto constexpr
	(	operator <<
	)	(	t_tDerivedParser
				i_vParser
		,	BasicCharacter<'E'>
		)
		noexcept
	->	ExponentParser<Decimal>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = i_vParser.Denominator
		,	.Base = Decimal
		};
	}
};

template
	<	template
			<	unsigned char
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
	[[nodiscard]]
	friend auto constexpr
	(	operator <<
	)	(	t_t1DerivedParser<Hexadecimal>
				i_vParser
		,	BasicCharacter<'P'>
		)
		noexcept
		//	radix for hexadecimal exponent is decimal
		//	base for hexadecimal exponent is binary
	->	ExponentParser<Decimal>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = i_vParser.Denominator
		,	.Base = Binary
		};
	}
};

template
	<	unsigned char
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

	auto constexpr
	(	Append
	)	(	unsigned char
				i_nParsed
		)	&
		noexcept
	->	FloatParser&
	{
		Numerator *= t_nRadix;
		Numerator += i_nParsed;
		Denominator *= t_nRadix;
		return
			*this
		;
	}

	[[nodiscard]]
	friend auto constexpr
	(	Evaluate
	)	(	FloatParser
				i_vParser
		)
		noexcept
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
	<	unsigned char
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

	auto constexpr
	(	Append
	)	(	unsigned char
				i_nParsed
		)	&
		noexcept
	->	IntegerParser&
	{
		Numerator *= t_nRadix;
		Numerator += i_nParsed;
		return
			*this
		;
	}

	[[nodiscard]]
	friend auto constexpr
	(	operator <<
	)	(	IntegerParser
				i_vParser
		,	BasicCharacter<'.'>
		)
		noexcept
	->	FloatParser<t_nRadix>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = Denominator
		};
	}

	[[nodiscard]]
	friend auto constexpr
	(	Evaluate
	)	(	IntegerParser
				i_vParser
		)
		noexcept
	->	unsigned long long
	{	return
			i_vParser
		.	Numerator
		;
	}
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
[[nodiscard]]
auto constexpr
(	ParseNumericLiteral
)	(	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
	noexcept
{	return
	(	::DecimalParser
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_npBasicCharacter
	>
[[nodiscard]]
auto constexpr
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
	noexcept
/// leading 0 indicates octal integral unless there is a separator or exponent
requires
	(	...
	and	(	t_npBasicCharacter != '.'
		and	t_npBasicCharacter != 'E'
		)
	)
{	return
	(	::OctalParser
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_npBasicCharacter
	>
[[nodiscard]]
auto constexpr
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<'X'>
	,	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
	noexcept
{	return
	(	::HexadecimalParser
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_npBasicCharacter
	>
[[nodiscard]]
auto constexpr
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<'B'>
	,	BasicCharacter<t_npBasicCharacter>
		...	i_vpNumeric
	)
	noexcept
{	return
	(	BinaryParser
	<<	...
	<<	i_vpNumeric
	);
}

[[nodiscard]]
auto constexpr
(	ToUpper
)	(	char
			i_nChar
	)
	noexcept
->	char
{	if	(	i_nChar
		>=	'a'
		and	i_nChar
		<=	'z'
		)
	{	return
		static_cast<char>
		(	i_nChar
		-	'a'
		+	'A'
		);
	}

	return
		i_nChar
	;
}

export namespace
	Meta::Arithmetic
{
	template
		<	char
			...	t_npBasicCharacter
		>
	[[nodiscard]]
	auto constexpr
	(	EvaluateNumericLiteral
	)	()
		noexcept
	{	return
		Evaluate
		(	::ParseNumericLiteral
			(	::BasicCharacter
				<	::ToUpper
					(	t_npBasicCharacter
					)
				>{}
				...
			)
		);
	}
}
