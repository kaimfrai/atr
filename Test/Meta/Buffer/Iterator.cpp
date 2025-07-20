import Meta.Buffer.Iterator;

import std;

using Meta::Buffer::Iterator;
using Meta::Buffer::Sentinel;

static_assert(std::contiguous_iterator<Iterator<char>>);
static_assert(std::contiguous_iterator<Iterator<char const>>);
static_assert(std::sentinel_for<Sentinel<char>, Iterator<char>>);
static_assert(std::sentinel_for<Sentinel<char const>, Iterator<char>>);
static_assert(std::sentinel_for<Sentinel<char>, Iterator<char const>>);
static_assert(std::sentinel_for<Sentinel<char const>, Iterator<char const>>);
