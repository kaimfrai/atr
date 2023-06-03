export module Meta.Lex.CV.Volatile;

import Meta.Lex.CV.Tokenizer;
import Meta.Lex.CV;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Volatile;

export namespace
	Meta::Lex::CV
{
	template
		<>
	struct
		Tokenizer
		<	Token::Volatile
		>
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
				<	t_tEntity volatile
				>
			,	t_tNestedTokenizer
					i_fTokenizer
				=	{}
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeCV
			(	i_fTokenizer
				(	Type<t_tEntity>
				)
			,	Volatile
			);
		}
	};

	using
		Volatile
	=	Tokenizer
		<	Token::Volatile
		>
	;
}
