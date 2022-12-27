import Meta.Arithmetic.BitIndexIterator;
import Meta.Arithmetic.BitIndex;
import Meta.Arithmetic.BitField;
import Meta.Byte.Count;

import Std;

auto constexpr BitSize = ::Meta::Byte::SizeOf<decltype(0uz)>;

using BitField = ::Meta::Arithmetic::BitField<BitSize>;
using BitIndex = ::Meta::Arithmetic::BitIndex<BitSize>;
using Iterator =::Meta::Arithmetic::BitIndexIterator<BitSize>;
using ::Meta::Arithmetic::BitIndexSentinel;

static_assert(std::forward_iterator<Iterator>);
static_assert(std::sentinel_for<BitIndexSentinel, Iterator>);

static_assert(Iterator{BitField{1uz}} != BitIndexSentinel{});
static_assert(Iterator{BitField{0uz}} == BitIndexSentinel{});

static_assert
(	*Iterator{BitField{0b0000000000000001uz}}
==	BitIndex{0uz}
);
static_assert
(	*Iterator{BitField{0b0000000000000010uz}}
==	BitIndex{1uz}
);
static_assert
(	*Iterator{BitField{0b0000000000000100uz}}
==	BitIndex{2uz}
);
static_assert
(	*Iterator{BitField{0b0000000000001000uz}}
==	BitIndex{3uz}
);

static_assert
(	*std::ranges::next(Iterator{BitField{0b1001000000001000uz}}, 0uz)
==	BitIndex{3uz}
);
static_assert
(	*std::ranges::next(Iterator{BitField{0b1001000000001000uz}}, 1uz)
==	BitIndex{12uz}
);
static_assert
(	*std::ranges::next(Iterator{BitField{0b1001000000001000uz}}, 2uz)
==	BitIndex{15uz}
);
