export module Meta.Token.Transform.RemoveCopyReference;

import Meta.Token.Type;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		RemoveCopyReference
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr
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
		auto static constexpr
		(	operator()
		)	(	TypeToken<t_tEntity const&>
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
	Token::Transform::RemoveCopyReference const extern
		RemoveCopyReference
	;
}
