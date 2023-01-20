import Meta.Arithmetic.Literals;

template
	<	char
		...	t_npNumeric
	>
[[nodiscard]]
auto constexpr
(	operator""_Test
)	()
	noexcept
->	unsigned long long
{	return
	::Meta::Arithmetic::EvaluateNumericLiteral
	<	t_npNumeric
		...
	>();
}

static_assert
(	0x0_Test
==	0x0ull
);
static_assert
(	0x1_Test
==	0x1ull
);
static_assert
(	0x2_Test
==	0x2ull
);
static_assert
(	0x3_Test
==	0x3ull
);
static_assert
(	0x4_Test
==	0x4ull
);
static_assert
(	0x5_Test
==	0x5ull
);
static_assert
(	0x6_Test
==	0x6ull
);
static_assert
(	0x7_Test
==	0x7ull
);
static_assert
(	0x8_Test
==	0x8ull
);
static_assert
(	0x9_Test
==	0x9ull
);
static_assert
(	0xA_Test
==	0xAull
);
static_assert
(	0xa_Test
==	0xaull
);
static_assert
(	0xB_Test
==	0xBull
);
static_assert
(	0xb_Test
==	0xbull
);
static_assert
(	0xC_Test
==	0xCull
);
static_assert
(	0xc_Test
==	0xcull
);
static_assert
(	0xD_Test
==	0xDull
);
static_assert
(	0xd_Test
==	0xdull
);
static_assert
(	0xE_Test
==	0xEull
);
static_assert
(	0xe_Test
==	0xeull
);
static_assert
(	0xF_Test
==	0xFull
);
static_assert
(	0xf_Test
==	0xfull
);

static_assert
(	1'2'3_Test
==	1'2'3ull
);

static_assert
(	0'1'2'3_Test
==	0'1'2'3ull
);

static_assert
(	0x1'b'f_Test
==	0x1'b'full
);
static_assert
(	0X1'B'F_Test
==	0X1'B'Full
);

static_assert
(	0b1'0'1_Test
==	0b101ull
);
static_assert
(	0B1'0'1_Test
==	0B1'0'1ull
);
