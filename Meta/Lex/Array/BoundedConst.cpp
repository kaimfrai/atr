export module Meta.Lex.Array.BoundedConst;

import Meta.Lex.Array.Bounded;
import Meta.Lex.Array;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Extent;
import Meta.Token.Const;
import Meta.Size;

export namespace
	Meta::Lex::Array
{
	template
		<>
	struct
		Bounded
		<	Token::Const
		>
	{
		template
			<	typename
					t_tElement
			,	USize
					t_vExtent
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	TypeToken
				<	t_tElement const
						[	t_vExtent
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
			,	Extent<t_vExtent>
			,	Const
			);
		}
	};

	using
		BoundedConst
	=	Bounded
		<	Token::Const
		>
	;
}
