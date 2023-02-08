export module Meta.Lex.CV.Tokenizer;

import Meta.Lex.CV;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;

export namespace
	Meta::Lex::CV
{
	template
		<	typename
			...
		>
	struct
		Tokenizer
	;

	template
		<>
	struct
		Tokenizer<>
	{
		template
			<	typename
					t_tEntity
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity
				>
			,	t_tNestedTokenizer
				=	{}
			)
			noexcept
		->	MatchCVType<t_tEntity>
		{	return
			{};
		}
	};
}
