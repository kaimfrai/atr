export module ATR.Member.InfixDefinition;

import ATR.DataMember;
import ATR.Member.SortKey;
import ATR.Member.Definition;
import ATR.Member.List;

import Meta.ID.Alias;
import Meta.ID.Concatenate;
import Meta.ID.StringLiteral;
import Meta.Token.Type;

import Std;

using ::Meta::ID_T;
using ::Meta::StringLiteral;

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
	[[nodiscard]]
	auto constexpr
	(	InfixDataMember
	)	()
		noexcept
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

	export template
		<	StringLiteral
				t_vPrefix
		,	StringLiteral
				t_vType
		,	StringLiteral
				t_vSuffix
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
				<	ID_T<t_vPrefix>
				,	Definition_For<t_vType>[t_npIndex]
				,	ID_T<t_vSuffix>
				>()
				...
			};
		}(	::std::make_index_sequence
			<	Definition_For<t_vType>
			.	size()
			>{}
		)
	;
}
