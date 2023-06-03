export module Meta.Lex.Array.UnboundedVolatile;

import Meta.Lex.Array.Unbounded;
import Meta.Lex.Array;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Extent;
import Meta.Token.Volatile;

export namespace
	Meta::Lex::Array
{
	template
		<>
	struct
		Unbounded
		<	Token::Volatile
		>
	{
		template
			<	typename
					t_tElement
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement volatile
						[]
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
			,	Extent<0uz>
			,	Volatile
			);
		}
	};

	using
		UnboundedVolatile
	=	Unbounded
		<	Token::Volatile
		>
	;
}
