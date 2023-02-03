export module ATR.Concatenate;

import ATR.Member.Definition;
import ATR.DataMember;
import ATR.Member.List;

import Meta.ID.Alias;
import Meta.ID.Concatenate;
import Meta.ID.Template;
import Meta.ID.StringLiteral;
import Meta.Functional.Construct;
import Meta.Token.Type;

import Std;

namespace
	ATR::Member
{
	template
		<	typename
				t_tPrefix
		,	MemberInfo
				t_vInfix
		,	typename
				t_tSuffix
		>
	auto constexpr
	(	InfixDataMember
	)	()
	->	MemberInfo
	{
		using
			tNewName
		=	Meta::ID_T
			<	Meta::Concatenate
				<	t_tPrefix::Length
				+	t_vInfix.Name.Size
				+	t_tSuffix::Length
				>(	::std::array
					{	t_tPrefix::StringView
					,	t_vInfix.Name
					,	t_tSuffix::StringView
					}
				)
			>
		;
		auto
			vResult
		=	t_vInfix
		;
		(	vResult.Name
		=	tNewName::StringView
		);

		//	also update the alias target if it is an alias
		if	constexpr
			(	t_vInfix.SortKey
			==	AliasSortKey
			)
		{
			using
				tInfixAliasTarget
			=	Meta::RestoreTypeEntity
				<	t_vInfix.Type
				>
			;
			using
				tAliasTarget
			=	Meta::ID_T
				<	Meta::Concatenate
					<	t_tPrefix::Length
					+	tInfixAliasTarget::Length
					+	t_tSuffix::Length
					>(	std::array
						{	t_tPrefix::StringView
						,	tInfixAliasTarget::StringView
						,	t_tSuffix::StringView
						}
					)
				>
			;
			(	vResult.Type
			=	::Meta::Type
				<	tAliasTarget
				>
			);
		}
		return
			vResult
		;
	}

	template
		<	typename
				t_tPrefix
		,	auto
				t_vConfig
		,	typename
				t_tSuffix
		>
	List constexpr inline
		InfixDefinition_For
	=	[]	<	::std::size_t
				...	t_npIndex
			>(	::std::index_sequence<t_npIndex...>
			)
		{	return
			List
			{	InfixDataMember
				<	t_tPrefix
				,	t_vConfig[t_npIndex]
				,	t_tSuffix
				>()
				...
			};
		}(	::std::make_index_sequence
			<	t_vConfig
			.	size()
			>{}
		)
	;
}

export namespace
	ATR::Member
{
	/// uses the Definition_For the given literal and prefixes it with that literal
	template
		<	Meta::StringLiteral
				i_vType
		,	Meta::StringLiteral
				i_vPrefix
			=	i_vType
		>
	List constexpr inline
		PrefixedDefinition_For
	=	InfixDefinition_For
		<	Meta::ID_T<i_vPrefix>
		,	Definition_For<i_vType>
		,	Meta::ID<>
		>
	;

	/// uses the Definition_For the given literal and suffixes it with that literal
	template
		<	Meta::StringLiteral
				i_vType
		,	Meta::StringLiteral
				i_vSuffix
			=	i_vType
		>
	List constexpr inline
		SuffixedDefinition_For
	=	InfixDefinition_For
		<	Meta::ID<>
		,	Definition_For<i_vType>
		,	Meta::ID_T<i_vSuffix>
		>
	;
}
