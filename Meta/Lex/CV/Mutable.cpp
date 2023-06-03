export module Meta.Lex.CV.Mutable;

import Meta.Lex.CV.Tokenizer;
import Meta.Lex.CV;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Specifier;
import Meta.Token.Mutable;

using ::Meta::Specifier::Mut;

export namespace
	Meta::Lex::CV
{
	template
		<>
	struct
		Tokenizer
		<	Token::Mutable
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
				<	Mut<t_tEntity>
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
			);
		}
	};

	using
		Mutable
	=	Tokenizer
		<	Token::Mutable
		>
	;
}
