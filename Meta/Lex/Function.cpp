export module Meta.Lex.Function;

export import Meta.Token.Type;
export import Meta.Token.Function;

export namespace
	Meta::Lex
{
	template
		<	typename
			...	t_tpParameter
		>
	struct
		Parameter
	:	t_tpParameter
		...
	{};

	template
		<	typename
			...	t_tpParameter
		>
	(	Parameter
	)	(	t_tpParameter
			...
		)
	->	Parameter
		<	t_tpParameter
			...
		>
	;

	template
		<	typename
		>
	struct
		Signature
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Signature
		<	t_tResult(t_tpParameter...)
		>
	:	t_tResult
	,	Parameter
		<	t_tpParameter
			...
		>
	{};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Signature
		<	t_tResult(t_tpParameter..., ...)
		>
	:	t_tResult
	,	Parameter
		<	t_tpParameter
			...
		>
	,	Token::Ellipsis
	{};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	(	Signature
	)	(	t_tResult
		,	Parameter<t_tpParameter...>
		)
	->	Signature
		<	t_tResult(t_tpParameter...)
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	(	Signature
	)	(	t_tResult
		,	Parameter<t_tpParameter...>
		,	Token::Ellipsis
		)
	->	Signature
		<	t_tResult(t_tpParameter..., ...)
		>
	;

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	struct
		Func
	:	t_tSignature
	,	t_tpQualifier
		...
	{};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		,	typename
			...	t_tpQualifier
		>
	(	Func
	)	(	Signature<t_tResult(t_tpParameter...)>
		,	t_tpQualifier
			...
		)
	->	Func
		<	Signature<t_tResult(t_tpParameter...)>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		,	typename
			...	t_tpQualifier
		>
	(	Func
	)	(	Signature<t_tResult(t_tpParameter..., ...)>
		,	t_tpQualifier
			...
		)
	->	Func
		<	Signature<t_tResult(t_tpParameter..., ...)>
		,	t_tpQualifier
			...
		>
	;
}
