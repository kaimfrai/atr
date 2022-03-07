export module Meta.Token.Reference;

export import Meta.Token.Type;
export import Meta.Token.Transform;

export namespace
	Meta::Token
{
	struct
		LRef
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
		RRef
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
