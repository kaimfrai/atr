export module Meta.Token.Const;

import Meta.Token.Type;
import Meta.Token.Transform.AddConst;
import Meta.Token.Transform.RemoveConst;

using ::Meta::AddConst;
using ::Meta::RemoveConst;

export namespace
	Meta::Token
{
	struct
		Const
	:	TypeToken<Const>
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Const
			)
			noexcept
		->	decltype(AddConst(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Const
			)
			noexcept
		->	decltype(RemoveConst(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Const const extern
		Const
	;
}
