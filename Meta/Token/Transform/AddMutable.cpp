export module Meta.Token.Transform.AddMutable;

import Meta.Token.Type;
import Meta.Token.Specifier;

import std;

export namespace
	Meta::Token::Transform
{
	struct
		AddMutable
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
			<	Specifier::Mut
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
		)	(	TypeToken<t_tEntity const>
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
		)	(	TypeToken<t_tEntity&>
			)
			noexcept
		->	TypeToken
			<	::std::remove_const_t<t_tEntity>
				&
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
			<	::std::remove_const_t<t_tEntity>
				&&
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::AddMutable const extern
		AddMutable
	;
}
