import Meta.Arithmetic.BitIndexView;

import Meta.Bit.Count;
import Std;

using IndexView = ::Meta::Arithmetic::BitIndexView<::Meta::Bits{3uz}>;

static_assert(std::ranges::forward_range<IndexView>);
