export module Meta.Lex.Function;

export import Meta.Token.Type;
export import Meta.Token.Function;
export import Meta.Token.Sequence;

export namespace
	Meta::Lex
{
	///	resolve direct base class ambiguity
	template
		<	USize
				t_nIndex
		,	typename
				t_tParam
		,	typename
			...	t_tpDisambiguateParam
		>
	struct
		IndexedParam
	:	t_tParam
	{};

	template
		<	typename
			...	t_tpIndexedParam
		>
	struct
		ParamList
	:	t_tpIndexedParam
		...
	{};

}

template
	<	typename
		...	t_tpParam
	>
auto constexpr
(	MakeParamList
)	(	t_tpParam
		...	i_vParam
	)
->	decltype(auto)
{	return
	[	...
		vpParam
	=	i_vParam
	]	<	::Meta::USize
			...	t_npIndex
		>(	::Meta::IndexToken<t_npIndex...>
		)
	->	::Meta::Lex::ParamList
		<	::Meta::Lex::IndexedParam
			<	t_npIndex
			,	t_tpParam
			,	t_tpParam
				...
			>
			...
		>
	{	return
		{	vpParam
			...
		};
	}(	Meta::Sequence<sizeof...(t_tpParam)>
	);
}

template
	<	typename
		...	t_tpParam
	>
using
	DeduceParamList
=	decltype
	(	MakeParamList
		(	t_tpParam
			{}
			...
		)
	)
;

export namespace
	Meta::Lex
{
	template
		<	typename
			...	t_tpParam
		>
	struct
		Param
	:	::DeduceParamList
		<	t_tpParam
			...
		>
	{};

	template
		<	typename
			...	t_tpParam
		>
	(	Param
	)	(	t_tpParam
			...
		)
	->	Param
		<	t_tpParam
			...
		>
	;

	///	resolve direct base class ambiguity
	template
		<	typename
				t_tResult
		,	typename
				t_tParam
		>
	struct
		Result
	:	t_tResult
	{};


	///	resolve direct base class ambiguity
	template
		<	typename
				t_tQualifier
		,	typename
				t_tSig
		>
	struct
		FuncQualifier
	:	t_tQualifier
	{};

	template
		<	typename
				t_tResult
		,	typename
				t_tParam
		,	typename
			...	t_tpEllipsis
		>
	struct
		Sig
	:	Result<t_tResult, t_tParam>
	,	t_tParam
	,	FuncQualifier<t_tpEllipsis, t_tParam>
		...
	{
		//	TODO incomplete
		static Token::TypeToken constexpr
			Type
		=	Meta::Type<t_tResult(t_tParam)>
		;

		using
			Entity
		=	TypeEntity<Type>
		;
	};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParam
		>
	(	Sig
	)	(	t_tResult
		,	Param<t_tpParam...>
		)
	->	Sig
		<	t_tResult
		,	Param<t_tpParam...>
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParam
		>
	(	Sig
	)	(	t_tResult
		,	Param<t_tpParam...>
		,	Token::Ellipsis
		)
	->	Sig
		<	t_tResult
		,	Param<t_tpParam...>
		,	Token::Ellipsis
		>
	;

	template
		<	typename
				t_tSig
		,	typename
			...	t_tpQualifier
		>
	struct
		Func
	:	t_tSig
	,	FuncQualifier<t_tpQualifier, t_tSig>
		...
	{};

	template
		<	typename
				t_tResult
		,	typename
				t_tParam
		,	typename
			...	t_tpQualifier
		>
	(	Func
	)	(	Sig<t_tResult, t_tParam>
		,	t_tpQualifier
			...
		)
	->	Func
		<	Sig<t_tResult, t_tParam>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tResult
		,	typename
				t_tParam
		,	typename
			...	t_tpQualifier
		>
	(	Func
	)	(	Sig<t_tResult, t_tParam, Token::Ellipsis>
		,	t_tpQualifier
			...
		)
	->	Func
		<	Sig<t_tResult, t_tParam, Token::Ellipsis>
		,	t_tpQualifier
			...
		>
	;
}
