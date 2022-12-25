import ATR;

import Meta.Size;
import Meta.Bit.Count;
import Meta.Arithmetic.Integer;

import Std;

using ::Meta::UInt;
using ::Meta::USize;
using ::Meta::Bits;

using ::Meta::Literals::operator""_bits;

template
	<	Bits
			t_nSize
	,	USize
			t_nCount
	,	USize
			t_nOffset
		=	0uz
	>
auto constexpr
(	SetAndCheck
)	(	UInt<t_nSize>
			v
	)
	noexcept
->	bool
{
	auto constexpr
		vBitSize
	=	static_cast<ATR::Bit::ESize>(t_nSize.get())
	;

	auto constexpr
		vOffset
	=	static_cast<ATR::Bit::EOffset>(t_nOffset)
	;

	ATR::Bit::BitFieldBuffer<vBitSize, vOffset, t_nCount> aBuffer{};

	using ArrayReference = ATR::Bit::ArrayReference<vBitSize, t_nCount, vOffset>;

	ArrayReference
		arr
	{	aBuffer.begin()
	};

	using FieldType = typename ArrayReference::value_type;

	for	(	auto i = 0uz
		;	i < t_nCount
		;	++i
		)
	{
		if	(arr[i] != FieldType{})
			return false;
		arr[i] = static_cast<FieldType>((i * v) bitand ArrayReference::ZeroOffsetMask.Value);
	}

	for	(	auto i = 0uz
		;	auto
				vField
		:	arr
		)
	{
		FieldType const
			vExpected
		=	((v * i++) bitand ArrayReference::ZeroOffsetMask.Value)
		;
		if	(vField != vExpected)
			return false;
	}

	return true;
}

static_assert
(	SetAndCheck<7_bits, 28>(31)
);
static_assert
(	SetAndCheck<28_bits, 7>(31)
);

static_assert
(	SetAndCheck<10_bits, 3>(1)
);
static_assert
(	SetAndCheck<3_bits, 10>(1)
);
static_assert
(	SetAndCheck<3_bits, 1>(true)
);
static_assert
(	SetAndCheck<1_bits, 3>(2)
);

static_assert
(	SetAndCheck<31_bits, 31>(854332)
);

static_assert
(	SetAndCheck<33_bits, 31>(345678)
);

static_assert
(	SetAndCheck<10_bits, 3>(1)
);

static_assert
(	SetAndCheck<17_bits, 1>(125)
);
static_assert
(	SetAndCheck<1_bits, 17>(true)
);

static_assert
(	SetAndCheck<31_bits, 1>(777)
);
static_assert
(	SetAndCheck<33_bits, 1>(true)
);

static_assert
(	SetAndCheck<1_bits, 31>(987656)
);
static_assert
(	SetAndCheck<1_bits, 33>(564354)
);

static_assert
(	SetAndCheck<1_bits, 63>(54575747)
);
static_assert
(	SetAndCheck<57_bits, 1>(7565332435324)
);



static_assert
(	SetAndCheck<7_bits, 28>(31)
);
static_assert
(	SetAndCheck<28_bits, 7>(31)
);

static_assert
(	SetAndCheck<10_bits, 3>(1)
);
static_assert
(	SetAndCheck<3_bits, 10>(1)
);
static_assert
(	SetAndCheck<3_bits, 1>(true)
);
static_assert
(	SetAndCheck<1_bits, 3>(2)
);

static_assert
(	SetAndCheck<31_bits, 31, 1>(854332)
);

static_assert
(	SetAndCheck<33_bits, 31, 2>(345678)
);

static_assert
(	SetAndCheck<10_bits, 3, 3>(1)
);

static_assert
(	SetAndCheck<17_bits, 1, 3>(125)
);
static_assert
(	SetAndCheck<1_bits, 17, 5>(true)
);

static_assert
(	SetAndCheck<31_bits, 1, 6>(777)
);
static_assert
(	SetAndCheck<33_bits, 1, 7>(true)
);

static_assert
(	SetAndCheck<1_bits, 31, 1>(987656)
);
static_assert
(	SetAndCheck<1_bits, 33, 2>(564354)
);

static_assert
(	SetAndCheck<1_bits, 63, 3>(54575747)
);
static_assert
(	SetAndCheck<57_bits, 1, 4>(7565332435324)
);
