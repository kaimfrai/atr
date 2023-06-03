export module Meta.Lex.Function.ConstVolatileLRef;

import Meta.Lex.Function.Tokenizer;
import Meta.Lex.Function;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Const;
import Meta.Token.Volatile;
import Meta.Token.LRef;

export namespace
	Meta::Lex::Function
{
	template
		<>
	struct
		Tokenizer
		<	Token::Const
		,	Token::Volatile
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
		auto static constexpr inline
		(	operator()
		)	(	TypeToken
				<	auto
						(	t_tpParam
							...
						)	const volatile&
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
			,	Const
			,	Volatile
			,	LRef
			);
		}
	};

	using
		ConstVolatileLRef
	=	Tokenizer
		<	Token::Const
		,	Token::Volatile
		,	Token::LRef
		>
	;
}
