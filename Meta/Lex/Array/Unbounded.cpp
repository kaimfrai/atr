export module Meta.Lex.Array.Unbounded;

import Meta.Lex.Array;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Extent;

export namespace
	Meta::Lex::Array
{
	template
		<	typename
			...
		>
	struct
		Unbounded
	;

	template
		<>
	struct
		Unbounded<>
	{
		template
			<	typename
					t_tElement
			,	typename
					t_tNestedTokenizer
				=	Token::Transform::Identity
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	TypeToken
				<	t_tElement
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
			);
		}
	};
}
