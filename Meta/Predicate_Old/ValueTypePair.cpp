export module Meta.Predicate.ValueTypePair;

export import Meta.Predicate.UserDefined;

namespace
	Meta
{
	export template
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
	and	Term
		{	Trait::ValueTypePair
			<	t_t1Pair
			>{}
		}
	;
}
