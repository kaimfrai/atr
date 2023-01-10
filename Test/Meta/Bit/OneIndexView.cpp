import Meta.Bit.OneIndexRange;

import Meta.Memory.Size;
import Std;

using namespace ::Meta::Literals;

using IndexView = ::Meta::Bit::OneIndexView<3_bit>;

static_assert(std::ranges::forward_range<IndexView>);
