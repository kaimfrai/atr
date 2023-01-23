export module Meta.Token.Noexcept;

import Meta.Token.Type;
import Meta.Token.Transform.AddNoexcept;
import Meta.Token.Transform.RemoveNoexcept;

using ::Meta::AddNoexcept;
using ::Meta::RemoveNoexcept;

export namespace
	Meta::Token
{
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
	Token::Noexcept const extern
		Noexcept
	;
}
