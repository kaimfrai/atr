export module Meta.Predicate.Erasure;

export import Meta.Concept.Member;

export namespace
	Meta
{
	struct
		EraseAlignType
	{
		EraseTypeToken Type;
		USize Align;

		constexpr
		(	EraseAlignType
		)	()
		=	default;

		template
			<	typename
					t_tEntity
			>
		constexpr
		(	EraseAlignType
		)	(	TypeToken<t_tEntity>
			)
		:	Type
			{	&TypeToken<t_tEntity>::Erase
			}
		,	Align
			{	Trait::Member<t_tEntity>::Bits.Align
			}
		{}

		constexpr
		(	operator decltype(auto)
		)	()	const
			noexcept
		{	return Type;	}
	};
}
