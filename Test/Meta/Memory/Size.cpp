import Meta.Memory.Size;

using ::Meta::Bytes;
using namespace ::Meta::Literals;

static_assert(1_bit < 1_byte);
static_assert(ByteSize(1_bit) == 1_byte);
