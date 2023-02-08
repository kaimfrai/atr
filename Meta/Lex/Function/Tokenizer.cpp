export module Meta.Lex.Function.Tokenizer;

import Meta.Lex.Function;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;

export namespace
	Meta::Lex::Function
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
					t_tResult
			,	typename
				...	t_tpParam
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	auto
						(	t_tpParam
							...
						)
					->	t_tResult
				>
			,	t_tNestedTokenizer
					i_fTokenizer
				=	{}
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	i_fTokenizer
					(	Type<t_tResult>
					)
				,	MakeParam
					(	i_fTokenizer
						(	Type<t_tpParam>
						)
						...
					)
				)
			);
		}
	};
}
