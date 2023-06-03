export module Meta.Token.Transform.AddLValueReference;

import Meta.Token.Type;
import Meta.Token.Specifier;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		AddLValueReference
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
			<	::std::add_lvalue_reference_t
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
			<	::std::add_lvalue_reference_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::AddLValueReference const extern
		AddLValueReference
	;
}
