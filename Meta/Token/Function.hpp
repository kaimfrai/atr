export module Meta.Token:Function;

///	tokens also required by functions
export import :CV;
export import :Reference;
export import :FunctionTransform;

export namespace
	Meta::Token
{
	struct
		Ellipsis
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Ellipsis
			)
		->	decltype(AddEllipsis(i_vType))
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Ellipsis
			)
		->	decltype(RemoveEllipsis(i_vType))
		{	return {};	}
	};

	struct
		Noexcept
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Noexcept
			)
		->	decltype(AddNoexcept(i_vType))
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Noexcept
			)
		->	decltype(RemoveNoexcept(i_vType))
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Ellipsis constexpr inline
		Ellipsis
	{};

	Token::Noexcept constexpr inline
		Noexcept
	{};
}
