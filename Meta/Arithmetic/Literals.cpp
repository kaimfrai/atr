export module Meta.Arithmetic.Literals;

import Meta.Math.Power;

import Std;

using ::Meta::Math::Power;

template
	<	char
	>
struct
	BasicCharacter
{};

enum class
	ERadix
:	unsigned char
{	Binary = 2u
,	Octal = 8u
,	Decimal = 10u
,	Hexadecimal = 16u
};

using
	UIntMax
=	::std::uintmax_t
;

using
	ParseType
=	::std::underlying_type_t
	<	ERadix
	>
;

using
	FloatMax
=	long double
;

auto constexpr inline
(	operator<=>
)	(	ParseType
			i_vParsed
	,	ERadix
			i_eRadix
	)
	noexcept
->	::std::strong_ordering
{	return
	(	i_vParsed
	<=>	::std::to_underlying
		(	i_eRadix
		)
	);
}

auto constexpr inline
(	operator*=
)	(	::std::integral auto
		&	i_rCounter
	,	ERadix
			i_eRadix
	)
	noexcept
->	decltype(i_rCounter)
{	return
	(	i_rCounter
	*=	::std::to_underlying
		(	i_eRadix
		)
	);
}

struct
	IgnoreQuote
{
	[[nodiscard]]
	auto friend constexpr inline
	(	operator<<
	)	(	auto
				i_vParser
		,	BasicCharacter<'\''>
		)
		noexcept
	->	decltype(i_vParser)
	{	return
			i_vParser
		;
	}
};

template
	<	char
			t_vCharacter
	,	ParseType
			t_vParsed
	>
struct
	ParseItem
{
	[[nodiscard]]
	auto friend constexpr inline
	(	operator<<
	)	(	auto
				i_vParser
		,	BasicCharacter<t_vCharacter>
		)
		noexcept
	->	decltype(i_vParser)
		requires
		(	i_vParser.Radix
		>	t_vParsed
		)
	{	return
			i_vParser
		.	Append
			(	t_vParsed
			)
		;
	}
};

struct
	BaseParser
:	IgnoreQuote
,	ParseItem<'0', 0x0u>
,	ParseItem<'1', 0x1u>
,	ParseItem<'2', 0x2u>
,	ParseItem<'3', 0x3u>
,	ParseItem<'4', 0x4u>
,	ParseItem<'5', 0x5u>
,	ParseItem<'6', 0x6u>
,	ParseItem<'7', 0x7u>
,	ParseItem<'8', 0x8u>
,	ParseItem<'9', 0x9u>
,	ParseItem<'A', 0xAu>
,	ParseItem<'B', 0xBu>
,	ParseItem<'C', 0xCu>
,	ParseItem<'D', 0xDu>
,	ParseItem<'E', 0xEu>
,	ParseItem<'F', 0xFu>
{};

template
	<	ERadix
			t_eRadix
	>
struct
	ExponentParser
:	BaseParser
{
	auto static constexpr inline
		Radix
	=	t_eRadix
	;

	UIntMax
		Numerator
	;
	UIntMax
		Denominator
	=	1ull
	;
	unsigned
		Exponent
	=	0u
	;
	ERadix
		Base
	;
	bool
		Positive
	=	true
	;

	auto constexpr inline
	(	Append
	)	(	ParseType
				i_vParsed
		)	&
		noexcept
	->	ExponentParser&
	{
		Exponent *= t_eRadix;
		Exponent += i_vParsed;
		return
			*this
		;
	}

	[[nodiscard]]
	auto friend constexpr inline
	(	operator<<
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
	auto friend constexpr inline
	(	operator<<
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
	auto friend constexpr inline
	(	Evaluate
	)	(	ExponentParser
				i_vParser
		)
		noexcept
	->	FloatMax
	{
		auto const
			vExponent
		=	Power
			(	static_cast<FloatMax>(i_vParser.Base)
			,	i_vParser.Exponent
			)
		;
		if	(	i_vParser
			.	Positive
			)
		{	return
			(	(	static_cast<FloatMax>
					(	i_vParser.Numerator
					)
				*	vExponent
				)
			/	static_cast<FloatMax>
				(	i_vParser.Denominator
				)
			);
		}
		else
		{	return
			(	static_cast<FloatMax>
				(	i_vParser.Numerator
				)
			/	(	static_cast<FloatMax>
					(	i_vParser.Denominator
					)
				*	vExponent
				)
			);
		}
	}
};

struct
	SignificandParser
:	BaseParser
{
	using enum ERadix;

	[[nodiscard]]
	auto friend constexpr inline
	(	operator<<
	)	(	auto
				i_vParser
		,	BasicCharacter
			<	(	i_vParser.Radix
				==	Hexadecimal
				)
			?	'P'
			:	'E'
			>
		)
		noexcept
	->	ExponentParser<Decimal>
	{	//	radix for hexadecimal exponent is decimal
		//	base for hexadecimal exponent is binary
		return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = i_vParser.Denominator
		,	.Base = (i_vParser.Radix == Hexadecimal) ? Binary : Decimal
		};
	}
};

template
	<	ERadix
			t_eRadix
	>
struct
	FloatParser
:	SignificandParser
{
	auto static constexpr inline
		Radix
	=	t_eRadix
	;

	UIntMax
		Numerator
	;
	UIntMax
		Denominator
	;

	auto constexpr inline
	(	Append
	)	(	ParseType
				i_vParsed
		)	&
		noexcept
	->	FloatParser&
	{
		Numerator *= t_eRadix;
		Numerator += i_vParsed;
		Denominator *= t_eRadix;
		return
			*this
		;
	}

	[[nodiscard]]
	auto friend constexpr inline
	(	Evaluate
	)	(	FloatParser
				i_vParser
		)
		noexcept
	->	FloatMax
	{	return
		(	static_cast<FloatMax>
			(	i_vParser.Numerator
			)
		/	static_cast<FloatMax>
			(	i_vParser.Denominator
			)
		);
	}
};

template
	<	ERadix
			t_eRadix
	>
struct
	IntegerParser
:	SignificandParser
{
	auto static constexpr inline
		Radix
	=	t_eRadix
	;

	UIntMax
		Numerator
	;

	UIntMax static constexpr inline
		Denominator
	=	1uz
	;

	auto constexpr inline
	(	Append
	)	(	ParseType
				i_vParsed
		)	&
		noexcept
	->	IntegerParser&
	{
		Numerator *= t_eRadix;
		Numerator += i_vParsed;
		return
			*this
		;
	}

	[[nodiscard]]
	auto friend constexpr inline
	(	operator<<
	)	(	IntegerParser
				i_vParser
		,	BasicCharacter<'.'>
		)
		noexcept
	->	FloatParser<t_eRadix>
	{	return
		{	.Numerator = i_vParser.Numerator
		,	.Denominator = Denominator
		};
	}

	[[nodiscard]]
	auto friend constexpr inline
	(	Evaluate
	)	(	IntegerParser
				i_vParser
		)
		noexcept
	->	UIntMax
	{	return
			i_vParser
		.	Numerator
		;
	}
};

template
	<	char
		...	t_vpBasicCharacter
	>
[[nodiscard]]
auto constexpr inline
(	ParseNumericLiteral
)	(	BasicCharacter<t_vpBasicCharacter>
		...	i_vpNumeric
	)
	noexcept
{	return
	(	IntegerParser
		<	ERadix::Decimal
		>{}
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_vpBasicCharacter
	>
[[nodiscard]]
auto constexpr inline
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<t_vpBasicCharacter>
		...	i_vpNumeric
	)
	noexcept
/// leading 0 indicates octal integral unless there is a separator or exponent
requires
	(	...
	and	(	t_vpBasicCharacter != '.'
		and	t_vpBasicCharacter != 'E'
		)
	)
{	return
	(	IntegerParser
		<	ERadix::Octal
		>{}
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_vpBasicCharacter
	>
[[nodiscard]]
auto constexpr inline
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<'X'>
	,	BasicCharacter<t_vpBasicCharacter>
		...	i_vpNumeric
	)
	noexcept
{	return
	(	IntegerParser
		<	ERadix::Hexadecimal
		>{}
	<<	...
	<<	i_vpNumeric
	);
}

template
	<	char
		...	t_vpBasicCharacter
	>
[[nodiscard]]
auto constexpr inline
(	ParseNumericLiteral
)	(	BasicCharacter<'0'>
	,	BasicCharacter<'B'>
	,	BasicCharacter<t_vpBasicCharacter>
		...	i_vpNumeric
	)
	noexcept
{	return
	(	IntegerParser
		<	ERadix::Binary
		>{}
	<<	...
	<<	i_vpNumeric
	);
}

[[nodiscard]]
auto constexpr inline
(	ToUpper
)	(	char
			i_vChar
	)
	noexcept
->	char
{	if	(	i_vChar
		>=	'a'
		and	i_vChar
		<=	'z'
		)
	{	return
		static_cast<char>
		(	i_vChar
		-	'a'
		+	'A'
		);
	}

	return
		i_vChar
	;
}

export namespace
	Meta::Arithmetic
{
	template
		<	char
			...	t_vpBasicCharacter
		>
	[[nodiscard]]
	auto constexpr inline
	(	EvaluateNumericLiteral
	)	()
		noexcept
	{	return
		Evaluate
		(	::ParseNumericLiteral
			(	::BasicCharacter
				<	::ToUpper
					(	t_vpBasicCharacter
					)
				>{}
				...
			)
		);
	}
}
