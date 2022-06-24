import ATR;

using ::Meta::BitsPerByte;
using ::Meta::UInt;
using ::Meta::USize;

template
	<	USize
			t_nSize
	,	USize
			t_nCount
	,	USize
			t_nOffset
		=	0uz
	>
auto constexpr SetAndCheck(UInt<t_nSize> v) -> bool
{
	auto constexpr
		vBitSize
	=	static_cast<ATR::Bit::ESize>(t_nSize)
	;

	auto constexpr
		vOffset
	=	static_cast<ATR::Bit::EOffset>(t_nOffset)
	;

	::std::byte aBuffer[(t_nCount * t_nSize + t_nOffset + (BitsPerByte - 1uz))/ BitsPerByte]{};

	using ArrayReference = ATR::Bit::ArrayReference<vBitSize, t_nCount, vOffset>;

	ArrayReference
		arr
	{	aBuffer
	};

	using FieldType = typename ArrayReference::value_type;

	for	(	auto i = 0uz
		;	i < t_nCount
		;	++i
		)
	{
		if	(arr[i] != FieldType{})
			return false;
		arr[i] = static_cast<FieldType>((i * v) bitand ArrayReference::ZeroOffsetMask);
	}

	for	(	auto i = 0uz
		;	auto
				vField
		:	arr
		)
	{
		FieldType const
			vExpected
		=	((v * i++) bitand ArrayReference::ZeroOffsetMask)
		;
		if	(vField != vExpected)
			return false;
	}

	return true;
}

static_assert
(	SetAndCheck<7, 28>(31)
);
static_assert
(	SetAndCheck<28, 7>(31)
);

static_assert
(	SetAndCheck<10, 3>(1)
);
static_assert
(	SetAndCheck<3, 10>(1)
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
(	SetAndCheck<10, 3>(1)
);

static_assert
(	SetAndCheck<17, 1>(125)
);
static_assert
(	SetAndCheck<1, 17>(true)
);

static_assert
(	SetAndCheck<31, 1>(777)
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
(	SetAndCheck<57, 1>(7565332435324)
);



static_assert
(	SetAndCheck<7, 28>(31)
);
static_assert
(	SetAndCheck<28, 7>(31)
);

static_assert
(	SetAndCheck<10, 3>(1)
);
static_assert
(	SetAndCheck<3, 10>(1)
);
static_assert
(	SetAndCheck<3, 1>(true)
);
static_assert
(	SetAndCheck<1, 3>(2)
);

static_assert
(	SetAndCheck<31, 31, 1>(854332)
);

static_assert
(	SetAndCheck<33, 31, 2>(345678)
);

static_assert
(	SetAndCheck<10, 3, 3>(1)
);

static_assert
(	SetAndCheck<17, 1, 3>(125)
);
static_assert
(	SetAndCheck<1, 17, 5>(true)
);

static_assert
(	SetAndCheck<31, 1, 6>(777)
);
static_assert
(	SetAndCheck<33, 1, 7>(true)
);

static_assert
(	SetAndCheck<1, 31, 1>(987656)
);
static_assert
(	SetAndCheck<1, 33, 2>(564354)
);

static_assert
(	SetAndCheck<1, 63, 3>(54575747)
);
static_assert
(	SetAndCheck<57, 1, 4>(7565332435324)
);
