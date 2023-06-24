export module ATR.Member.Finalize;

import ATR.Member.AlignBuffer;
import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.NamedInfo;

import Meta.Memory.Alignment;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::Memory::Alignment;
using ::Meta::Memory::ByteAlign;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	struct
		OffsetType
	{
		TypeID
			Type
		{};

		BitSize
			Offset
		{};
	};

	[[nodiscard]]
	auto constexpr inline
	(	GetOffsetForType
	)	(	TypeID
				i_vType
		,	AlignBuffer<OffsetType>
			&	i_rAlignTypeOffsets
		,	CountedBuffer<BitSize, ByteAlign.Value - 1>
			&	i_rBitOffsets
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
			==	0_align
			)
		{
			return
				0_bit
			;
		}

		auto const
			vSize
		=	i_vType
			.	GetSize
				()
		;

		if	(	vAlign
			<	ByteAlign
			)
		{
			auto
			&	rOffset
			=	i_rBitOffsets
					[	ByteAlign
						.	Value
					-	vAlign
						.	Value
					-	1
					]
			;

			auto const
				vOffset
			=	rOffset
			;

			rOffset
			+=	vSize
			;

			return
				vOffset
			;
		}

		auto
		&	rTypeOffsets
		=	i_rAlignTypeOffsets
				[	vAlign
				]
		;

		for	(	OffsetType
				&	rTypeOffset
			:	rTypeOffsets
			)
		{
			if	(	rTypeOffset
					.	Type
				==	i_vType
				)
			{
				auto const
					vOffset
				=	rTypeOffset
					.	Offset
				;

				rTypeOffset
				.	Offset
				+=	vSize
				;

				return
					vOffset
				;
			}
		}

		::std::unreachable
			()
		;
	}

	export auto constexpr inline
	(	Finalize
	)	(	ConfigBuilder const
			&	i_rConfigBuilder
		)
		noexcept
	->	ConfigData
	{
		ConfigData
			vResult
		{};

		vResult
		.	AlignTypeCounts
		=	i_rConfigBuilder
			.	Layout
			.	AlignTypeCounts
		;

		AlignBuffer<OffsetType>
			vAlignTypeOffsets
		{};

		BitSize
			vAccumulatedOffset
		{};

		for	(	Alignment
					vAlignment
				=	MaxAlign
			;	(	vAlignment
				>=	ByteAlign
				)
			;	--	vAlignment
					.	Value
			)
		{
			auto const
			&	rTypeCounts
			=	i_rConfigBuilder
				.	Layout
				.	AlignTypeCounts
					[	vAlignment
					]
			;

			auto
			&	rTypeOffsets
			=	vAlignTypeOffsets
				[	vAlignment
				]
			;

			for	(	auto const
					&	[	rType
						,	rCount
						]
				:	rTypeCounts
				)
			{
				rTypeOffsets
					[	rTypeOffsets
						.	Count
						++
					]
				=	OffsetType
					{	rType
					,	vAccumulatedOffset
					}
				;

				vAccumulatedOffset
				+=	rType
					.	GetSize
						()
				*	rCount
				;
			}
		}

		CountedBuffer<BitSize, ByteAlign.Value - 1>
			vBitOffsets
		{};

		for	(	auto const
				&	rBitCount
			:	i_rConfigBuilder
				.	Layout
				.	BitCounts
			)
		{
			vBitOffsets
				[	vBitOffsets
					.	Count
					++
				]
			=	vAccumulatedOffset
			;

			vAccumulatedOffset
			+=	rBitCount
			;

			vResult
			.	BitCount
			+=	rBitCount
			;
		}

		NamedInfo
			vNamedInfoList
			[	NameBufferSize
			]
		{};

		auto const
			aNamedInfosBegin
		=	+
			vNamedInfoList
		;

		auto
			aNamedInfosEnd
		=	aNamedInfosBegin
		;

		for	(	auto const
				&	[	rName
					,	rType
					]
			:	i_rConfigBuilder
				.	NamedTypes
				.	List
			)
		{
			auto const
				vOffset
			=	GetOffsetForType
				(	rType
				,	vAlignTypeOffsets
				,	vBitOffsets
				)
			;

			*	aNamedInfosEnd
				++
			=	NamedInfo
				{	rName
				,	{	rType
					,	vOffset
					}
				}
			;
		}

		auto const
			aAliasInfosBegin
		=	aNamedInfosEnd
		;

		auto
			aAliasInfosEnd
		=	aAliasInfosBegin
		;

		for	(	auto const
				&	[	rName
					,	rTarget
					]
			:	i_rConfigBuilder
				.	AliasMaps
				.	List
			)
		{
			for	(	auto
						aTarget
					=	aNamedInfosBegin
				;	(	aTarget
					!=	aNamedInfosEnd
					)
				;	++	aTarget
				)
			{
				if	(	aTarget
						->	Name
					==	rTarget
					)
				{
					NamedInfo
					&	rAliasInfo
					=	*	aAliasInfosEnd
							++
					;

					rAliasInfo
					.	Name
					=	rName
					;

					rAliasInfo
					.	Info
					=	aTarget
						->	Info
					;

					break
					;
				}
			}
		}

		auto const
			aResultInfoBegin
		=	vResult
			.	NamedInfoList
			.	begin
				()
		;

		auto const
			aResultInfoEnd
		=	::std::merge
			(	aNamedInfosBegin
			,	aNamedInfosEnd
			,	aAliasInfosBegin
			,	aAliasInfosEnd
			,	aResultInfoBegin
			)
		;

		vResult
		.	NamedInfoList
		.	Count
		=	(	aResultInfoEnd
			-	aResultInfoBegin
			)
		;

		return
			vResult
		;
	}
}
