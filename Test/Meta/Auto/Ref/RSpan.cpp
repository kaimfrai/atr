import Meta.Auto.Ref.RArray;
import Meta.Auto.Ref.RSpan;
import Meta.Auto.Ref.XArray;
import Meta.Auto.Ref.XSpan;

import Std;

using ::Meta::Auto::RArray;
using ::Meta::Auto::RSpan;
using ::Meta::Auto::XArray;
using ::Meta::Auto::XSpan;

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
	,	RArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RSpan<int>
	,	RArray<int, 4>
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	RSpan<int>
	,	XArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RSpan<int>
	,	XArray<int, 4>
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	RSpan<int>
	,	XSpan<int>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RSpan<int>
	,	XSpan<int>
	>
);

static_assert
(	::std::ranges::contiguous_range
	<	RSpan<int>
	>
);
