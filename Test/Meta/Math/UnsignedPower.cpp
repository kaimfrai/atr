import Meta.Math.Power;

using ::Meta::Math::Power;

static_assert
(	Power(0uz, 0u)
==	1uz
);
static_assert
(	Power(0uz, 1u)
==	0uz
);
static_assert
(	Power(0uz, 2u)
==	0uz
);
static_assert
(	Power(0uz, 0xFFFFu)
==	0uz
);
static_assert
(	Power(0uz, compl 0u)
==	0uz
);

static_assert
(	Power(1uz, 0u)
==	1uz
);
static_assert
(	Power(1uz, 1u)
==	1uz
);
static_assert
(	Power(1uz, 2u)
==	1uz
);
static_assert
(	Power(1uz, 0xFFFFu)
==	1uz
);
static_assert
(	Power(1uz, compl 0u)
==	1uz
);

static_assert
(	Power(2uz, 0u)
==	1uz << 0uz
);
static_assert
(	Power(2uz, 1u)
==	1uz << 1uz
);
static_assert
(	Power(2uz, 2u)
==	1uz << 2uz
);
static_assert
(	Power(2uz, 3u)
==	1uz << 3uz
);
static_assert
(	Power(2uz, 4u)
==	1uz << 4uz
);
static_assert
(	Power(2uz, 7u)
==	1uz << 7uz
);
static_assert
(	Power(2uz, 14u)
==	1uz << 14uz
);
static_assert
(	Power(2uz, 29u)
==	1uz << 29uz
);
static_assert
(	Power(2uz, 58u)
==	1uz << 58uz
);
static_assert
(	Power(2uz, 63u)
==	1uz << 63uz
);

static_assert
(	Power(6uz, 12u)
==	2176782336uz
);
static_assert
(	Power(7uz, 2u)
==	49uz
);
static_assert
(	Power(255uz, 8u)
==	255uz * 255uz * 255uz * 255uz * 255uz * 255uz * 255uz * 255uz
);
