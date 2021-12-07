export module Meta.Predicate.ValueTypePair;

export import Meta.Predicate.UserDefined;

export namespace
	Meta
{
	template
		<	template
				<	auto
				,	typename
				>
			typename
				t_t1Pair
		>
	Term constexpr inline
		IsValueTypePair
	=	IsUserDefined
	and	Atom
		<	Trait::ValueTypePair
			<	t_t1Pair
			>
		>
	;
}
