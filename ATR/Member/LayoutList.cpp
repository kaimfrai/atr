export module ATR.Member.LayoutList;

import ATR.Member.AlignBuffer;
import ATR.Member.Constants;
import ATR.Member.CountedType;

import Meta.Memory.Alignment;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Size;
import Meta.Token.TypeID;

using ::Meta::BitSize;
using ::Meta::ByteSize;
using ::Meta::Memory::Alignment;
using ::Meta::Memory::ByteAlign;
using ::Meta::SSize;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr inline
	(	Count
	)	(	TypeID
				i_vType
		,	AlignBuffer<CountedType, TypeBufferSize> const
			&	i_rAlignTypeCounts
		,	BitSize const
			(&	i_rBitCounts
			)	[	ByteAlign
					.	Value
				-	1
				]
		)
		noexcept
	->	SSize
	{
		if	(	not
				i_vType
				.	IsAligned
					()
			)
		{	return
				0z
			;
		}

		auto const
			vAlign
		=	i_vType
			.	GetAlign
				()
		;

		if	(	vAlign
			<	ByteAlign
			)
		{
			return
				i_rBitCounts
					[	ByteAlign
						.	Value
					-	vAlign
						.	Value
					-	1
					]
				.	Value
			;
		}

		for	(	auto const
				&	[	rType
					,	rCount
					]
			:	i_rAlignTypeCounts
					[	vAlign
					]
			)
		{	if	(	rType
				==	i_vType
				)
			{	return
					rCount
				;
			}
		}

		return
			0z
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	ByteCount
	)	(	BitSize const
			(&	i_rBitCounts
			)	[	ByteAlign
					.	Value
				-	1
				]
		)
		noexcept
	->	ByteSize
	{
		BitSize
			vSum
		{};

		for	(	BitSize
					vBitSize
			:	i_rBitCounts
			)
		{
			vSum
			+=	vBitSize
			;
		}

		return
			vSum
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	AlignSize
	)	(	Alignment
				i_vAlign
		,	AlignBuffer<CountedType, TypeBufferSize> const
			&	i_rAlignTypeCounts
		,	BitSize const
			(&	i_rBitCounts
			)	[	ByteAlign
					.	Value
				-	1
				]
		)
		noexcept
	->	BitSize
	{
		auto
			vOffset
		=	0_bit
		;
		if	(	i_vAlign
			>=	ByteAlign
			)
		{	for	(	auto const
					&	[	rType
						,	rCount
						]
				:	i_rAlignTypeCounts
						[	i_vAlign
						]
				)
			{
				vOffset
				+=	rType
					.	GetSize
						()
				*	rCount
				;
			}
		}
		else
		if	(	i_vAlign
			>	0_align
			)
		{	vOffset
			=	i_rBitCounts
				[	ByteAlign
					.	Value
				-	i_vAlign
					.	Value
				-	1
				]
			;
		}

		return
			vOffset
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	AlignOffset
	)	(	Alignment
				i_vAlign
		,	AlignBuffer<CountedType, TypeBufferSize> const
			&	i_rAlignTypeCounts
		,	BitSize const
			(&	i_rBitCounts
			)	[	ByteAlign
					.	Value
				-	1
				]
		)
		noexcept
	->	BitSize
	{
		if	(	(	i_vAlign
				==	MaxAlign
				)
			or	(	i_vAlign
				==	0_align
				)
			)
		{	return
				0_bit
			;
		}

		Alignment const
			vPreviousAlign
		{	i_vAlign
			.	Value
		+	1
		};

		auto const
			vPreviousOffset
		=	AlignOffset
			(	vPreviousAlign
			,	i_rAlignTypeCounts
			,	i_rBitCounts
			)
		;
		auto const
			vPreviousSize
		=	AlignSize
			(	vPreviousAlign
			,	i_rAlignTypeCounts
			,	i_rBitCounts
			)
		;

		return
			vPreviousOffset
		+	vPreviousSize
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	TypeOffset
	)	(	TypeID
				i_vType
		,	AlignBuffer<CountedType, TypeBufferSize> const
			&	i_rAlignTypeCounts
		)
		noexcept
	->	BitSize
	{
		auto const
			vAlign
		=	i_vType
			.	GetAlign
				()
		;

		if	(	vAlign
			<	ByteAlign
			)
		{	return
				0_bit
			;
		}

		auto
			vOffset
		=	0_bit
		;
		for	(	auto const
				&	[	rType
					,	rCount
					]
			:	i_rAlignTypeCounts
					[	vAlign
					]
			)
		{
			if	(	rType
				==	i_vType
				)
			{	break
				;
			}

			vOffset
			+=	rType
				.	GetSize
					()
			*	rCount
			;
		}

		return
			vOffset
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	AlignTypeOffset
	)	(	TypeID
				i_vType
		,	AlignBuffer<CountedType, TypeBufferSize> const
			&	i_rAlignTypeCounts
		,	BitSize const
			(&	i_rBitCounts
			)	[	ByteAlign
					.	Value
				-	1
				]
		)
		noexcept
	->	BitSize
	{
		auto const
			vTypeOffset
		=	TypeOffset
			(	i_vType
			,	i_rAlignTypeCounts
			)
		;
		auto const
			vAlignOffset
		=	AlignOffset
			(	i_vType
				.	GetAlign
					()
			,	i_rAlignTypeCounts
			,	i_rBitCounts
			)
		;
		return
			vTypeOffset
		+	vAlignOffset
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	MemberOffset
	)	(	TypeID
				i_vType
		,	AlignBuffer<CountedType, TypeBufferSize> const
			&	i_rAlignTypeCounts
		,	BitSize const
			(&	i_rBitCounts
			)	[	ByteAlign
					.	Value
				-	1
				]
		,	SSize
				i_vTypeIndex
		)
		noexcept
	->	BitSize
	{
		auto const
			vTypeOffset
		=	AlignTypeOffset
			(	i_vType
			,	i_rAlignTypeCounts
			,	i_rBitCounts
			)
		;

		if	(	i_vType
				.	GetAlign
					()
			<	ByteAlign
			)
		{	return
				vTypeOffset
			+	(	i_vTypeIndex
				*	1_bit
				)
			;
		}

		auto const
			vIndexOffset
		=	i_vTypeIndex
		*	i_vType
			.	GetSize
				()
		;

		return
			vTypeOffset
		+	vIndexOffset
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	AddByteType
	)	(	TypeID
				i_vType
		,	AlignBuffer<CountedType, TypeBufferSize>
			&	o_rAlignBuffer
		,	SSize
				i_vCount
		)
		noexcept
	->	SSize
	{
		auto const
			vAlign
		=	i_vType
			.	GetAlign
				()
		;

		auto
		&	rAlignedTypeCounts
		=	o_rAlignBuffer
				[	vAlign
				]
		;

		for	(	auto
				&	[	rType
					,	rCount
					]
			:	rAlignedTypeCounts
			)
		{
			if	(	rType
				==	i_vType
				)
			{
				auto const
					vPreviousCount
				=	rCount
				;
				rCount
				+=	i_vCount
				;
				return
					vPreviousCount
				;
			}
		}

		rAlignedTypeCounts
		.	push_back
			(	CountedType
				{	i_vType
				,	i_vCount
				}
			)
		;

		return
			0z
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	AddType
	)	(	TypeID
				i_vType
		,	AlignBuffer<CountedType, TypeBufferSize>
			&	o_rAlignTypeCounts
		,	BitSize
			(&	o_rBitCounts
			)	[	ByteAlign
					.	Value
				-	1
				]
		)
		noexcept
	->	SSize
	{
		if	(	not
				i_vType
				.	IsAligned
					()
			)
		{	return
				0z
			;
		}

		auto const
			vAlign
		=	i_vType
			.	GetAlign
				()
		;

		if	(	vAlign
			<	ByteAlign
			)
		{
			auto
			&	rBitCount
			=	o_rBitCounts
					[	ByteAlign
						.	Value
					-	vAlign
						.	Value
					-	1
					]
			;

			auto const
				vPreviousIndex
			=	rBitCount
				.	Value
			;

			rBitCount
			+=	i_vType
				.	GetSize
					()
			;
			return
				vPreviousIndex
			;
		}

		return
			AddByteType
			(	i_vType
			,	o_rAlignTypeCounts
			,	1z
			)
		;
	}
}
