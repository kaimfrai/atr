export module Meta.Token:Pointer;

export import :Type;
export import :Transform;

export namespace
	Meta::Token
{
	struct
		Pointer
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Pointer
			)
		->	decltype(AddPointer(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Pointer
			)
		->	decltype(RemovePointer(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Pointer extern
		Pointer
	;
}
