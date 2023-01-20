import Meta.Math.Power;
import Meta.Math.Approximate;

using ::Meta::Math::Power;
using ::Meta::Math::Approximate;

static_assert
(	Approximate
	(	Power(0.0, 0u)
	,	1.0
	)
);
static_assert
(	Approximate
	(	Power(0.0, 1u)
	,	0.0
	)
);
static_assert
(	Approximate
	(	Power(0.0, 2u)
	,	0.0
	)
);
static_assert
(	Approximate
	(	Power(0.0, 0xFFFFu)
	,	0.0
	)
);
static_assert
(	Approximate
	(	Power(0.0, compl 0u)
	,	0.0
	)
);

static_assert
(	Approximate
	(	Power(1.0, 0u)
	,	1.0
	)
);
static_assert
(	Approximate
	(	Power(1.0, 1u)
	,	1.0
	)
);
static_assert
(	Approximate
	(	Power(1.0, 2u)
	,	1.0
	)
);
static_assert
(	Approximate
	(	Power(1.0, 0xFFFFu)
	,	1.0
	)
);
static_assert
(	Approximate
	(	Power(1.0, compl 0u)
	,	1.0
	)
);

static_assert
(	Approximate
	(	Power(2.0, 0u)
	,	double{1z << 0z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 1u)
	,	double{1z << 1z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 2u)
	,	double{1z<< 2z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 3u)
	,	double{1z << 3z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 4u)
	,	double{1z << 4z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 7u)
	,	double{1z << 7z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 14u)
	,	double{1z << 14z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 29u)
	,	double{1z << 29z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 58u)
	,	double{1z << 58z}
	)
);
static_assert
(	Approximate
	(	Power(2.0, 128u)
	,	double{1z << 32z} * (1z << 32z) * (1z << 32z) * (1z << 32z)
	)
);

static_assert
(	Approximate
	(	Power(6.0, 12u)
	,	2176782336.0
	)
);
static_assert
(	Approximate
	(	Power(7.0, 2u)
	,	49.0
	)
);
static_assert
(	Approximate
	(	Power(255.0, 7u)
	,	255.0 * 255.0 * 255.0 * 255.0 * 255.0 * 255.0 * 255.0
	)
);
