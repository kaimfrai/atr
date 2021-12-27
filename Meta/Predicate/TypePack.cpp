export module Meta.Predicate.TypePack;

export import Meta.Predicate.UserDefined;

namespace
	Meta
{
	export template
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
	and	Term
		{	Trait::TypePack
			<	t_t1Pack
			>{}
		}
	;
}

