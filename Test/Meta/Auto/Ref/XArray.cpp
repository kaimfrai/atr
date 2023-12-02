import Meta.Auto.Ref.RArray;
import Meta.Auto.Ref.XArray;

import Std;

using ::Meta::XArray;

static_assert
(	not
	::std::is_nothrow_convertible_v
	<	int(&)[4]
	,	XArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XArray<int, 4>
	,	int(&)[4]
	>
);

static_assert
(	not
	::std::is_nothrow_convertible_v
	<	int(&)[44]
	,	XArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XArray<int, 4>
	,	int(&)[44]
	>
);

static_assert
(	not
	::std::is_nothrow_convertible_v
	<	int(&)[2]
	,	XArray<int, 4>
	>
);
static_assert
(	not
	::std::is_nothrow_constructible_v
	<	XArray<int, 4>
	,	int(&)[2]
	>
);

static_assert
(	not
	::std::is_nothrow_convertible_v
	<	::Meta::RArray<int, 4>
	,	XArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	XArray<int, 4>
	,	::Meta::RArray<int, 4>
	>
);

static_assert
(	::std::ranges::contiguous_range
	<	XArray<int, 4>
	>
);
