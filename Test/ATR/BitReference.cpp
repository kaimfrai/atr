import ATR;

import Meta.Size;
import Meta.Arithmetic;
import Meta.Bit.ByteSize;
import Meta.Bit.SetOnes;

import Std;

using ::Meta::UInt;
using ::Meta::USize;

template
	<	USize
			t_nOffset
	,	USize
			t_nSize
	>
auto constexpr
(	SetAndCheck
)	(	UInt<t_nSize>
			i_vValue
	)
->	bool
{
	auto constexpr
		vBitOffset
	=	static_cast<ATR::Bit::EOffset>(t_nOffset % ::Meta::Bit::ByteSize)
	;
	auto constexpr
		vBitSize
	=	static_cast<ATR::Bit::ESize>(t_nSize)
	;

	using BitReference = ATR::Bit::Reference<vBitSize, vBitOffset>;
	using BitAccess = typename BitReference::BitAccess;
	i_vValue &= Meta::Bit::SetOnes(t_nSize).Value;

	ATR::Bit::BitFieldBuffer<vBitSize, vBitOffset, 1uz> aBuffer{};
	auto const nPrevious = BitAccess::ReadField(aBuffer);
	BitReference r{aBuffer};
	r = i_vValue;

	return ((i_vValue != nPrevious) == (r != nPrevious)) and r == i_vValue;
}

static_assert
(	SetAndCheck<7, 28>(31)
);
static_assert
(	SetAndCheck<28, 7>(31)
);

static_assert
(	SetAndCheck<20, 10>(105)
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
