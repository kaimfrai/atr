export module Meta.Token.Transform.AddRValueReference;

import Meta.Token.Type;
import Meta.Token.Specifier;

import std;

export namespace
	Meta::Token::Transform
{
	struct
		AddRValueReference
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
			<	::std::add_rvalue_reference_t
				<	t_tEntity
				>
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
			<	::std::add_rvalue_reference_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::AddRValueReference const extern
		AddRValueReference
	;
}
