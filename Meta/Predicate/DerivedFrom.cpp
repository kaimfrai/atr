export module Meta.Predicate.DerivedFrom;

export import Meta.Predicate.Class;

export namespace
	Meta
{
	template
		<	ProtoClass
				t_tBase
		>
	Term constexpr inline
		IsDerivedFrom
	=	IsClass
	and	Atom<Trait::DerivedFrom<t_tBase>>
	;
}
