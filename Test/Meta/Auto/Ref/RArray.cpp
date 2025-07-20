import Meta.Auto.Ref.RArray;
import Meta.Auto.Ref.XArray;

import std;

using ::Meta::Auto::RArray;
using ::Meta::Auto::XArray;

static_assert
(	not
	::std::is_convertible_v
	<	int(&)[4]
	,	RArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RArray<int, 4>
	,	int(&)[4]
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	int(&)[44]
	,	RArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RArray<int, 4>
	,	int(&)[44]
	>
);

static_assert
(	not
	::std::is_convertible_v
	<	int(&)[2]
	,	RArray<int, 4>
	>
);
static_assert
(	not
	::std::is_nothrow_constructible_v
	<	RArray<int, 4>
	,	int(&)[2]
	>
);

static_assert
(	not
	::std::is_nothrow_convertible_v
	<	XArray<int, 4>
	,	RArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RArray<int, 4>
	,	XArray<int, 4>
	>
);

static_assert
(	::std::ranges::contiguous_range
	<	RArray<int, 4>
	>
);
