export module Meta.Token.Reference;

import Meta.Token.Type;
import Meta.Token.Transform.RemoveReference;

using ::Meta::RemoveReference;

export namespace
	Meta::Token
{
	struct
		Reference
	:	TypeToken<Reference>
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Reference
			)
			noexcept
		->	decltype(RemoveReference(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Reference const extern
		Reference
	;
}
