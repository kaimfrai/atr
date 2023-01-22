export module Meta.Token.Transform.RemoveConst;

import Meta.Token.Type;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		RemoveConst
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
			<	::std::remove_const_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::RemoveConst const extern
		RemoveConst
	;
}
