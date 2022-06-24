import ATR;

using Array = ::ATR::Bit::ArrayValue<ATR::Bit::ESize{1}, 31>;

auto constexpr
	None
=	::std::bit_cast<Array>(0x00000000)
;

auto constexpr
	Some
=	::std::bit_cast<Array>(0xEEEEEEEE)
;

auto constexpr
	All
=	::std::bit_cast<Array>(0x7FFFFFFF)
;
static_assert(None.none());
static_assert(not Some.none());
static_assert(not All.none());

static_assert(not None.any());
static_assert(Some.any());
static_assert(All.any());

static_assert(not None.all());
static_assert(not Some.all());
static_assert(All.all());


ATR::Bit::BitFieldBuffer
<	ATR::Bit::ESize{16}
,	ATR::Bit::EOffset{3}
,	8
>	constexpr
	Buffer
{	static_cast<::std::byte>(0x7A << 3)
,	static_cast<::std::byte>(0x7A >> 5)
,	{}, {}, {}, {}
,	{}, {}, {}, {}
,	{}, {}, {}, {}
,	{}, {}, {}
};

static_assert
(	ATR::Bit::CopyArray
	<	ATR::Bit::ESize{16}
	,	8
	,	ATR::Bit::EOffset{3}
	>(	+Buffer
	)[	0uz
	]
==	0x7A
);
