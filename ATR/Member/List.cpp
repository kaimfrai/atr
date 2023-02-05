export module ATR.Member.List;

import ATR.Member.Info;

import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Data.Aggregate.Array;
import Meta.Token.Type;
import Meta.Size;
import Meta.Trait.BitAlign;

using ::Meta::USize;
using ::Meta::SSize;
using ::Meta::StringLiteral;
using ::Meta::ID_T;
using ::Meta::Type;
using ::Meta::BitAlign_Of;

export namespace
	ATR::Member
{
	template
		<	USize
				t_nDataCount
		>
	struct
		List final
	:	Meta::ArrayAggregate
		<	Info
		,	t_nDataCount
		>
	{
		SSize
			DynamicSize
		;
	};

	template
		<	USize
				t_nDataCount
		>
	(	List
	)	(	List<t_nDataCount>
		)
	->	List
		<	t_nDataCount
		>
	;

	template
		<	StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	Info constexpr inline
		New
	{	BitAlign_Of(Type<t_tValue>)
	,	ID_T<t_vName>::StringView
	,	Type<t_tValue>
	};
}
