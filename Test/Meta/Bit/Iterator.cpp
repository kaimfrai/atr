import Meta.Bit.Iterator;

import Std;

using ::Meta::Bit::IndexIterator;
using ::Meta::Bit::Sentinel;

static_assert(std::forward_iterator<IndexIterator>);
static_assert(std::sentinel_for<Sentinel, IndexIterator>);

static_assert(IndexIterator{1uz} != Sentinel{});
static_assert(IndexIterator{0uz} == Sentinel{});

static_assert(*IndexIterator{0b0000000000000001uz} == 0uz);
static_assert(*IndexIterator{0b0000000000000010uz} == 1uz);
static_assert(*IndexIterator{0b0000000000000100uz} == 2uz);
static_assert(*IndexIterator{0b0000000000001000uz} == 3uz);

static_assert(*std::ranges::next(IndexIterator{0b1001000000001000uz}, 0uz) == 3uz);
static_assert(*std::ranges::next(IndexIterator{0b1001000000001000uz}, 1uz) == 12uz);
static_assert(*std::ranges::next(IndexIterator{0b1001000000001000uz}, 2uz) == 15uz);
