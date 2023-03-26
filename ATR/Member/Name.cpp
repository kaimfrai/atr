export module ATR.Member.Name;

import Meta.ID.StringLiteral;

export namespace
	ATR::Member
{
	using
		NameView
	=	::Meta::StringView
	;

	using
		Name
	=	::Meta::StringLiteral
		<	31uz
		>
	;
}
