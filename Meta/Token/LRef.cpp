export module Meta.Token.LRef;

import Meta.Token.Type;
import Meta.Token.Transform.AddLValueReference;
import Meta.Token.Transform.RemoveLValueReference;

using ::Meta::AddLValueReference;
using ::Meta::RemoveLValueReference;

export namespace
	Meta::Token
{
	struct
		LRef
	:	TypeToken<LRef>
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	LRef
			)
			noexcept
		->	decltype(AddLValueReference(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	LRef
			)
			noexcept
		->	decltype(RemoveLValueReference(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::LRef const extern
		LRef
	;
}
