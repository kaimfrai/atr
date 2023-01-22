export module Meta.Token.Transform.Identity;

import Meta.Token.Type;

export namespace
	Meta::Token::Transform
{
	struct
		TypeIdentity
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
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
	Token::Transform::TypeIdentity const extern
		TypeIdentity
	;
}
