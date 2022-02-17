export module Meta.Type.Reference;

export import Meta.Type;
export import Meta.Type.Transform;

export namespace
	Meta::Token
{
	struct
		LRef final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	LRef
			)
		->	decltype(AddLValueReference(i_vType))
		{	return{};	}
	};

	struct
		RRef final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	RRef
			)
		->	decltype(AddRValueReference(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::LRef constexpr inline
		LRef
	{};

	Token::RRef constexpr inline
		RRef
	{};
}
