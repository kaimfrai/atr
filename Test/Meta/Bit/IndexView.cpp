import Meta.Bit.IndexView;

import Std;

using ::Meta::Bit::IndexView;

static_assert(std::ranges::forward_range<IndexView>);
