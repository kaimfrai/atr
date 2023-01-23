export module Meta.Lex.Base;

import Meta.Token.Type;

import Std;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tFundamental
		>
	struct
		Base
	{
		static_assert
		(	(	::std::is_fundamental_v<t_tFundamental>
			or	::std::is_class_v<t_tFundamental>
			or	::std::is_union_v<t_tFundamental>
			or	::std::is_enum_v<t_tFundamental>
			)
		and	not ::std::is_const_v<t_tFundamental>
		and	not ::std::is_volatile_v<t_tFundamental>
		,	"Tokenize ended prematurely!"
		);

		static Token::TypeToken<t_tFundamental> constexpr
			Type
		{};

		using
			Entity
		=	t_tFundamental
		;
	};
}
