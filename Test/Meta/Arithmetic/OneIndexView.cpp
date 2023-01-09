import Meta.Arithmetic.OneIndexView;

import Meta.Bit.Size;
import Std;

using namespace ::Meta::Literals;

using IndexView = ::Meta::Arithmetic::OneIndexView<3_bit>;

static_assert(std::ranges::forward_range<IndexView>);
