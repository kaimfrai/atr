export module Meta.Token.Transform.Identity;

import Meta.Token.Type;

export namespace
	Meta::Token::Transform
{
	struct
		Identity
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	TypeToken<t_tEntity>
			)
			noexcept
		->	TypeToken<t_tEntity>
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Transform::Identity const extern
		Identity
	;
}
