export module Meta.Token.Transform.RemoveLValueReference;

import Meta.Token.Type;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		RemoveLValueReference
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
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity&>
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
	Token::Transform::RemoveLValueReference const extern
		RemoveLValueReference
	;
}
