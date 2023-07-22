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
using ::Meta::Memory::Alignment;
using ::Meta::Memory::ByteAlign;
using ::Meta::SSize;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	struct
		LayoutList
	{
		AlignBuffer<CountedType, TypeBufferSize>
			AlignTypeCounts
		{};

		BitSize
			BitCounts
			[	ByteAlign
				.	Value
			-	1
			]
		{};

		[[nodiscard]]
		auto constexpr inline
		(	Count
		)	(	TypeID
					i_vType
			)	const
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
					BitCounts
						[	ByteAlign
							.	Value
						-	vAlign
							.	Value
						-	1
						]
					.	Value
				;
			}

			auto const
			&	[	rBuffer
				,	rCount
				]
			=	AlignTypeCounts
					[	vAlign
					]
			;

			for	(	auto
						vTypeIndex
					=	0z
				;	(	vTypeIndex
					!=	rCount
					)
				;	++	vTypeIndex
				)
			{
				auto const
				&	rTypeCount
				=	rBuffer
						[	vTypeIndex
						]
				;

				if	(	rTypeCount
						.	Type
					==	i_vType
					)
				{
					return
						rTypeCount
						.	Count
					;
				}
			}

			return
				0z
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	BitCount
		)	()	const
			noexcept
		->	BitSize
		{
			BitSize
				vSum
			{};

			for	(	BitSize
						vBitSize
				:	BitCounts
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
			)	const
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
					:	AlignTypeCounts
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
				=	BitCounts
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
			)	const
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
				)
			;
			auto const
				vPreviousSize
			=	AlignSize
				(	vPreviousAlign
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
			)	const
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
				:	AlignTypeCounts
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
			)	const
			noexcept
		->	BitSize
		{
			auto const
				vTypeOffset
			=	TypeOffset
				(	i_vType
				)
			;
			auto const
				vAlignOffset
			=	AlignOffset
				(	i_vType
					.	GetAlign
						()
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
			,	SSize
					i_vTypeIndex
			)	const
			noexcept
		->	BitSize
		{
			auto const
				vTypeOffset
			=	AlignTypeOffset
				(	i_vType
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
		(	AddType
		)	(	TypeID
					i_vType
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
				=	BitCounts
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
				::ATR::Member::AddType
				(	AlignTypeCounts
				,	i_vType
				)
			;
		}
	};
}
