export module Meta.Token.CV;

export import Meta.Type;
export import Meta.Token.Transform;

export namespace
	Meta::Token
{
	struct
		Const final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Const
			)
		->	decltype(AddConst(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Const
			)
		->	decltype(RemoveConst(i_vType))
		{	return{};	}
	};

	struct
		Volatile final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Volatile
			)
		->	decltype(AddVolatile(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Volatile
			)
		->	decltype(RemoveVolatile(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Const constexpr inline
		Const
	{};

	Token::Volatile constexpr inline
		Volatile
	{};
}
