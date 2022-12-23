export module ATR:Layout.Create;

import :DataMember;
import :Layout.AliasLayout;
import :Layout.Data;
import :Layout.Layout;
import :Layout.Member;
import :Layout.Static;

import Meta.Buffer.Iterator;
import Meta.Size;
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
using ::Meta::Buffer::Iterator;
using ::Meta::Buffer::Sentinel;

[[nodiscard]]
auto constexpr
(	AliasCount
)	(	Iterator<MemberInfo const>
			i_aBegin
	,	Sentinel<MemberInfo const>
			i_aEnd
	)
->	USize
{	return
	static_cast<USize>
	(	::std::lower_bound
		(	i_aBegin
		,	i_aEnd.base()
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
)	(	Iterator<MemberInfo const>
			i_aBegin
	,	Sentinel<MemberInfo const>
			i_aEnd
	)
->	USize
{	return
	static_cast<USize>
	(	i_aEnd.base()
	-	::std::lower_bound
		(	i_aBegin
		,	i_aEnd.base()
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
		(	t_vConfig.begin()
		,	t_vConfig.end()
		)
	;

	USize constexpr
		nStaticCount
	=	StaticCount
		(	t_vConfig.begin() + nAliasCount
		,	t_vConfig.end()
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
