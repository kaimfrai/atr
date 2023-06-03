export module Meta.Lex.Function.RRefNoexcept;

import Meta.Lex.Function.Tokenizer;
import Meta.Lex.Function;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.RRef;
import Meta.Token.Noexcept;

export namespace
	Meta::Lex::Function
{
	template
		<>
	struct
		Tokenizer
		<	Token::RRef
		,	Token::Noexcept
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
						)	&&
						noexcept
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
			,	RRef
			,	Noexcept
			);
		}
	};

	using
		RRefNoexcept
	=	Tokenizer
		<	Token::RRef
		,	Token::Noexcept
		>
	;
}
