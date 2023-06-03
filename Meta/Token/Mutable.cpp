export module Meta.Token.Mutable;

import Meta.Token.Type;
import Meta.Token.Transform.AddMutable;
import Meta.Token.Transform.RemoveMutable;

using ::Meta::AddMutable;
using ::Meta::RemoveMutable;

export namespace
	Meta::Token
{
	struct
		Mutable
	:	TypeToken<Mutable>
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
			,	Mutable
			)
			noexcept
		->	decltype(AddMutable(i_vType))
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
			,	Mutable
			)
			noexcept
		->	decltype(RemoveMutable(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Mutable const extern
		Mutable
	;
}
