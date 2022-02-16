import Meta.Data.Aggregate;
import Std;

static_assert(std::contiguous_iterator<Meta::Aggregate<int const*>>);
