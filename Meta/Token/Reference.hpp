export module Meta.Token:Reference;

export import :Type;
export import :Transform;

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
	Token::LRef extern
		LRef
	;

	Token::RRef extern
		RRef
	;
}
