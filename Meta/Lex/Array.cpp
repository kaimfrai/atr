export module Meta.Lex.Array;

export import Meta.Integer;
export import Meta.Token.Type;
export import Meta.Token.Array;
export import Meta.Lex.CV;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tElement
		,	typename
				t_tExtent
		>
	struct
		Array
	:	t_tElement
	,	t_tExtent
	{
		static Token::TypeToken constexpr
			Type
		=	t_tElement::Type
		+	t_tExtent{}
		;

		using
			Entity
		=	TypeEntity<Type>
		;
	};

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCVArray
	=	CV
		<	Array
			<	t_tElement
			,	Token::Extent<t_nExtent>
			>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tElement
		,	typename
			...	t_tpQualifier
		,	USize
				t_nExtent
		>
	(	Array
	)	(	CV<t_tElement, t_tpQualifier...>
		,	Token::Extent<t_nExtent>
		)
	->	Array
		<	CV<t_tElement, t_tpQualifier...>
		,	Token::Extent<t_nExtent>
		>
	;

	template
		<	typename
				t_tElement
		,	typename
				t_tNestedExtent
		,	USize
				t_nExtent
		>
	(	Array
	)	(	Array<t_tElement, t_tNestedExtent>
		,	Token::Extent<t_nExtent>
		)
	->	Array
		<	Array<t_tElement, t_tNestedExtent>
		,	Token::Extent<t_nExtent>
		>
	;
}
