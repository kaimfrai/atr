export module Meta.String.Concept;

import Meta.String.Chain;
import Meta.String.Literal;
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
		,	String::Chain
		>
	;
}

export namespace
	Meta::String
{
	template
		<	ProtoID
				t_tID
		>
	(	Literal
	)	(	t_tID
		)
	->	Literal
		<	t_tID
		::	Length
		>
	;
}
