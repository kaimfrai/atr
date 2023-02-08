export module Meta.Lex.Member.Tokenizer;

import Meta.Lex.Member;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Owner;

export namespace
	Meta::Lex::Member
{
	struct
		Tokenizer
	{
		template
			<	typename
					t_tMember
			,	typename
					t_tOwner
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tMember t_tOwner::*
				>
			,	t_tNestedTokenizer
					i_fTokenizer
				=	{}
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeMember
			(	i_fTokenizer
				(	Type<t_tMember>
				)
			,	Owner<t_tOwner>
			);
		}
	};
}
