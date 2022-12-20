import Test.Meta.Literals.Data;

static_assert
(	Approximate
	(	123.456_Test
	,	123.456L
	)
);
static_assert
(	Approximate
	(	123e4_Test
	,	123e4L
	)
);
static_assert
(	Approximate
	(	123E4_Test
	,	123E4L
	)
);
static_assert
(	Approximate
	(	123e-4_Test
	,	123e-4L
	)
);
static_assert
(	Approximate
	(	123E-4_Test
	,	123E-4L
	)
);
static_assert
(	Approximate
	(	123.45e6_Test
	,	123.45e6L
	)
);
static_assert
(	Approximate
	(	123.45E6_Test
	,	123.45E6L
	)
);
static_assert
(	Approximate
	(	123.45e-6_Test
	,	123.45e-6L
	)
);
static_assert
(	Approximate
	(	123.45E-6_Test
	,	123.45E-6L
	)
);

static_assert
(	Approximate
	(	0x1bfp4_Test
	,	0x1bfp4L
	)
);
static_assert
(	Approximate
	(	0X1BFP4_Test
	,	0X1BFP4L
	)
);
static_assert
(	Approximate
	(	0X1BFP-4_Test
	,	0X1BFP-4L
	)
);

static_assert
(	Approximate
	(	0x1bf.acp6_Test
	,	0x1bf.acp6L
	)
);
static_assert
(	Approximate
	(	0X1BF.ACP6_Test
	,	0X1BF.ACP6L
	)
);
static_assert
(	Approximate
	(	0x1bf.acp-6_Test
	,	0x1bf.acp-6L
	)
);
static_assert
(	Approximate
	(	0X1BF.ACP-6_Test
	,	0X1BF.ACP-6L
	)
);
