import Meta.Auto.Ref.RArray;
import Meta.Auto.Ref.XArray;

import Std;

using ::Meta::RArray;

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
	<	::Meta::XArray<int, 4>
	,	RArray<int, 4>
	>
);
static_assert
(	::std::is_nothrow_constructible_v
	<	RArray<int, 4>
	,	::Meta::XArray<int, 4>
	>
);

static_assert
(	::std::ranges::contiguous_range
	<	RArray<int, 4>
	>
);
