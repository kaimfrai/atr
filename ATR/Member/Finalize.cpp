export module ATR.Member.Finalize;

import ATR.Member.Alias;
import ATR.Member.Compare.Name;
import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;
import ATR.Member.LayoutBuffer;
import ATR.Member.NamedInfo;
import ATR.Member.NamedType;
import ATR.Member.Ordered;

import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;

import Std;

using ::Meta::BitSize;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	auto constexpr
	(	ExtractTypeBuffer
	)	(	NamedTypeBuffer::value_type const
			&	i_rAlignedBuffer
		)
		noexcept
	->	LayoutBuffer::value_type
	{
		LayoutBuffer::value_type
			vResult
		{	.Buffer
			{}
		,	.Count
			=	i_rAlignedBuffer
				.	Count
		};

		::std::transform
		(	i_rAlignedBuffer
			.	begin
				()
		,	i_rAlignedBuffer
			.	end
				()
		,	vResult
			.	begin
				()
		,	[]	(	auto const
					&	i_rName
				)
			{	return
					i_rName
					.	Type
				;
			}
		);

		return
			vResult
		;
	}

	[[nodiscard]]
	auto constexpr
	(	MakeLayout
	)	(	NamedTypeConstView
				i_rNamedTypeView
		)
		noexcept
	->	LayoutBuffer
	{
		LayoutBuffer
			vLayout
		{};

		::std::transform
		(	i_rNamedTypeView
			.	begin
				()
		,	i_rNamedTypeView
			.	end
				()
		,	vLayout
			.	begin
				()
		,	&ExtractTypeBuffer
		);

		return
			vLayout
		;
	}

	auto constexpr
	(	SortMembers
	)	(	NamedTypeConstView
				i_rNamedTypeView
		,	BitSize
			&	o_rAccumulatedOffset
		)
		noexcept
	->	NamedInfoBuffer
	{
		NamedInfoBuffer
			vResult
		{};

		for	(	auto const
				&	rAlignedNames
			:	i_rNamedTypeView
			)
		{
			for	(	auto const
					&	[	rName
						,	rType
						]
				:	rAlignedNames
				)
			{
				auto
				&	rNamedInfo
				=	::ATR::Member::emplace
					(	vResult
					,	rName
					)
				;

				rNamedInfo
				.	Info
				.	Type
				=	rType
				;

				auto const
					vSize
				=	rType
					.	GetSize
						()
				;

				rNamedInfo
				.	Info
				.	Offset
				=	o_rAccumulatedOffset
				;

				o_rAccumulatedOffset
				+=	vSize
				;
			}
		}

		return
			vResult
		;
	}

	[[nodiscard]]
	auto constexpr
	(	ResolveAliases
	)	(	NamedInfoBuffer const
			&	i_rNamedInfos
		,	NamedInfoBuffer::iterator
				o_aAliasBegin
		,	AliasConstView
				i_rAliasView
		)
		noexcept
	->	NamedInfoBuffer::iterator
	{
		auto const
			fResolveTarget
		=	[	i_rNamedInfos
			]	(	Alias const
					&	i_rAlias
				)
			{
				auto const
					aMember
				=	::ATR::Member::lower_bound
					(	i_rNamedInfos
					,	i_rAlias
						.	Target
					)
				;

				return
				NamedInfo
				{	.Name
					=	i_rAlias
						.	Name
				,	.Info
					=	aMember
						->	Info
				};
			}
		;

		return
		::std::transform
		(	i_rAliasView
			.	begin
				()
		,	i_rAliasView
			.	end
				()
		,	o_aAliasBegin
		,	fResolveTarget
		);
	}

	auto constexpr
	(	MakeMembers
	)	(	NamedTypeConstView
				i_rNamedTypeView
		,	AliasConstView
				i_rAliasView
		,	BitSize
			&	o_rAccumulatedOffset
		)
		noexcept
	->	NamedInfoBuffer
	{
		NamedInfoBuffer
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
			aAliasBegin
		=	vNamedInfo
			.	end
				()
		;

		auto const
			aAliasEnd
		=	ResolveAliases
			(	vNamedInfo
			,	aAliasBegin
			,	i_rAliasView
			)
		;

		::std::sort
		(	aNamedInfoBegin
		,	aAliasEnd
		,	Compare::Name
			{}
		);

		vNamedInfo
		.	Count
		=	::std::distance
			(	aNamedInfoBegin
			,	aAliasEnd
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
			rNamedTypeView
		=	i_rConfigBuilder
			.	NamedTypeView
				()
		;

		auto const
			vLayout
		=	MakeLayout
			(	rNamedTypeView
			)
		;

		auto const
			rAliasView
		=	i_rConfigBuilder
			.	AliasView
				()
		;

		auto const
			vNamedInfos
		=	MakeMembers
			(	rNamedTypeView
			,	rAliasView
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
