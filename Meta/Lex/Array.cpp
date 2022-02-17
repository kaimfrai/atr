export module Meta.Lex.Array;

export import Meta.Integer;
export import Meta.Type;
export import Meta.Type.Array;
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
		Array final
	{
		constexpr
		(	Array
		)	()
		=	default;

		constexpr
		(	Array
		)	(	t_tElement
			,	t_tExtent
			)
		{}
	};

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

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tElement[t_nExtent]
			>
		)
	->	decltype(auto)
	{	return
		Array
		{	Tokenize(Type<t_tElement>)
		,	Extent<t_nExtent>
		};
	}

	template
		<	typename
				t_tElement
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tElement[]
			>
		)
	->	decltype(auto)
	{	return
		Array
		{	Tokenize(Type<t_tElement>)
		,	Extent<0uz>
		};
	}
}
