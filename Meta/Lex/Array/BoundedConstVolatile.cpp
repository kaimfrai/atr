export module Meta.Lex.Array.BoundedConstVolatile;

import Meta.Lex.Array.Bounded;
import Meta.Lex.Array;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Extent;
import Meta.Token.Const;
import Meta.Token.Volatile;
import Meta.Size;

export namespace
	Meta::Lex::Array
{
	template
		<>
	struct
		Bounded
		<	Token::Const
		,	Token::Volatile
		>
	{
		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const volatile
						[	t_nExtent
						]
				>
			,	t_tNestedTokenizer
					i_fTokenizer
				=	{}
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	i_fTokenizer
				(	Type<t_tElement>
				)
			,	Extent<t_nExtent>
			,	Const
			,	Volatile
			);
		}
	};

	using
		BoundedConstVolatile
	=	Bounded
		<	Token::Const
		,	Token::Volatile
		>
	;
}
