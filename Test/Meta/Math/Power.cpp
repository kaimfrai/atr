import Meta.Math.Power;

using ::Meta::Math::Power;

static_assert
(	Power(0uz, 0uz)
==	1uz
);
static_assert
(	Power(0uz, 1uz)
==	0uz
);
static_assert
(	Power(0uz, 2uz)
==	0uz
);
static_assert
(	Power(0uz, 0xFFFFuz)
==	0uz
);
static_assert
(	Power(0uz, compl 0uz)
==	0uz
);

static_assert
(	Power(1uz, 0uz)
==	1uz
);
static_assert
(	Power(1uz, 1uz)
==	1uz
);
static_assert
(	Power(1uz, 2uz)
==	1uz
);
static_assert
(	Power(1uz, 0xFFFFuz)
==	1uz
);
static_assert
(	Power(1uz, compl 0uz)
==	1uz
);

static_assert
(	Power(2uz, 0uz)
==	1uz << 0uz
);
static_assert
(	Power(2uz, 1uz)
==	1uz << 1uz
);
static_assert
(	Power(2uz, 2uz)
==	1uz << 2uz
);
static_assert
(	Power(2uz, 3uz)
==	1uz << 3uz
);
static_assert
(	Power(2uz, 4uz)
==	1uz << 4uz
);
static_assert
(	Power(2uz, 7uz)
==	1uz << 7uz
);
static_assert
(	Power(2uz, 14uz)
==	1uz << 14uz
);
static_assert
(	Power(2uz, 29uz)
==	1uz << 29uz
);
static_assert
(	Power(2uz, 58uz)
==	1uz << 58uz
);
static_assert
(	Power(2uz, 63uz)
==	1uz << 63uz
);

static_assert
(	Power(6uz, 12uz)
==	2176782336uz
);
static_assert
(	Power(7uz, 2uz)
==	49uz
);
static_assert
(	Power(0xFFuz, 8uz)
==	255uz * 255uz * 255uz * 255uz * 255uz * 255uz * 255uz * 255uz
);
