import ATR;

import Meta.Size;
import Meta.Bit.ByteSize;
import Meta.Bit.SetOnes;
import Meta.Bit.Count;
import Meta.Arithmetic.Integer;

import Std;

using ::Meta::UInt;
using ::Meta::USize;
using ::Meta::Bits;

using ::Meta::Literals::operator""_bits;

template
	<	USize
			t_nOffset
	,	Bits
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
	=	static_cast<ATR::Bit::EOffset>(t_nOffset % ::Meta::Bit::ByteSize.get())
	;
	auto constexpr
		vBitSize
	=	static_cast<ATR::Bit::ESize>(t_nSize.get())
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
(	SetAndCheck<7, 28_bits>(31)
);
static_assert
(	SetAndCheck<28, 7_bits>(31)
);

static_assert
(	SetAndCheck<20, 10_bits>(105)
);

static_assert
(	SetAndCheck<0, 3_bits>(1)
);
static_assert
(	SetAndCheck<3, 1_bits>(true)
);
static_assert
(	SetAndCheck<1, 3_bits>(2)
);

static_assert
(	SetAndCheck<31, 31_bits>(854332)
);

static_assert
(	SetAndCheck<33, 31_bits>(345678)
);

static_assert
(	SetAndCheck<0, 3_bits>(1)
);

static_assert
(	SetAndCheck<31, 1_bits>(true)
);
static_assert
(	SetAndCheck<33, 1_bits>(true)
);

static_assert
(	SetAndCheck<1, 31_bits>(987656)
);
static_assert
(	SetAndCheck<1, 33_bits>(564354)
);

static_assert
(	SetAndCheck<1, 63_bits>(54575747)
);
static_assert
(	SetAndCheck<63, 1_bits>(true)
);

static_assert
(	SetAndCheck<65, 63_bits>(765434567876)
);
static_assert
(	SetAndCheck<65, 1_bits>(true)
);
