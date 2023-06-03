export module Meta.Lex.Pointer.Tokenizer;

import Meta.Lex.Pointer;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;

export namespace
	Meta::Lex::Pointer
{
	struct
		Tokenizer
	{
		template
			<	typename
					t_tEntity
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity*
				>
			,	t_tNestedTokenizer
					i_fTokenizer
				=	{}
			)
			noexcept
		->	decltype(auto)
		{	return
			MakePtr
			(	i_fTokenizer
				(	Type<t_tEntity>
				)
			);
		}
	};
}
