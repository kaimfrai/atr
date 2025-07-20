import Meta.Bit.OneIndexIterator;
import Meta.Bit.Index;
import Meta.Bit.Index.Compare;
import Meta.Memory.Size;
import Meta.Memory.Size.Scale;

import std;

using namespace ::Meta::Literals;

using
	Iterator
=	decltype
	(	::Meta::Bit::OneIndexIterator
		{0uz}
	)
;
using
	Sentinel
=	::Meta::Bit::OneIndexSentinel
;

static_assert
(	::std::forward_iterator
	<	Iterator
	>
);
static_assert
(	::std::sentinel_for
	<	Sentinel
	,	Iterator
	>
);

static_assert
(	Iterator{1uz}
!=	Sentinel{}
);
static_assert
(	Iterator{0uz}
==	Sentinel{}
);

static_assert
(	*
	Iterator
	{	0b0000000000000001uz
	}
==	0_bdx
);
static_assert
(	*
	Iterator
	{	0b0000000000000010uz
	}
==	1_bdx
);
static_assert
(	*
	Iterator
	{	0b0000000000000100uz
	}
==	2_bdx
);
static_assert
(	*
	Iterator
	{	0b0000000000001000uz
	}
==	3_bdx
);

static_assert
(	*
	::std::next
	(	Iterator
		{	0b1001000000001000uz
		}
	,	0z
	)
==	3_bdx
);
static_assert
(	*
	::std::next
	(	Iterator
		{	0b1001000000001000uz
		}
	,	1z
	)
==	12_bdx
);
static_assert
(	*
	::std::next
	(	Iterator
		{	0b1001000000001000uz
		}
	,	2z
	)
==	15_bdx
);
