export module Meta.Token.Pointer;

export import Meta.Type;
export import Meta.Token.Transform;
export import Meta.Token.CV;
export import Meta.Token.Function;

export namespace
	Meta::Token
{
	struct
		Pointer final
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
	Token::Pointer constexpr inline
		Pointer
	{};
}
