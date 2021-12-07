export module Meta.Predicate.ValuePack;

export import Meta.Predicate.UserDefined;

export namespace
	Meta
{
	template
		<	template
				<	auto
					...
				>
			typename
				t_t1Pack
		>
	Term constexpr inline
		IsValuePack
	=	IsUserDefined
	and	Atom
		<	Trait::ValuePack
			<	t_t1Pack
			>
		>
	;
}

