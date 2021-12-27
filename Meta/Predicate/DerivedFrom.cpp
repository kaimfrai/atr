export module Meta.Predicate.DerivedFrom;

export import Meta.Predicate.Class;

 namespace
	Meta
{
	export template
		<	ProtoClass
				t_tBase
		>
	Term constexpr inline
		IsDerivedFrom
	=	IsClass
	and	Term
		{	Trait::DerivedFrom
			<	t_tBase
			>{}
		}
	;
}
