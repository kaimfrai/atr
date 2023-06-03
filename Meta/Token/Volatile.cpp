export module Meta.Token.Volatile;

import Meta.Token.Type;
import Meta.Token.Transform.AddVolatile;
import Meta.Token.Transform.RemoveVolatile;

using ::Meta::AddVolatile;
using ::Meta::RemoveVolatile;

export namespace
	Meta::Token
{
	struct
		Volatile
	:	TypeToken<Volatile>
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Volatile
			)
			noexcept
		->	decltype(AddVolatile(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Volatile
			)
			noexcept
		->	decltype(RemoveVolatile(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Volatile const extern
		Volatile
	;
}
