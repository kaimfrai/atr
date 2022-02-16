export module Meta.Predicate.Erasure;

export import Meta.Data.Object;
export import Meta.Type.Transform;

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
					i_vType
			)
		:	Type
			{	&TypeToken<t_tEntity>::Erase
			}
		,	Align
			{	::std::is_empty_v<Data::Object<t_tEntity>>
			?	0uz
			:	BitAlign(i_vType)
			}
		{}

		constexpr
		(	operator decltype(auto)
		)	()	const
			noexcept
		{	return Type;	}
	};
}
