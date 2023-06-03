export module ATR.Member.Finalize;

import ATR.Member.Alias;
import ATR.Member.AlignBuffer;
import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.NamedInfo;
import ATR.Member.NamedType;

import Meta.Memory.Ceil;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr inline
	(	MakeLayout
	)	(	AlignBuffer<NamedType> const
			&	i_rNamedTypeView
		)
		noexcept
	->	AlignBuffer<TypeID>
	{
		AlignBuffer<TypeID>
			vLayout
		{};

		for	(	auto
					aAlignmentCounter
				=	+
					vLayout
					.	AlignmentCounter
			;	auto
					vAlignCount
			:	i_rNamedTypeView
				.	AlignmentCounter
			)
		{
			auto const
				vNextOffset
			=	(	vLayout
					.	TotalCounter
				+	vAlignCount
				)
			;

			for	(
				;	(	vLayout
						.	TotalCounter
					<	vNextOffset
					)
				;	++	vLayout
						.	TotalCounter
				)
			{
				vLayout
				.	Buffer
					[	vLayout
						.	TotalCounter
					]
				=	i_rNamedTypeView
					.	Buffer
						[	vLayout
							.	TotalCounter
						]
					.	Type
				;
			}

			*	aAlignmentCounter
			=	vAlignCount
			;
			++	aAlignmentCounter
			;
		}

		return
			vLayout
		;
	}

	auto constexpr inline
	(	SortMembers
	)	(	AlignBuffer<NamedType> const
			&	i_rNamedTypeView
		)
		noexcept
	->	CountedBuffer<NamedInfo, NameBufferSize>
	{
		BitSize
			vAccumulatedOffset
		=	0_bit
		;

		CountedBuffer<NamedInfo, NameBufferSize>
			vResult
		{};

		auto const
			aResultBegin
		=	vResult
			.	begin
				()
			;

		auto
			aResultEnd
		=	aResultBegin
		;

		for	(	auto const
				&	[	rName
					,	rType
					]
			:	i_rNamedTypeView
			)
		{
			auto
				aInsert
			=	aResultEnd
				++
			;

			while(	aInsert
				!=	aResultBegin
				)
			{
				auto const
					aPrevious
				=	(	aInsert
					-	1z
					)
				;

				if	(	aPrevious
						->	Name
					<	rName
					)
				{	break;
				}

				*	aInsert
				=	*	aPrevious
				;
				aInsert
				=	aPrevious
				;
			}

			aInsert
			->	Name
			=	rName
			;

			aInsert
			->	Info
			.	Type
			=	rType
			;

			vAccumulatedOffset
			=	Ceil
				(	vAccumulatedOffset
				,	rType
					.	GetAlign
						()
				)
			;

			aInsert
			->	Info
			.	Offset
			=	vAccumulatedOffset
			;

			vAccumulatedOffset
			+=	rType
				.	GetSize
					()
			;
		}

		vResult
		.	Count
		=	(	aResultEnd
			-	aResultBegin
			)
		;

		return
			vResult
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	ResolveAliases
	)	(	CountedBuffer<NamedInfo, NameBufferSize> const
			&	i_rNamedInfos
		,	NamedInfo
			*	o_aInsertAlias
		,	CountedBuffer<Alias, NameBufferSize> const
			&	i_rAliasView
		)
		noexcept
	->	CountedBuffer<NamedInfo, NameBufferSize>::iterator
	{
		auto const
			aMemberBegin
		=	i_rNamedInfos
			.	begin
				()
		;

		auto const
			aMemberEnd
		=	i_rNamedInfos
			.	end
				()
		;

		for	(	auto const
				&	[	rName
					,	rTarget
					]
			:	i_rAliasView
			)
		{
			auto const
				aMember
			=	::std::lower_bound
				(	aMemberBegin
				,	aMemberEnd
				,	rTarget
				)
			;

			o_aInsertAlias
			->	Name
			=	rName
			;

			o_aInsertAlias
			->	Info
			=	aMember
				->	Info
			;

			++	o_aInsertAlias
			;
		}

		return
			o_aInsertAlias
		;
	}

	auto constexpr inline
	(	MakeMembers
	)	(	AlignBuffer<NamedType> const
			&	i_rNamedTypeView
		,	CountedBuffer<Alias, NameBufferSize> const
			&	i_rAliasView
		)
		noexcept
	->	CountedBuffer<NamedInfo, NameBufferSize>
	{
		CountedBuffer<NamedInfo, NameBufferSize>
			vNamedInfo
		=	SortMembers
			(	i_rNamedTypeView
			)
		;

		auto const
			aNamedInfoBegin
		=	vNamedInfo
			.	begin
				()
		;

		auto const
			aNamedInfoEnd
		=	vNamedInfo
			.	end
				()
		;

		auto const
			aAliasBegin
		=	aNamedInfoEnd
		;

		auto const
			aAliasEnd
		=	ResolveAliases
			(	vNamedInfo
			,	aAliasBegin
			,	i_rAliasView
			)
		;

		CountedBuffer<NamedInfo, NameBufferSize>
			vMerged
		{};

		auto const
			aMergedBegin
		=	vMerged
			.	begin
				()
		;

		auto const
			aMergedEnd
		=	::std::merge
			(	aNamedInfoBegin
			,	aNamedInfoEnd
			,	aAliasBegin
			,	aAliasEnd
			,	aMergedBegin
			)
		;

		vMerged
		.	Count
		=	(	aMergedEnd
			-	aMergedBegin
			)
		;

		return
			vMerged
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
		auto const
		&	rNamedTypeView
		=	i_rConfigBuilder
			.	NamedTypes
		;

		auto const
			vLayout
		=	MakeLayout
			(	rNamedTypeView
			)
		;

		auto const
			vNamedInfos
		=	MakeMembers
			(	rNamedTypeView
			,	i_rConfigBuilder
				.	AliasList
			)
		;

		return
		{	vLayout
		,	vNamedInfos
		};
	}
}
