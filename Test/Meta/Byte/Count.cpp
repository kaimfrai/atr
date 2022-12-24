import Meta.Byte.Count;
import Meta.Bit.Count;

using ::Meta::Bytes;
using namespace ::Meta::Literals;

static_assert(1_bit < 1_byte);
static_assert(Bytes(1_bit) == 1_byte);
