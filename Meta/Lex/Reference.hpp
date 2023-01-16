export module Meta.Lex:Reference;

export import :CV;
export import :Array;
export import :Function;

import Meta.Token.Reference;
import Meta.Token.Type;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tEntity
		,	typename
				t_tReference
		>
	struct
		Ref
	:	t_tEntity
	,	t_tReference
	{
		static Token::TypeToken constexpr
			Type
		=	t_tEntity::Type
		+	t_tReference{}
		;

		using
			Entity
		=	TypeEntity<Type>
		;

		constexpr
		(	operator EraseTypeToken
		)	()	const
			noexcept
		{	return Type;	}
	};

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	(	Ref
	)	(	CV<t_tEntity, t_tpQualifier...>
		,	Token::LRef
		)
	->	Ref
		<	CV<t_tEntity, t_tpQualifier...>
		,	Token::LRef
		>
	;

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	(	Ref
	)	(	CV<t_tEntity, t_tpQualifier...>
		,	Token::RRef
		)
	->	Ref
		<	CV<t_tEntity, t_tpQualifier...>
		,	Token::RRef
		>
	;

	template
		<	typename
				t_tEntity
		,	typename
				t_tExtent
		>
	(	Ref
	)	(	Array<t_tEntity, t_tExtent>
		,	Token::LRef
		)
	->	Ref
		<	Array<t_tEntity, t_tExtent>
		,	Token::LRef
		>
	;

	template
		<	typename
				t_tEntity
		,	typename
				t_tExtent
		>
	(	Ref
	)	(	Array<t_tEntity, t_tExtent>
		,	Token::RRef
		)
	->	Ref
		<	Array<t_tEntity, t_tExtent>
		,	Token::RRef
		>
	;

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	(	Ref
	)	(	Func<t_tSignature, t_tpQualifier...>
		,	Token::LRef
		)
	->	Ref
		<	Func<t_tSignature, t_tpQualifier...>
		,	Token::LRef
		>
	;

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	(	Ref
	)	(	Func<t_tSignature, t_tpQualifier...>
		,	Token::RRef
		)
	->	Ref
		<	Func<t_tSignature, t_tpQualifier...>
		,	Token::RRef
		>
	;

	template
		<	typename
				t_tEntity
		>
	using
		MatchLRef
	=	Ref<t_tEntity, Token::LRef>
	;

	template
		<	typename
				t_tEntity
		>
	using
		MatchRRef
	=	Ref<t_tEntity, Token::RRef>
	;
}
