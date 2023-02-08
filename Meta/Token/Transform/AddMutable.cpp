export module Meta.Token.Transform.AddMutable;

import Meta.Token.Type;
import Meta.Token.Specifier;

import Std;

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
		static auto constexpr
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
		static auto constexpr
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
		static auto constexpr
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
		static auto constexpr
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
		static auto constexpr
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
