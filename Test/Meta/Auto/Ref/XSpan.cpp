import Meta.Auto.Ref.RArray;
import Meta.Auto.Ref.RSpan;
import Meta.Auto.Ref.XArray;
import Meta.Auto.Ref.XSpan;

import Std;

using ::Meta::XSpan;

static_assert
(	not
	::std::is_nothrow_convertible_v
	<	int(&)[4]
	,	XSpan<int>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XSpan<int>
	,	int(&)[4]
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	XSpan<int>
	,	::Meta::RArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XSpan<int>
	,	::Meta::RArray<int, 4>
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	XSpan<int>
	,	::Meta::XArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XSpan<int>
	,	::Meta::XArray<int, 4>
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	XSpan<int>
	,	::Meta::RSpan<int>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XSpan<int>
	,	::Meta::RSpan<int>
	>
);

static_assert
(	::std::ranges::contiguous_range
	<	XSpan<int>
	>
);
