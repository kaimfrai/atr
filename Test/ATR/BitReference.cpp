import ATR;

using ::Meta::BitsPerByte;
using ::Meta::UInt;
using ::Meta::USize;

template
	<	USize
			t_nOffset
	,	USize
			t_nSize
	>
auto constexpr SetAndCheck(UInt<t_nSize> v) -> bool
{
	auto constexpr
		vBitOffset
	=	static_cast<ATR::EBitFieldOffset>(t_nOffset % BitsPerByte)
	;
	auto constexpr
		vBitSize
	=	static_cast<ATR::EBitFieldSize>(t_nSize)
	;

	using BitReference = ATR::BitReference<vBitSize, vBitOffset>;
	using BitAccess = typename BitReference::BitAccess;

	::std::byte aBuffer[(t_nOffset + t_nSize + (BitsPerByte - 1uz))/ BitsPerByte]{};
	::std::byte* const aPosition = aBuffer + t_nOffset / BitsPerByte;
	auto const nPrevious = BitAccess::ReadField(aPosition);
	BitReference r{aPosition};
	r = v;

	return ((v != nPrevious) == (r != nPrevious)) and r == v;
}

static_assert
(	SetAndCheck<7, 28>(31)
);
static_assert
(	SetAndCheck<28, 7>(31)
);

static_assert
(	SetAndCheck<0, 3>(1)
);
static_assert
(	SetAndCheck<3, 1>(true)
);
static_assert
(	SetAndCheck<1, 3>(2)
);

static_assert
(	SetAndCheck<31, 31>(854332)
);

static_assert
(	SetAndCheck<33, 31>(345678)
);

static_assert
(	SetAndCheck<0, 3>(1)
);

static_assert
(	SetAndCheck<31, 1>(true)
);
static_assert
(	SetAndCheck<33, 1>(true)
);

static_assert
(	SetAndCheck<1, 31>(987656)
);
static_assert
(	SetAndCheck<1, 33>(564354)
);

static_assert
(	SetAndCheck<1, 63>(54575747)
);
static_assert
(	SetAndCheck<63, 1>(true)
);

static_assert
(	SetAndCheck<65, 63>(765434567876)
);
static_assert
(	SetAndCheck<65, 1>(true)
);
