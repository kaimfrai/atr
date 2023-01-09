import Meta.Memory.Size;
import Meta.Memory.Size.Compare;

using ::Meta::ByteSize;
using namespace ::Meta::Literals;

static_assert(1_bit < 1_byte);
static_assert(ByteSize(1_bit) == 1_byte);
