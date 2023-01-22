export module Meta.Token.Function;

import Meta.Token.Type;
import Meta.Token.Transform.AddEllipsis;
import Meta.Token.Transform.RemoveEllipsis;
import Meta.Token.Transform.AddNoexcept;
import Meta.Token.Transform.RemoveNoexcept;

using ::Meta::AddEllipsis;
using ::Meta::RemoveEllipsis;
using ::Meta::AddNoexcept;
using ::Meta::RemoveNoexcept;

export namespace
	Meta::Token
{
	struct
		Ellipsis
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Ellipsis
			)
			noexcept
		->	decltype(AddEllipsis(i_vType))
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Ellipsis
			)
			noexcept
		->	decltype(RemoveEllipsis(i_vType))
		{	return {};	}
	};

	struct
		Noexcept
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Noexcept
			)
			noexcept
		->	decltype(AddNoexcept(i_vType))
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Noexcept
			)
			noexcept
		->	decltype(RemoveNoexcept(i_vType))
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Ellipsis extern
		Ellipsis
	;

	Token::Noexcept extern
		Noexcept
	;
}
