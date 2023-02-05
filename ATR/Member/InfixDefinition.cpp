export module ATR.Member.InfixDefinition;

import ATR.Member.Info;
import ATR.Member.Definition;
import ATR.Member.List;
import ATR.Member.Alias;

import Meta.ID.Alias;
import Meta.ID.Concept;
import Meta.ID.Concatenate;
import Meta.ID.StringView;
import Meta.ID.StringLiteral;

import Std;

using ::Meta::ProtoID;
using ::Meta::ID_V;
using ::Meta::ID_Of;
using ::Meta::StringView;
using ::Meta::StringLiteral;

namespace
	ATR::Member
{
	template
		<	typename
				t_tObject
		,	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	ChangeMember
	)	(	auto
				i_vObject
		,	t_tMember t_tObject
			::*	i_fMember
		,	t_tMember const
			&	i_rMember
		)
		noexcept
	->	decltype(i_vObject)
	{
		(	i_vObject
		.*	i_fMember
		=	i_rMember
		);

		return
			i_vObject
		;
	}

	template
		<	auto
				t_vObject
		,	StringView decltype(t_vObject)
			::*	t_fMember
		>
	[[nodiscard]]
	auto constexpr
	(	InfixMember
	)	(	ProtoID auto
				i_vPrefix
		,	ProtoID auto
				i_vSuffix
		)
	{
		auto
			vResult
		=	t_vObject
		;
		(	vResult
		.*	t_fMember
		=	Concatenate
			(	i_vPrefix
			,	ID_Of
				<	t_vObject
				.*	t_fMember
				>{}
			,	i_vSuffix
			)
		.	StringView
		);

		return
			vResult
		;
	}

	template
		<	List
				t_vList
		>
	[[nodiscard]]
	auto constexpr
	(	InfixDataMember
	)	(	ProtoID auto
				i_vPrefix
		,	Definition<t_vList>
		,	ProtoID auto
				i_vSuffix
		)
		noexcept
	->	decltype(t_vList)
	{	return
		[=]	<	::std::size_t
				...	t_npIndex
			>(	::std::index_sequence<t_npIndex...>
			)
		{	return
			decltype(t_vList)
			{	{	InfixMember
					<	t_vList[t_npIndex]
					,	&Info::Name
					>(	i_vPrefix
					,	i_vSuffix
					)
					...
				}
			,	t_vList.DynamicSize
			};
		}(	::std::make_index_sequence
			<	t_vList
			.	size()
			>{}
		);
	}

	template
		<	AliasedList
				t_vAliased
		>
	[[nodiscard]]
	auto constexpr
	(	InfixDataMember
	)	(	ProtoID auto
				i_vPrefix
		,	Definition<t_vAliased>
		,	ProtoID auto
				i_vSuffix
		)
		noexcept
	->	decltype(t_vAliased)
	{	return
		{	[=]	<	::std::size_t
					...	t_npIndex
				>(	::std::index_sequence<t_npIndex...>
				)
			{	return
				::std::array
				{	InfixMember
					<	InfixMember
						<	t_vAliased.AliasInfos[t_npIndex]
						,	&AliasInfo::Name
						>(	i_vPrefix
						,	i_vSuffix
						)
					,	&AliasInfo::Target
					>(	i_vPrefix
					,	i_vSuffix
					)
					...
				};
			}(	::std::make_index_sequence
				<	t_vAliased
				.	AliasInfos
				.	size()
				>{}
			)
		,	InfixDataMember
			(	i_vPrefix
			,	Definition<t_vAliased.DataInfos>{}
			,	i_vSuffix
			)
		};
	}

	export template
		<	StringLiteral
				t_vPrefix
		,	StringLiteral
				t_vType
		,	StringLiteral
				t_vSuffix
		>
	auto constexpr inline
		InfixDefinition_For
	=	InfixDataMember
		(	ID_V<t_vPrefix>
		,	Definition_For<t_vType>
		,	ID_V<t_vSuffix>
		)
	;
}
