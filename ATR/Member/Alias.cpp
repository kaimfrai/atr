export module ATR.Member.Alias;

import ATR.Member.List;
import ATR.Member.Info;

import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Size;

import Std;

using ::Meta::USize;
using ::Meta::ID_T;
using ::Meta::StringLiteral;

export namespace
	ATR::Member
{
	template
		<	USize
				t_nAliasCount
		,	USize
				t_nDataCount
		>
	struct
		AliasedList
	{
		[[no_unique_address]]
		::std::array<AliasInfo, t_nAliasCount>
			AliasInfos
		;
		List<t_nDataCount>
			DataInfos
		;
	};

	template
		<	USize
				t_nAliasedCount
		,	USize
				t_nDataCount
		>
	(	AliasedList
	)	(	AliasedList
			<	t_nAliasedCount
			,	t_nDataCount
			>
		)
	->	AliasedList
		<	t_nAliasedCount
		,	t_nDataCount
		>
	;

	template
		<	StringLiteral
				t_vName
		,	StringLiteral
				t_vTarget
		>
	AliasInfo constexpr inline
		Alias
	{	ID_T<t_vName>::StringView
	,	ID_T<t_vTarget>::StringView
	};
}
