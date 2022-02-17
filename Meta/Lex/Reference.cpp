export module Meta.Lex.Reference;

export import Meta.Type;
export import Meta.Token.Reference;
export import Meta.Lex.CV;
export import Meta.Lex.Array;
export import Meta.Lex.Function;

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
		Ref final
	{
		constexpr
		(	Ref
		)	()
		=	default;

		explicit constexpr
		(	Ref
		)	(	t_tEntity
			,	t_tReference
			)
		{}
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
	auto constexpr
	(	Tokenize
	)	(	TypeToken<t_tEntity&>
		)
	->	decltype(auto)
	{	return
		Ref
		{	Tokenize(Type<t_tEntity>)
		,	LRef
		};
	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken<t_tEntity&&>
		)
	->	decltype(auto)
	{	return
		Ref
		{	Tokenize(Type<t_tEntity>)
		,	RRef
		};
	}
}
