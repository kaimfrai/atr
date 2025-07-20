import std;
import Meta.Size;

static_assert(std::is_same_v<Meta::USize, std::size_t>);
static_assert(std::is_same_v<Meta::SSize, std::ptrdiff_t>);
