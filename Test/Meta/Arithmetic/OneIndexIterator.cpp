import Meta.Arithmetic.OneIndexIterator;
import Meta.Arithmetic.BitIndex;
import Meta.Arithmetic.BitField;
import Meta.Memory.Size;

import Std;

auto constexpr BitCount = ::Meta::Memory::SizeOf<decltype(0uz)> / 2z;

using BitField = ::Meta::Arithmetic::BitField<BitCount>;
using BitIndex = ::Meta::Arithmetic::BitIndex<BitCount>;
using Iterator =::Meta::Arithmetic::OneIndexIterator<BitCount>;
using ::Meta::Arithmetic::OneIndexSentinel;

static_assert(std::forward_iterator<Iterator>);
static_assert(std::sentinel_for<OneIndexSentinel, Iterator>);

static_assert(Iterator{BitField{1uz}} != OneIndexSentinel{});
static_assert(Iterator{BitField{0uz}} == OneIndexSentinel{});

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
