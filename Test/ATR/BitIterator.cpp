import ATR;

import Meta.Size;
import Meta.Bit.Count;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.BitField;
import Meta.Bit.Size;
import Meta.Byte.Count;
import Meta.Arithmetic.BitIndex;
import Std;

using ::ATR::Bit::Iterator;
using ::ATR::Bit::ArrayReference;

using ::Meta::UInt;
using ::Meta::USize;

using namespace ::Meta::Literals;

static_assert
(	::std::random_access_iterator
	<	Iterator<::std::byte, 1_bit, 0_bdx>
	>
);

::std::byte inline
	Buffer
	[	5uz
	]
{};

using IteratorType = Iterator<::std::byte, 10_bit, 6_bdx>;

using MaskType = IteratorType::MaskType;

MaskType constexpr Mask
{	0b0000'0011'1111'1111
};

using Index = MaskType::IndexType;

IteratorType constexpr
	First
{	+Buffer
,	Mask
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
==	IteratorType
	{	+Buffer + 1
	,	static_cast<MaskType>
		(	Mask << Index{2}
		)
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
==	IteratorType
	{	+Buffer + 2
	,	static_cast<MaskType>
		(	Mask << Index{4}
		)
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
==	IteratorType
	{	+Buffer + 3
	,	static_cast<MaskType>
		(	Mask << Index{6}
		)
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
==	IteratorType
	{	+Buffer + 5
	,	static_cast<MaskType>
		(	Mask << Index{0}
		)
	}
);

ArrayReference<10_bit, 4> constexpr
	arr
{	+Buffer
};

static_assert(arr.begin() == First);
static_assert(arr.begin() + 1 == Second);
static_assert(arr.begin() + 2 == Third);
static_assert(arr.begin() + 3 == Forth);
static_assert(arr.begin() + 4 == Fifth);
static_assert(arr.end() == Fifth);
