export module ATR.Member.Finalize;

import ATR.Member.Alias;
import ATR.Member.AlignBuffer;
import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.NamedInfo;
import ATR.Member.NamedType;

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
	auto constexpr
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

		auto
			vTotalOffset
		=	0z
		;

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
			=	(	vTotalOffset
				+	vAlignCount
				)
			;

			for	(
				;	(	vTotalOffset
					<	vNextOffset
					)
				;	++	vTotalOffset
				)
			{
				vLayout
				.	Buffer
					[	vTotalOffset
					]
				=	i_rNamedTypeView
					.	Buffer
						[	vTotalOffset
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

	auto constexpr
	(	SortMembers
	)	(	AlignBuffer<NamedType> const
			&	i_rNamedTypeView
		,	BitSize
			&	o_rAccumulatedOffset
		)
		noexcept
	->	CountedBuffer<NamedInfo, NameBufferSize>
	{
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

			aInsert
			->	Info
			.	Offset
			=	o_rAccumulatedOffset
			;

			o_rAccumulatedOffset
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
	auto constexpr
	(	ResolveAliases
	)	(	CountedBuffer<NamedInfo, NameBufferSize>
			&	o_rNamedInfos
		,	CountedBuffer<Alias, NameBufferSize> const
			&	i_rAliasView
		)
		noexcept
	->	CountedBuffer<NamedInfo, NameBufferSize>::iterator
	{
		auto const
			aMemberBegin
		=	o_rNamedInfos
			.	begin
				()
		;

		auto const
			aMemberEnd
		=	o_rNamedInfos
			.	end
				()
		;

		auto
			aInsertAlias
		=	aMemberEnd
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

			aInsertAlias
			->	Name
			=	rName
			;

			aInsertAlias
			->	Info
			=	aMember
				->	Info
			;

			++	aInsertAlias
			;
		}

		return
			aInsertAlias
		;
	}

	auto constexpr
	(	MakeMembers
	)	(	AlignBuffer<NamedType> const
			&	i_rNamedTypeView
		,	CountedBuffer<Alias, NameBufferSize> const
			&	i_rAliasView
		,	BitSize
			&	o_rAccumulatedOffset
		)
		noexcept
	->	CountedBuffer<NamedInfo, NameBufferSize>
	{
		CountedBuffer<NamedInfo, NameBufferSize>
			vNamedInfo
		=	SortMembers
			(	i_rNamedTypeView
			,	o_rAccumulatedOffset
			)
		;

		auto const
			aNamedInfoBegin
		=	vNamedInfo
			.	begin
				()
		;

		auto const
			aAliasEnd
		=	ResolveAliases
			(	vNamedInfo
			,	i_rAliasView
			)
		;

		::std::sort
		(	aNamedInfoBegin
		,	aAliasEnd
		);

		vNamedInfo
		.	Count
		=	(	aAliasEnd
			-	aNamedInfoBegin
			)
		;

		return
			vNamedInfo
		;
	}

	export auto constexpr
	(	Finalize
	)	(	ConfigBuilder const
			&	i_rConfigBuilder
		)
		noexcept
	->	ConfigData
	{
		BitSize
			vAccumulatedOffset
		=	0_bit
		;

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
			,	vAccumulatedOffset
			)
		;

		return
		{	vAccumulatedOffset
		,	vLayout
		,	vNamedInfos
		};
	}
}
