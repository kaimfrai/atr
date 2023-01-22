export module Meta.Token.Transform.RemoveReference;

import Meta.Token.Type;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		RemoveReference
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
			<	::std::remove_reference_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::RemoveReference const extern
		RemoveReference
	;
}
