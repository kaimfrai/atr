export module Meta.Lex.Function.VolatileLRef;

import Meta.Lex.Function.Tokenizer;
import Meta.Lex.Function;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Volatile;
import Meta.Token.LRef;

export namespace
	Meta::Lex::Function
{
	template
		<>
	struct
		Tokenizer
		<	Token::Volatile
		,	Token::LRef
		>
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
						)	volatile&
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
			,	Volatile
			,	LRef
			);
		}
	};

	using
		VolatileLRef
	=	Tokenizer
		<	Token::Volatile
		,	Token::LRef
		>
	;
}
