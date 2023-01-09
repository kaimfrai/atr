import Meta.Memory.Count;

using ::Meta::Bytes;
using namespace ::Meta::Literals;

static_assert(1_bits < 1_bytes);
static_assert(Bytes(1_bits) == 1_bytes);
