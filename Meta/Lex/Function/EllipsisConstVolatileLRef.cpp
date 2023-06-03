export module Meta.Lex.Function.EllipsisConstVolatileLRef;

import Meta.Lex.Function.Tokenizer;
import Meta.Lex.Function;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Ellipsis;
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
		<	Token::Ellipsis
		,	Token::Const
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
		auto static constexpr
		(	operator()
		)	(	TypeToken
				<	auto
						(	t_tpParam
							...
						,	...
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
				,	Ellipsis
				)
			,	Const
			,	Volatile
			,	LRef
			);
		}
	};

	using
		EllipsisConstVolatileLRef
	=	Tokenizer
		<	Token::Ellipsis
		,	Token::Const
		,	Token::Volatile
		,	Token::LRef
		>
	;
}
