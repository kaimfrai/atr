import Meta.Bit.OneIndexIterator;
import Meta.Bit.Index;
import Meta.Bit.Field;
import Meta.Memory.Size;
import Meta.Memory.Size.Scale;

import Std;

using namespace ::Meta::Literals;

auto constexpr
	BitCount
=	 ::Meta::Memory::SizeOf
	<	decltype(0uz)
	>
/	2z
;

using BitField = ::Meta::Bit::Field<BitCount>;
using Iterator = ::Meta::Bit::OneIndexIterator<BitCount>;
using ::Meta::Bit::OneIndexSentinel;

static_assert(std::forward_iterator<Iterator>);
static_assert(std::sentinel_for<OneIndexSentinel, Iterator>);

static_assert
(	Iterator{BitField{1uz}}
!=	OneIndexSentinel{}
);
static_assert
(	Iterator{BitField{0uz}}
==	OneIndexSentinel{}
);

static_assert
(	*
	Iterator
	{	BitField{0b0000000000000001uz}
	}
==	0_bdx
);
static_assert
(	*
	Iterator
	{	BitField{0b0000000000000010uz}
	}
==	1_bdx
);
static_assert
(	*
	Iterator
	{	BitField{0b0000000000000100uz}
	}
==	2_bdx
);
static_assert
(	*
	Iterator
	{	BitField{0b0000000000001000uz}
	}
==	3_bdx
);

static_assert
(	*std::ranges::next
	(	Iterator
		{	BitField{0b1001000000001000uz}
		}
	,	0z
	)
==	3_bdx
);
static_assert
(	*std::ranges::next
	(	Iterator
		{	BitField{0b1001000000001000uz}
		}
	,	1z
	)
==	12_bdx
);
static_assert
(	*std::ranges::next
	(	Iterator
		{	BitField{0b1001000000001000uz}
		}
	,	2z
	)
==	15_bdx
);
