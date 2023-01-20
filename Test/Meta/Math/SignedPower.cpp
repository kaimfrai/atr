import Meta.Math.Power;

using ::Meta::Math::Power;

static_assert
(	Power(0z, 0u)
==	1z
);
static_assert
(	Power(0z, 1u)
==	0z
);
static_assert
(	Power(0z, 2u)
==	0z
);
static_assert
(	Power(0z, 0xFFFFu)
==	0z
);
static_assert
(	Power(0z, compl 0u)
==	0z
);

static_assert
(	Power(1z, 0u)
==	1z
);
static_assert
(	Power(1z, 1u)
==	1z
);
static_assert
(	Power(1z, 2u)
==	1z
);
static_assert
(	Power(1z, 0xFFFFu)
==	1z
);
static_assert
(	Power(1z, compl 0u)
==	1z
);

static_assert
(	Power(2z, 0u)
==	1z << 0z
);
static_assert
(	Power(2z, 1u)
==	1z << 1z
);
static_assert
(	Power(2z, 2u)
==	1z << 2z
);
static_assert
(	Power(2z, 3u)
==	1z << 3z
);
static_assert
(	Power(2z, 4u)
==	1z << 4z
);
static_assert
(	Power(2z, 7u)
==	1z << 7z
);
static_assert
(	Power(2z, 14u)
==	1z << 14z
);
static_assert
(	Power(2z, 29u)
==	1z << 29z
);
static_assert
(	Power(2z, 58u)
==	1z << 58z
);
static_assert
(	Power(2z, 62u)
==	1z << 62z
);

static_assert
(	Power(6z, 12u)
==	2176782336z
);
static_assert
(	Power(7z, 2u)
==	49z
);
static_assert
(	Power(255z, 7u)
==	255z * 255z * 255z * 255z * 255z * 255z * 255z
);
