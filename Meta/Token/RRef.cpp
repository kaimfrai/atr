export module Meta.Token.RRef;

import Meta.Token.Type;
import Meta.Token.Transform.AddRValueReference;
import Meta.Token.Transform.RemoveRValueReference;

using ::Meta::AddRValueReference;
using ::Meta::RemoveRValueReference;

export namespace
	Meta::Token
{
	struct
		RRef
	:	TypeToken<RRef>
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
			,	RRef
			)
			noexcept
		->	decltype(AddRValueReference(i_vType))
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
			,	RRef
			)
			noexcept
		->	decltype(RemoveRValueReference(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::RRef const extern
		RRef
	;
}
