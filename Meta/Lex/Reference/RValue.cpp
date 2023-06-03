export module Meta.Lex.Reference.RValue;

import Meta.Lex.Reference;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.RRef;

export namespace
	Meta::Lex::Reference
{
	struct
		RValue
	{
		template
			<	typename
					t_tEntity
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	TypeToken
				<	t_tEntity&&
				>
			,	t_tNestedTokenizer
					i_fTokenizer
				=	{}
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeRef
			(	i_fTokenizer
				(	Type<t_tEntity>
				)
			,	RRef
			);
		}
	};
}
