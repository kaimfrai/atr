export module ATR.Member.Finalize;

import ATR.Member.AlignBuffer;
import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;

import Meta.Memory.Constraint;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::Memory::ByteAlign;
using ::Meta::TypeID;

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

		auto const
			vSize
		=	i_vType
			.	GetSize
				()
		;

		if	(	not
				i_vType
				.	IsAligned
					()
			)
		{
			return
				vSize
			;
		}

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

		for	(	int
					vIndex
				=	0
			;	(	vIndex
				<	AlignmentCount
				)
			;	++	vIndex
			)
		{
			auto const
			&	rTypeCounts
			=	i_rConfigBuilder
				.	Layout
				.	AlignTypeCounts
				.	Buffer
					[	vIndex
					]
			;

			auto
			&	rTypeOffsets
			=	vAlignTypeOffsets
				.	Buffer
					[	vIndex
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

		BitSize
			vNamedOffsets
			[	NameBufferSize
			]
		{};

		auto const
			vNameCount
		=	i_rConfigBuilder
			.	NamedTypes
			.	Count
		;

		auto const
			aNamedTypesBegin
		=	i_rConfigBuilder
			.	NamedTypes
			.	Types
		;

		for	(	auto
					vNameIndex
				=	0z
			;	(	vNameIndex
				<	vNameCount
				)
			;	++	vNameIndex
			)
		{
			auto const
				vOffset
			=	GetOffsetForType
				(	aNamedTypesBegin
						[	vNameIndex
						]
				,	vAlignTypeOffsets
				,	vBitOffsets
				)
			;

			vNamedOffsets
				[	vNameIndex
				]
			=	vOffset
			;
		}

		auto const
			aNamesBegin
		=	i_rConfigBuilder
			.	NamedTypes
			.	Names
		;

		auto const
			aNamesEnd
		=	aNamesBegin
		+	vNameCount
		;

		// Put Type and Offset in the back of the result already
		auto const
			aAliasTypesBegin
		=	vResult
			.	Types
		+	vNameCount
		;

		auto const
			aAliasOffsetsBegin
		=	vResult
			.	Offsets
		+	vNameCount
		;

		auto const
			vAliasCount
		=	i_rConfigBuilder
			.	AliasMaps
			.	List
			.	Count
		;
		auto const
			aAliasBegin
		=	i_rConfigBuilder
			.	AliasMaps
			.	List
		;

		for	(	auto
					vAliasIndex
				=	0z
			;	(	vAliasIndex
				<	vAliasCount
				)
			;	++	vAliasIndex
			)
		{
			auto const
				rTarget
			=	aAliasBegin
					[	vAliasIndex
					]
				.	Target
			;

			auto const
				aTargetName
			=	::std::lower_bound
				(	aNamesBegin
				,	aNamesEnd
				,	rTarget
				)
			;

			auto const
				vTargetIndex
			=	aTargetName
			-	aNamesBegin
			;

			aAliasTypesBegin
				[	vAliasIndex
				]
			=	aNamedTypesBegin
					[	vTargetIndex
					]
			;

			aAliasOffsetsBegin
				[	vAliasIndex
				]
			=	vNamedOffsets
					[	vTargetIndex
					]
			;
		}

		auto const
			aResultNamesBegin
		=	vResult
			.	Names
		;
		auto const
			aResultTypesBegin
		=	vResult
			.	Types
		;
		auto const
			aResultOffsetsBegin
		=	vResult
			.	Offsets
		;
		auto
		&	rResultNameCount
		=	vResult
			.	NameCount
		;

		// Merge
		{
			auto
				vAliasIndex
				=	0z
			;
			for	(	auto
						vNameIndex
					=	0z
				;	(	vNameIndex
					<	vNameCount
					)
				;	++	rResultNameCount
				)
			{
				if	(	vAliasIndex
					>=	vAliasCount
					)
				{
					for	(;	(	vNameIndex
							<	vNameCount
							)
						;	++	vNameIndex
						,	++	rResultNameCount
						)
					{
						aResultNamesBegin
							[	rResultNameCount
							]
						=	aNamesBegin
								[	vNameIndex
								]
						;

						aResultTypesBegin
							[	rResultNameCount
							]
						=	aNamedTypesBegin
								[	vNameIndex
								]
						;

						aResultOffsetsBegin
							[	rResultNameCount
							]
						=	vNamedOffsets
								[	vNameIndex
								]
						;
					}
					break;
				}

				auto const
					vName
				=	aNamesBegin
						[	vNameIndex
						]
				;

				auto const
					vAliasName
				=	aAliasBegin
						[	vAliasIndex
						]
					.	Name
				;
				if	(	vName
					<=	vAliasName
					)
				{
					aResultNamesBegin
						[	rResultNameCount
						]
					=	vName
					;

					aResultTypesBegin
						[	rResultNameCount
						]
					=	aNamedTypesBegin
							[	vNameIndex
							]
					;

					aResultOffsetsBegin
						[	rResultNameCount
						]
					=	vNamedOffsets
							[	vNameIndex
							]
					;

					++	vNameIndex
					;
				}
				else
				{
					aResultNamesBegin
						[	rResultNameCount
						]
					=	vAliasName
					;

					aResultTypesBegin
						[	rResultNameCount
						]
					=	aAliasTypesBegin
							[	vAliasIndex
							]
					;

					aResultOffsetsBegin
						[	rResultNameCount
						]
					=	aAliasOffsetsBegin
							[	vAliasIndex
							]
					;

					++	vAliasIndex
					;
				}
			}

			for	(;	(	vAliasIndex
					<	vAliasCount
					)
				;	++	vAliasIndex
				,	++	rResultNameCount
				)
			{
				aResultNamesBegin
					[	rResultNameCount
					]
				=	aAliasBegin
						[	vAliasIndex
						]
					.	Name
				;

				// Type and Offset already in place
			}
		}

		return
			vResult
		;
	}
}
