export module Meta.Token.Transform.RemoveExtent;

import Meta.Token.Type;
import Meta.Token.Specifier;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		RemoveExtent
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
			<	::std::remove_extent_t
				<	t_tEntity
				>
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)
			noexcept
		->	TypeToken
			<	Specifier::Mut
				<	::std::remove_extent_t
					<	t_tEntity
					>
				>
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::RemoveExtent const extern
		RemoveExtent
	;
}
