export module Meta.ID.Concept;

import Meta.ID.StringChain;
import Meta.ID.StringLiteral;
import Meta.Size;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tID
		>
	concept
		ProtoID
	=	::std::convertible_to
		<	t_tID
		,	decltype
			(	t_tID
			::	String
			)
		>
	and	::std::convertible_to
		<	t_tID
		,	StringChain
		>
	;

	template
		<	ProtoID
				t_tID
		>
	(	StringLiteral
	)	(	t_tID
		)
	->	StringLiteral
		<	t_tID
		::	Length
		>
	;
}
