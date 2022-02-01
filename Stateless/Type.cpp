export module Stateless.Type;

export import Meta.Concept;

export namespace
	Stateless
{
	/// full name Stateless::Type, types that have no state and can be freely copied around
	template
		<	typename
				t_tAny
		>
	concept
		Type
	=	Meta::ProtoStateless
		<	t_tAny
		>
	;
}
