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

	///	resolve direct base class ambiguity
	template
		<	typename
				t_tQualifier
		,	typename
				t_tEntity
		>
	struct
		Qualifier
	:	t_tQualifier
	{};

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	struct
		CV
	:	t_tEntity
	,	Qualifier<t_tpQualifier, t_tEntity>
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
