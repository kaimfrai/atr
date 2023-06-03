export module Meta.Token.Transform.RemoveCV;

import Meta.Token.Type;
import Meta.Token.Specifier;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		RemoveCV
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
			<	::std::remove_cv_t
				<	t_tEntity
				>
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)
			noexcept
		->	TypeToken
			<	::std::remove_cv_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::RemoveCV const extern
		RemoveCV
	;
}
