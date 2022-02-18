export module Meta.Lex.Pointer;

export import Meta.Token.Type;
export import Meta.Token.Pointer;
export import Meta.Lex.CV;
export import Meta.Lex.Array;
export import Meta.Lex.Function;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tEntity
		>
	struct
		Ptr
	:	t_tEntity
	{
		static Token::TypeToken constexpr
			Type
		=	t_tEntity::Type
		+	Pointer
		;

		using
			Entity
		=	TypeEntity<Type>
		;
	};

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	(	Ptr
	)	(	CV<t_tEntity, t_tpQualifier...>
		)
	->	Ptr
		<	CV<t_tEntity, t_tpQualifier...>
		>
	;

	template
		<	typename
				t_tEntity
		,	typename
				t_tExtent
		>
	(	Ptr
	)	(	Array<t_tEntity, t_tExtent>
		)
	->	Ptr
		<	Array<t_tEntity, t_tExtent>
		>
	;

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	(	Ptr
	)	(	Func<t_tSignature, t_tpQualifier...>
		)
	->	Ptr
		<	Func<t_tSignature, t_tpQualifier...>
		>
	;
}
