export module Meta.Lex.Function.EllipsisConstLRefNoexcept;

import Meta.Lex.Function.Tokenizer;
import Meta.Lex.Function;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Ellipsis;
import Meta.Token.Const;
import Meta.Token.LRef;
import Meta.Token.Noexcept;

export namespace
	Meta::Lex::Function
{
	template
		<>
	struct
		Tokenizer
		<	Token::Ellipsis
		,	Token::Const
		,	Token::LRef
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
		auto static constexpr
		(	operator()
		)	(	TypeToken
				<	auto
						(	t_tpParam
							...
						,	...
						)	const&
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
				,	Ellipsis
				)
			,	Const
			,	LRef
			,	Noexcept
			);
		}
	};

	using
		EllipsisConstLRefNoexcept
	=	Tokenizer
		<	Token::Ellipsis
		,	Token::Const
		,	Token::LRef
		,	Token::Noexcept
		>
	;
}
