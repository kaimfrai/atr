export module ATR:Layout.Create;

import :DataMember;
import :Layout.AliasLayout;
import :Layout.Data;
import :Layout.LayoutFwd;
import :Layout.Member;
import :Layout.Split;
import :Layout.Static;

import Meta.Arithmetic;
import Meta.Token;

import Std;

using ::ATR::AliasLayout;
using ::ATR::AliasSortKey;
using ::ATR::Data;
using ::ATR::DefineMembers;
using ::ATR::Layout;
using ::ATR::MemberList;
using ::ATR::StaticData;
using ::ATR::StaticSortKey;

using ::Meta::Aggregate;
using ::Meta::Index;
using ::Meta::IndexToken;
using ::Meta::Sequence;
using ::Meta::USize;

[[nodiscard]]
auto constexpr
(	AliasCount
)	(	MemberInfo const
		*	i_aBegin
	,	MemberInfo const
		*	i_aEnd
	)
->	USize
{	return
	static_cast<USize>
	(	::std::lower_bound
		(	i_aBegin
		,	i_aEnd
		,	MemberInfo
			{	.SortKey = AliasSortKey + 1uz
			,	.Name = {}
			,	.Type = {}
			}
		)
	-	i_aBegin
	);
}

[[nodiscard]]
auto constexpr
(	StaticCount
)	(	MemberInfo const
		*	i_aBegin
	,	MemberInfo const
		*	i_aEnd
	)
->	USize
{	return
	static_cast<USize>
	(	i_aEnd
	-	::std::lower_bound
		(	i_aBegin
		,	i_aEnd
		,	MemberInfo
			{	.SortKey = StaticSortKey
			,	.Name = {}
			,	.Type = {}
			}
		)
	);
}

export template
	<	MemberList
			t_vConfig
	>
[[nodiscard]]
auto constexpr
(	CreateLayout
)	(	DefineMembers
		<	t_vConfig
		>
	)
->	decltype(auto)
{
	USize constexpr
		nAliasCount
	=	AliasCount
		(	begin(t_vConfig)
		,	end(t_vConfig)
		)
	;

	USize constexpr
		nStaticCount
	=	StaticCount
		(	begin(t_vConfig) + nAliasCount
		,	end(t_vConfig)
		)
	;

	USize constexpr
		nDynamicCount
	=	t_vConfig.size()
	-	nAliasCount
	-	nStaticCount
	;

	return
	[]	<	USize
			...	t_npAliasIndex
		,	USize
			...	t_npDynamicIndex
		,	USize
			...	t_npStaticIndex
		>(	IndexToken<t_npAliasIndex...>
		,	IndexToken<t_npDynamicIndex...>
		,	IndexToken<t_npStaticIndex...>
		)
	{
		using
			DynamicLayoutType
		=	decltype
			(	::MakeLayout
				<	DeduceMember
					<	t_vConfig[t_npDynamicIndex]
					>
					...
				>()
			)
		;
		using
			StaticLayoutType
		=	StaticData
			<	DeduceMember
				<	t_vConfig[t_npStaticIndex]
				>
				...
			>
		;

		using
			DataType
		=	Data
			<	StaticLayoutType
			,	DynamicLayoutType
			>
		;

		if	constexpr
			(	nAliasCount
			==	0uz
			)
			return
			DataType
			{};
		else
			return
			AliasLayout
			<	DataType
			,	DeduceAlias
				<	t_vConfig[t_npAliasIndex]
				>
				...
			>{};
	}(	Sequence<nAliasCount>
	,	Sequence<nDynamicCount> += Index<nAliasCount>
	,	Sequence<nStaticCount> += Index<nAliasCount + nDynamicCount>
	);
}
