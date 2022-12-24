import ATR;

import Meta.Arithmetic;
import Meta.Size;
import Meta.Bit.SetOnes;
import Meta.Bit.Count;
import Std;

using ::ATR::Bit::EOffset;
using ::ATR::Bit::ESize;
using ::ATR::Bit::Iterator;
using ::ATR::Bit::ArrayReference;

using ::Meta::UInt;
using ::Meta::USize;

[[nodiscard]]
auto constexpr
(	SetOnes
)	(	int
			i_nCount
	)
->	USize
{	return
	Meta::Bit::SetOnes
	(	Meta::Bits{static_cast<USize>(i_nCount)}
	).Value
	;
}

static_assert
(	::std::random_access_iterator
	<	Iterator<::std::byte, ESize{1}, EOffset{0}>
	>
);

::std::byte inline
	Buffer
	[	5uz
	]
{};

Iterator<::std::byte, ESize{10}, EOffset{6}> constexpr
	First
{	+Buffer
,	SetOnes(10)
};

static_assert(First == First);

auto constexpr
	Second
=	First
+	1uz
;

static_assert(First < Second);
static_assert(Second - 1 == First);
static_assert(Second == Second);
static_assert
(	Second
==	decltype(Second)
	{	+Buffer + 1
	,	SetOnes(10) << 2
	}
);

auto constexpr
	Third
=	Second
+	1uz
;

static_assert(First < Third);
static_assert(First + 2 == Third);
static_assert(Third - 2 == First);
static_assert(Second < Third);
static_assert(Third - 1 == Second);
static_assert(Third == Third);
static_assert
(	Third
==	decltype(Third)
	{	+Buffer + 2
	,	SetOnes(10) << 4
	}
);

auto constexpr
	Forth
=	Third
+	1uz
;

static_assert(First < Forth);
static_assert(First + 3 == Forth);
static_assert(Forth - 3 == First);
static_assert(Second < Forth);
static_assert(Second + 2 == Forth);
static_assert(Forth - 2 == Second);
static_assert(Third < Forth);
static_assert(Forth - 1 == Third);
static_assert(Forth == Forth);

static_assert
(	Forth
==	decltype(Forth)
	{	+Buffer + 3
	,	SetOnes(10) << 6
	}
);

auto constexpr
	Fifth
=	Forth
+	1uz
;

static_assert(First < Fifth);
static_assert(First + 4 == Fifth);
static_assert(Fifth - 4 == First);
static_assert(Second < Fifth);
static_assert(Second + 3 == Fifth);
static_assert(Fifth - 3 == Second);
static_assert(Third < Fifth);
static_assert(Third + 2 == Fifth);
static_assert(Fifth - 2 == Third);
static_assert(Forth < Fifth);
static_assert(Fifth - 1 == Forth);
static_assert(Fifth == Fifth);

static_assert
(	Fifth
==	decltype(Fifth)
	{	+Buffer + 5
	,	SetOnes(10) << 0
	}
);

ArrayReference<ESize{10}, 4> constexpr
	arr
{	+Buffer
};

static_assert(begin(arr) == First);
static_assert(IteratorAt(arr, 1) == Second);
static_assert(IteratorAt(arr, 2) == Third);
static_assert(IteratorAt(arr, 3) == Forth);
static_assert(end(arr) == Fifth);
