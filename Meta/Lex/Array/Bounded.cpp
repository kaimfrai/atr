export module Meta.Lex.Array.Bounded;

import Meta.Lex.Array;
import Meta.Token.Type;
import Meta.Token.Transform.Identity;
import Meta.Token.Extent;
import Meta.Size;

export namespace
	Meta::Lex::Array
{
	template
		<	typename
			...
		>
	struct
		Bounded
	;

	template
		<>
	struct
		Bounded<>
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
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement
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
			);
		}
	};
}
