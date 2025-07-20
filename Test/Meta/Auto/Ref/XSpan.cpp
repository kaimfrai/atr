import Meta.Auto.Ref.RArray;
import Meta.Auto.Ref.RSpan;
import Meta.Auto.Ref.XArray;
import Meta.Auto.Ref.XSpan;

import std;

using ::Meta::Auto::RArray;
using ::Meta::Auto::RSpan;
using ::Meta::Auto::XArray;
using ::Meta::Auto::XSpan;

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
	,	RArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XSpan<int>
	,	RArray<int, 4>
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	XSpan<int>
	,	XArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XSpan<int>
	,	XArray<int, 4>
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	XSpan<int>
	,	RSpan<int>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XSpan<int>
	,	RSpan<int>
	>
);

static_assert
(	::std::ranges::contiguous_range
	<	XSpan<int>
	>
);
