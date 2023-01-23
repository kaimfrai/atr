export module Meta.Lex.Function;

import Meta.Token.Type;
import Meta.Token.Ellipsis;
import Meta.Token.Noexcept;

export namespace
	Meta::Lex
{
	template
		<	typename
			...	t_tpParam
		>
	struct
		Param
	{
		template
			<	typename
					t_tResult
			>
		static Token::TypeToken constexpr
			Type
		=	::Meta::Type
			<	auto
					(	typename t_tpParam::Entity
						...
					)
				->	typename t_tResult::Entity
			>
		;
	};

	template
		<	typename
			...	t_tpParam
		>
	[[nodiscard]]
	auto constexpr
	(	MakeParam
	)	(	t_tpParam
			...
		)
		noexcept
	->	Param
		<	t_tpParam
			...
		>
	{	return {};	}

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
	{
		static_assert
		(	(	(	sizeof...(t_tpEllipsis)
				<=	1uz
				)
			and	...
			and	(	t_tpEllipsis{}
				==	Ellipsis
				)
			)
		,	"Invalid Ellipsis token sequence!"
		);

		static Token::TypeToken constexpr
			Type
		=(	t_tParam::template Type<t_tResult>
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
				t_tParam
		,	typename
			...	t_tpEllipsis
		>
	[[nodiscard]]
	auto constexpr
	(	MakeSig
	)	(	t_tResult
		,	t_tParam
		,	t_tpEllipsis
			...
		)
		noexcept
	->	Sig
		<	t_tResult
		,	t_tParam
		,	t_tpEllipsis
			...
		>
	{	return {};	}


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

		[[nodiscard]]
		explicit(false) constexpr
		(	operator TypeID
		)	()	const
			noexcept
		{	return Type;	}
	};

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	[[nodiscard]]
	auto constexpr
	(	MakeFunc
	)	(	t_tSignature
		,	t_tpQualifier
			...
		)
		noexcept
	->	Func
		<	t_tSignature
		,	t_tpQualifier
			...
		>
	{	return {};	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeFunction
	=	Func
		<	MatchSignature
			<	t_tResult
			,	t_tpParameter
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
		MatchFreeEllipsisFunction
	=	Func
		<	MatchEllipsisSignature
			<	t_tResult
			,	t_tpParameter
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
		MatchFreeNoexceptFunction
	=	Func
		<	MatchSignature
			<	t_tResult
			,	t_tpParameter
				...
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
		<	MatchEllipsisSignature
			<	t_tResult
			,	t_tpParameter
				...
			>
		,	Token::Noexcept
		>
	;
}
