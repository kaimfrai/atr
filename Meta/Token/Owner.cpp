export module Meta.Token.Owner;

import Meta.Token.Type;

export namespace
	Meta::Token
{
	template
		<	typename
				t_tOwner
		>
	struct
		Owner
	:	TypeToken<Owner<t_tOwner>>
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr
		(	operator+
		)	(	TypeToken<t_tEntity>
			,	Owner
			)
			noexcept
		->	TypeToken<t_tEntity t_tOwner::*>
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr
		(	operator-
		)	(	TypeToken<t_tEntity t_tOwner::*>
			,	Owner
			)
			noexcept
		->	TypeToken<t_tEntity>
		{	return{};	}
	};
}

export namespace
	Meta
{
	template
		<	typename
				t_tOwner
		>
	Token::Owner<t_tOwner> constexpr inline
		Owner
	{};
}
