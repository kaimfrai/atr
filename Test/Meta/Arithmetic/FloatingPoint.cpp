import Meta.Arithmetic.Literals;
import Meta.Math.Approximate;

using ::Meta::Math::Approximate;

template
	<	char
		...	t_npNumeric
	>
[[nodiscard]]
auto constexpr inline
(	operator""_Test
)	()
	noexcept
->	double
{	return
	static_cast<double>
	(	::Meta::Arithmetic::EvaluateNumericLiteral
		<	t_npNumeric
			...
		>()
	);
}

static_assert
(	Approximate
	(	123.456_Test
	,	123.456
	)
);
static_assert
(	Approximate
	(	123e+287_Test
	,	123e+287
	)
);
static_assert
(	Approximate
	(	123E+287_Test
	,	123E+287
	)
);
static_assert
(	Approximate
	(	123e-287_Test
	,	123e-287
	)
);
static_assert
(	Approximate
	(	123E-287_Test
	,	123E-287
	)
);
static_assert
(	Approximate
	(	123.45e287_Test
	,	123.45e287
	)
);
static_assert
(	Approximate
	(	123.45E287_Test
	,	123.45E287
	)
);
static_assert
(	Approximate
	(	123.45e-287_Test
	,	123.45e-287
	)
);
static_assert
(	Approximate
	(	123.45E-287_Test
	,	123.45E-287
	)
);

static_assert
(	Approximate
	(	0x1bfp4_Test
	,	0x1bfp4
	)
);
static_assert
(	Approximate
	(	0X1BFP4_Test
	,	0X1BFP4
	)
);
static_assert
(	Approximate
	(	0X1BFP-4_Test
	,	0X1BFP-4
	)
);

static_assert
(	Approximate
	(	0x1bf.acp6_Test
	,	0x1bf.acp6
	)
);
static_assert
(	Approximate
	(	0X1BF.ACP6_Test
	,	0X1BF.ACP6
	)
);
static_assert
(	Approximate
	(	0x1bf.acp-6_Test
	,	0x1bf.acp-6
	)
);
static_assert
(	Approximate
	(	0X1BF.ACP-6_Test
	,	0X1BF.ACP-6
	)
);
