import Meta.Auto.Ref.RArray;
import Meta.Auto.Ref.RSpan;
import Meta.Auto.Ref.XArray;
import Meta.Auto.Ref.XSpan;

import Std;

using ::Meta::RSpan;

static_assert
(	not
	::std::is_convertible_v
	<	int(&)[4]
	,	RSpan<int>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RSpan<int>
	,	int(&)[4]
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	RSpan<int>
	,	::Meta::RArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RSpan<int>
	,	::Meta::RArray<int, 4>
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	RSpan<int>
	,	::Meta::XArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RSpan<int>
	,	::Meta::XArray<int, 4>
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	RSpan<int>
	,	::Meta::XSpan<int>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RSpan<int>
	,	::Meta::XSpan<int>
	>
);

static_assert
(	::std::ranges::contiguous_range
	<	RSpan<int>
	>
);
