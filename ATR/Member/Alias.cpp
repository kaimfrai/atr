export module ATR.Member.Alias;

import ATR.Member.SortKey;
import ATR.Member.Info;

import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Token.Type;

using ::Meta::ID_T;
using ::Meta::StringLiteral;
using ::Meta::Type;

export namespace
	ATR::Member
{
	template
		<	StringLiteral
				t_vOriginID
		,	StringLiteral
				t_vTargetID
		>
	Info constexpr inline
		Alias
	{	.SortKey = AliasSortKey
	,	.Name = ID_T<t_vOriginID>::StringView
	,	.Type = Type<ID_T<t_vTargetID>>
	};
}
