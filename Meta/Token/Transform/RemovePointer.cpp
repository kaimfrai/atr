export module Meta.Token.Transform.RemovePointer;

import Meta.Token.Type;
import Meta.Token.Specifier;

import std;

export namespace
	Meta::Token::Transform
{
	struct
		RemovePointer
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
			<	::std::remove_pointer_t
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
			<	Specifier::Mut
				<	::std::remove_pointer_t
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
	Token::Transform::RemovePointer const extern
		RemovePointer
	;
}
