export module Meta.Lex.CV;

export import Meta.Token.Type;
export import Meta.Token.CV;
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
		(	::std::is_fundamental_v<t_tFundamental>
		or	::std::is_class_v<t_tFundamental>
		or	::std::is_union_v<t_tFundamental>
		or	::std::is_enum_v<t_tFundamental>
		,	"Tokenize ended prematurely!"
		);
	};

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpCV
		>
	struct
		CV
	:	t_tEntity
	,	t_tpCV
		...
	{};

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	CV<t_tEntity>
		)
	->	CV<t_tEntity>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	CV<t_tEntity>
		,	Token::Const
		)
	->	CV
		<	t_tEntity
		,	Token::Const
		>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	CV<t_tEntity>
		,	Token::Volatile
		)
	->	CV
		<	t_tEntity
		,	Token::Volatile
		>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	CV<t_tEntity>
		,	Token::Const
		,	Token::Volatile
		)
	->	CV
		<	t_tEntity
		,	Token::Const
		,	Token::Volatile
		>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	t_tEntity
		)
	->	CV<t_tEntity>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	t_tEntity
		,	Token::Const
		)
	->	CV
		<	t_tEntity
		,	Token::Const
		>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	t_tEntity
		,	Token::Volatile
		)
	->	CV
		<	t_tEntity
		,	Token::Volatile
		>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	t_tEntity
		,	Token::Const
		,	Token::Volatile
		)
	->	CV
		<	t_tEntity
		,	Token::Const
		,	Token::Volatile
		>
	;
}
