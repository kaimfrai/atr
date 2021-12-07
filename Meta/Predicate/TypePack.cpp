export module Meta.Predicate.TypePack;

export import Meta.Predicate.UserDefined;

export namespace
	Meta
{
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Pack
		>
	Term constexpr inline
		IsTypePack
	=	IsUserDefined
	and	Atom
		<	Trait::TypePack
			<	t_t1Pack
			>
		>
	;
}

