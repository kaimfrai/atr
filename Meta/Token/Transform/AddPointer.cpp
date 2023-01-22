export module Meta.Token.Transform.AddPointer;

import Meta.Token.Type;
import Meta.Token.Specifier;

import Std;

export namespace
	Meta::Token::Transform
{
	struct
		AddPointer
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
			<	::std::add_pointer_t
				<	t_tEntity
				>
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)
			noexcept
		->	TypeToken
			<	Specifier::Mut
				<	::std::add_pointer_t
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
	Token::Transform::AddPointer const extern
		AddPointer
	;
}
