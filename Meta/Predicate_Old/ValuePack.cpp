export module Meta.Predicate.ValuePack;

export import Meta.Predicate.UserDefined;

namespace
	Meta
{
	export template
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
	and	Term
		{	Trait::ValuePack
			<	t_t1Pack
			>{}
		}
	;
}

