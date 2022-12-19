import Meta.Data;

import Std;

using Meta::Data::Iterator;
using Meta::Data::Sentinel;

static_assert(std::contiguous_iterator<Iterator<char>>);
static_assert(std::contiguous_iterator<Iterator<char const>>);
static_assert(std::sentinel_for<Sentinel<char>, Iterator<char>>);
static_assert(std::sentinel_for<Sentinel<char const>, Iterator<char>>);
static_assert(std::sentinel_for<Sentinel<char>, Iterator<char const>>);
static_assert(std::sentinel_for<Sentinel<char const>, Iterator<char const>>);
