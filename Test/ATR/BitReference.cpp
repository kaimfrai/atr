import ATR;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Arithmetic.Integer;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Byte.Buffer;
import Meta.Byte.Buffer.Range;

import Std;

using namespace ::Meta::Literals;

using ::Meta::Bit::Field;

template
	<	::Meta::BitSize
			t_nOffset
	,	auto
			t_nSize
	>
[[nodiscard]]
auto constexpr
(	SetAndCheck
)	(	Field<t_nSize>
			i_vValue
	)
	noexcept
->	bool
{
	auto constexpr
		nOffset
	=	FloorCast<::Meta::ByteSize>
		(	t_nOffset
		)
	;
	auto constexpr
		nByteOffset
	=	nOffset.Quotient
	;
	auto constexpr
		nBitOffset
	=	nOffset.Remainder
	;
	using
		BitReference
	=	ATR::Bit::Reference
		<	t_nSize
		,	nBitOffset
		>
	;

	::Meta::Byte::Buffer
	<	t_nSize
	+	nByteOffset
	+	nBitOffset
	>	aBuffer
	{};

	auto const
		aStart
	=	begin(aBuffer)
	+	nByteOffset
	;
	BitReference
		rReference
	{	aStart
	};
	auto const
		nPrevious
	=	rReference
	.	get()
	;
	(	rReference
	=	i_vValue
	);

	return
		(	(i_vValue != nPrevious)
		==	(rReference != nPrevious)
		)
	and	(	rReference
		==	i_vValue
		)
	;
}

static_assert
(	SetAndCheck<7_bit>
	(	Field<28_bit>
		{	31
		}
	)
);
static_assert
(	SetAndCheck<28_bit>
	(	Field<7_bit>
		{	31
		}
	)
);

static_assert
(	SetAndCheck<20_bit>
	(	Field<10_bit>
		{	105
		}
	)
);

static_assert
(	SetAndCheck<0_bit>
	(	Field<3_bit>
		{	1
		}
	)
);
static_assert
(	SetAndCheck<3_bit>
	(	Field<1_bit>
		{	true
		}
	)
);
static_assert
(	SetAndCheck<1_bit>
	(	Field<3_bit>
		{	2
		}
	)
);

static_assert
(	SetAndCheck<31_bit>
	(	Field<31_bit>
		{	854332
		}
	)
);

static_assert
(	SetAndCheck<33_bit>
	(	Field<31_bit>
		{	345678
		}
	)
);

static_assert
(	SetAndCheck<0_bit>
	(	Field<3_bit>
		{	1
		}
	)
);

static_assert
(	SetAndCheck<31_bit>
	(	Field<1_bit>
		{	true
		}
	)
);
static_assert
(	SetAndCheck<33_bit>
	(	Field<1_bit>
		{	true
		}
	)
);

static_assert
(	SetAndCheck<1_bit>
	(	Field<31_bit>
		{	987656
		}
	)
);
static_assert
(	SetAndCheck<1_bit>
	(	Field<33_bit>
		{	564354
		}
	)
);

static_assert
(	SetAndCheck<1_bit>
	(	Field<63_bit>
		{	54575747
		}
	)
);
static_assert
(	SetAndCheck<63_bit>
	(	Field<1_bit>
		{	true
		}
	)
);

static_assert
(	SetAndCheck<65_bit>
	(	Field<63_bit>
		{	765434567876
		}
	)
);
static_assert
(	SetAndCheck<65_bit>
	(	Field<1_bit>
		{	true
		}
	)
);
