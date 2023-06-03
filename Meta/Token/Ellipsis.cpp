export module Meta.Token.Ellipsis;

import Meta.Token.Type;
import Meta.Token.Transform.AddEllipsis;
import Meta.Token.Transform.RemoveEllipsis;

using ::Meta::AddEllipsis;
using ::Meta::RemoveEllipsis;

export namespace
	Meta::Token
{
	struct
		Ellipsis
	:	TypeToken<Ellipsis>
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
			,	Ellipsis
			)
			noexcept
		->	decltype(AddEllipsis(i_vType))
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Ellipsis
			)
			noexcept
		->	decltype(RemoveEllipsis(i_vType))
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Ellipsis const extern
		Ellipsis
	;
}
