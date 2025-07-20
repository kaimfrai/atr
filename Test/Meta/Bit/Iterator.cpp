import Meta.Bit.Iterator;
import Meta.Bit.Array;
import Meta.Bit.Field.Shift;
import Meta.Bit.Index;
import Meta.Bit.Mask;

import Meta.Bit.Field;
import Meta.Memory.Size;

import std;

using namespace ::Meta::Literals;
using ::std::begin;
using ::std::end;

using
	IteratorType
=	::Meta::Bit::Iterator
	<	::std::byte const
	,	10_bit
	,	6_bdx
	>
;

static_assert
(	::std::random_access_iterator
	<	IteratorType
	>
);

::std::byte constexpr inline
	Buffer
	[	5uz
	]
{};


::Meta::Bit::Field<10_bit> constexpr inline
	Mask
{	::Meta::Bit::Mask
	<	10_bit
	>
};

IteratorType constexpr inline
	First
{	begin(Buffer)
,	Mask
};

static_assert
(	First
==	First
);

auto constexpr inline
	Second
=	::std::next
	(	First
	)
;

static_assert
(	First
<	Second
);
static_assert
(	Second - 1
==	First
);
static_assert
(	Second
==	Second
);
static_assert
(	Second
==	IteratorType
	{	::std::next
		(	begin(Buffer)
		,	1
		)
	,	Mask << 2_bdx
	}
);

auto constexpr inline
	Third
=	::std::next
	(	Second
	)
;

static_assert
(	First
<	Third
);
static_assert
(	First + 2
==	Third
);
static_assert
(	Third - 2
==	First
);
static_assert
(	Second
<	Third
);
static_assert
(	Third - 1
==	Second
);
static_assert
(	Third
==	Third
);
static_assert
(	Third
==	IteratorType
	{	::std::next
		(	begin(Buffer)
		,	2
		)
	,	Mask << 4_bdx
	}
);

auto constexpr inline
	Forth
=	::std::next
	(	Third
	)
;

static_assert
(	First
<	Forth
);
static_assert
(	First + 3
==	Forth
);
static_assert
(	Forth - 3
==	First
);
static_assert
(	Second
<	Forth
);
static_assert
(	Second + 2
==	Forth
);
static_assert
(	Forth - 2
==	Second
);
static_assert
(	Third
<	Forth
);
static_assert
(	Forth - 1
==	Third
);
static_assert
(	Forth
==	Forth
);

static_assert
(	Forth
==	IteratorType
	{	::std::next
		(	begin(Buffer)
		,	3
		)
	,	Mask << 6_bdx
	}
);

auto constexpr inline
	Fifth
=	::std::next
	(	Forth
	)
;

static_assert
(	First
<	Fifth
);
static_assert
(	First + 4
==	Fifth
);
static_assert
(	Fifth - 4
==	First
);
static_assert
(	Second
<	Fifth
);
static_assert
(	Second + 3
==	Fifth
);
static_assert
(	Fifth - 3
==	Second
);
static_assert
(	Third
<	Fifth
);
static_assert
(	Third + 2
==	Fifth
);
static_assert
(	Fifth - 2
==	Third
);
static_assert
(	Forth
<	Fifth
);
static_assert
(	Fifth - 1
==	Forth
);
static_assert
(	Fifth
==	Fifth
);

static_assert
(	Fifth
==	IteratorType
	{	::std::next
		(	begin(Buffer)
		,	5
		)
	,	Mask << 0_bdx
	}
);

::Meta::Bit::ArrayConstReference<10_bit, 4> constexpr inline
	Reference
{	+Buffer
};

static_assert
(	begin(Reference)
==	First
);
static_assert
(	::std::next(begin(Reference), 1)
==	Second
);
static_assert
(	::std::next(begin(Reference), 2)
==	Third
);
static_assert
(	::std::next(begin(Reference), 3)
==	Forth
);
static_assert
(	::std::next(begin(Reference), 4)
==	Fifth
);
static_assert
(	end(Reference)
==	Fifth
);
