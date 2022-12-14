export module Meta.Lex:Pointer;

export import :CV;
export import :Array;
export import :Function;

export import Meta.Token;

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
	using
		MatchCVPointer
	=	CV
		<	Ptr<t_tEntity>
		,	t_tpQualifier
			...
		>
	;

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
