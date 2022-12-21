export module Meta.Lex:Function;

export import Meta.Token;
import Meta.Size;

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
			...	t_tpParam
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
				t_tResult
		,	typename
			...	t_tpParam
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
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParam
		,	typename
			...	t_tpEllipsis
		>
	struct
		Sig
		<	t_tResult
		,	Param<t_tpParam...>
		,	t_tpEllipsis
			...
		>
	:	Result<t_tResult, t_tpParam..., t_tpEllipsis...>
	,	Param<t_tpParam...>
	,	FuncQualifier<t_tpEllipsis, t_tResult, t_tpParam...>
		...
	{
		static Token::TypeToken constexpr
			Type
		=(	Meta::Type
			<	typename t_tResult::Entity
				(	typename t_tpParam::Entity
					...
				)
			>
		+	...
		+	t_tpEllipsis
			{}
		);

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
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchSignature
	=	Sig
		<	t_tResult
		,	Param
			<	t_tpParameter
				...
			>
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchEllipsisSignature
	=	Sig
		<	t_tResult
		,	Param
			<	t_tpParameter
				...
			>
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
	{
		static Token::TypeToken constexpr
			Type
		=(	t_tSig::Type
		+	...
		+	t_tpQualifier
			{}
		);

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

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeFunction
	=	Func
		<	Sig
			<	t_tResult
			,	Param
				<	t_tpParameter
					...
				>
			>
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeEllipsisFunction
	=	Func
		<	Sig
			<	t_tResult
			,	Param
				<	t_tpParameter
					...
				>
			,	Token::Ellipsis
			>
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeNoexceptFunction
	=	Func
		<	Sig
			<	t_tResult
			,	Param
				<	t_tpParameter
					...
				>
			>
		,	Token::Noexcept
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeNoexceptEllipsisFunction
	=	Func
		<	Sig
			<	t_tResult
			,	Param
				<	t_tpParameter
					...
				>
			,	Token::Ellipsis
			>
		,	Token::Noexcept
		>
	;
}
