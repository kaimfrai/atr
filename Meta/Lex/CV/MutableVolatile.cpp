export module Meta.Lex.CV.MutableVolatile;

import Meta.Lex.CV.Tokenizer;
import Meta.Lex.CV;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Specifier;
import Meta.Token.Mutable;
import Meta.Token.Volatile;

using ::Meta::Specifier::Mut;

export namespace
	Meta::Lex::CV
{
	template
		<>
	struct
		Tokenizer
		<	Token::Mutable
		,	Token::Volatile
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
		auto static constexpr
		(	operator()
		)	(	TypeToken
				<	Mut<t_tEntity volatile>
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
			,	Mutable
			,	Volatile
			);
		}
	};

	using
		MutableVolatile
	=	Tokenizer
		<	Token::Mutable
		,	Token::Volatile
		>
	;
}
