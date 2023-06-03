export module Meta.Token.Transform.RemoveRValueReference;

import Meta.Token.Type;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		RemoveRValueReference
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
		)	(	TypeToken<t_tEntity&&>
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
	Token::Transform::RemoveRValueReference const extern
		RemoveRValueReference
	;
}
