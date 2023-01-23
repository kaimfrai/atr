export module Meta.Token.Pointer;

import Meta.Token.Type;
import Meta.Token.Transform.AddPointer;
import Meta.Token.Transform.RemovePointer;

using ::Meta::AddPointer;
using ::Meta::RemovePointer;

export namespace
	Meta::Token
{
	struct
		Pointer
	:	TypeToken<Pointer>
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
			,	Pointer
			)
			noexcept
		->	decltype(AddPointer(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Pointer
			)
			noexcept
		->	decltype(RemovePointer(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Pointer const extern
		Pointer
	;
}
