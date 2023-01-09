import ATR;

import Meta.Size;
import Meta.Memory.Size;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.BitField;
import Meta.Arithmetic.BitRange;
import Meta.Byte.Buffer;
import Meta.Byte.Buffer.Range;
import Meta.Arithmetic.BitIndex;

import Std;

using ::Meta::UInt;
using ::Meta::USize;

using namespace ::Meta::Literals;

template
	<	::Meta::BitSize
			t_nSize
	,	USize
			t_nCount
	,	::Meta::Arithmetic::BitIndex<1_byte>
			t_nOffset
		=	0_bdx
	>
auto constexpr
(	SetAndCheck
)	(	UInt<t_nSize>
			v
	)
	noexcept
->	bool
{
	::Meta::Byte::Buffer<t_nSize * t_nCount + t_nOffset>
		aBuffer
	{};

	using ArrayReference = ATR::Bit::ArrayReference<t_nSize, t_nCount, t_nOffset>;

	ArrayReference
		arr
	{	begin(aBuffer)
	};

	using FieldType = typename ArrayReference::value_type;

	for	(	auto i = 0z
		;	static_cast<USize>(i) < t_nCount
		;	++i
		)
	{
		if	(arr[i] != FieldType{})
			return false;

		(	arr[i]
		=	FieldType
			{	FieldType::Sanitize
				(	static_cast<FieldType::FieldType>
					(	static_cast<USize>(i)
					*	v
					)
				)
			}
		);
	}

	for	(	auto i = 0uz
		;	auto
				vField
		:	arr
		)
	{
		if	(i >= t_nCount)
			std::unreachable();
		FieldType const
			vExpected
		{	FieldType::Sanitize
			(	static_cast<FieldType::FieldType>
				(	v
				*	i++
				)
			)
		};
		if	(vField != vExpected)
			return false;
	}

	return true;
}

static_assert
(	SetAndCheck<7_bit, 28>(31)
);
static_assert
(	SetAndCheck<28_bit, 7>(31)
);

static_assert
(	SetAndCheck<10_bit, 3>(1)
);
static_assert
(	SetAndCheck<3_bit, 10>(1)
);
static_assert
(	SetAndCheck<3_bit, 1>(true)
);
static_assert
(	SetAndCheck<1_bit, 3>(2)
);

static_assert
(	SetAndCheck<31_bit, 31>(854332)
);

static_assert
(	SetAndCheck<33_bit, 31>(345678)
);

static_assert
(	SetAndCheck<10_bit, 3>(1)
);

static_assert
(	SetAndCheck<17_bit, 1>(125)
);
static_assert
(	SetAndCheck<1_bit, 17>(true)
);

static_assert
(	SetAndCheck<31_bit, 1>(777)
);
static_assert
(	SetAndCheck<33_bit, 1>(true)
);

static_assert
(	SetAndCheck<1_bit, 31>(987656)
);
static_assert
(	SetAndCheck<1_bit, 33>(564354)
);

static_assert
(	SetAndCheck<1_bit, 63>(54575747)
);
static_assert
(	SetAndCheck<57_bit, 1>(7565332435324)
);

static_assert
(	SetAndCheck<7_bit, 28>(31)
);
static_assert
(	SetAndCheck<28_bit, 7>(31)
);

static_assert
(	SetAndCheck<10_bit, 3>(1)
);
static_assert
(	SetAndCheck<3_bit, 10>(1)
);
static_assert
(	SetAndCheck<3_bit, 1>(true)
);
static_assert
(	SetAndCheck<1_bit, 3>(2)
);

static_assert
(	SetAndCheck<31_bit, 31, 1_bdx>(854332)
);

static_assert
(	SetAndCheck<33_bit, 31, 2_bdx>(345678)
);

static_assert
(	SetAndCheck<10_bit, 3, 3_bdx>(1)
);

static_assert
(	SetAndCheck<17_bit, 1, 3_bdx>(125)
);
static_assert
(	SetAndCheck<1_bit, 17, 5_bdx>(true)
);
static_assert
(	SetAndCheck<31_bit, 1, 6_bdx>(777)
);
static_assert
(	SetAndCheck<33_bit, 1, 7_bdx>(true)
);

static_assert
(	SetAndCheck<1_bit, 31, 1_bdx>(987656)
);
static_assert
(	SetAndCheck<1_bit, 33, 2_bdx>(564354)
);

static_assert
(	SetAndCheck<1_bit, 63, 3_bdx>(54575747)
);
static_assert
(	SetAndCheck<57_bit, 1, 4_bdx>(7565332435324)
);
