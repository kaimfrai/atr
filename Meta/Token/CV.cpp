export module Meta.Token.CV;

import Meta.Token.Type;
import Meta.Token.Transform.RemoveCV;

using ::Meta::RemoveCV;

export namespace
	Meta::Token
{
	struct
		CV
	:	TypeToken<CV>
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CV
			)
			noexcept
		->	decltype(RemoveCV(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::CV const extern
		CV
	;
}
