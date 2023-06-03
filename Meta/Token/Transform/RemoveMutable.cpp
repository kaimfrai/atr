export module Meta.Token.Transform.RemoveMutable;

import Meta.Token.Type;
import Meta.Token.Specifier;

export namespace
	Meta::Token::Transform
{
	struct
		RemoveMutable
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
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)
			noexcept
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::RemoveMutable const extern
		RemoveMutable
	;
}
