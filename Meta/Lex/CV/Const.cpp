export module Meta.Lex.CV.Const;

import Meta.Lex.CV.Tokenizer;
import Meta.Lex.CV;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Const;

export namespace
	Meta::Lex::CV
{
	template
		<>
	struct
		Tokenizer
		<	Token::Const
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
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity const
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
			,	Const
			);
		}
	};

	using
		Const
	=	Tokenizer
		<	Token::Const
		>
	;
}
