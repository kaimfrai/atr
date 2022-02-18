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
	{};

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
