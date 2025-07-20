export module Meta.Dispatch.Step;

import Meta.Dispatch.BlockedPath;
import Meta.Dispatch.Final;
import Meta.Dispatch.StepPair;
import Meta.Dispatch.Error;

import Meta.ID;
import Meta.Lex.Match;
import Meta.Lex.FreeFunctionTokenizer;
import Meta.Lex.Function;
import Meta.String.Literal;
import Meta.Token.Index;
import Meta.Size;

import std;

using ::Meta::String::Literal;

export namespace
	Meta::Dispatch
{
	template
		<	char
				t_vChar
		>
	[[nodiscard]]
	auto constexpr inline
	(	Append
	)	(	ProtoID auto
				i_vID
		)
		noexcept
	{
		auto static constexpr
			vLength
		=	sizeof
			(	i_vID
				.	String
			)
		;
		return
			ID
			<	[]{
					Literal<vLength>
						vLiteral
					{	decltype(i_vID)
						::	String
					};
					vLiteral
					.	Buffer
						[	vLength
						-	1uz
						]
					=	t_vChar
					;
					return
						vLiteral
					;
				}()
			>
			{}
		;
	};

	template
		<	typename
				t_tFunction
		,	typename
				t_tCharacterSet
		,	ProtoID
				t_tID
		>
	struct
		Step final
	:	Step
		<	Match_To
			<	t_tFunction
			,	Lex::FreeFunctionTokenizer
			>
		,	t_tCharacterSet
		,	t_tID
		>
	{};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		,	typename
			...	t_tpQualifier
		,	char
			...	t_vpChar
		,	ProtoID
				t_tID
		>
	struct
		Step
		<	Lex::MatchFunction
			<	Lex::MatchSignature
				<	t_tResult
				,	t_tpArgument
					...
				>
			,	t_tpQualifier
				...
			>
		,	IndexToken<t_vpChar...>
		,	t_tID
		>
	{
		using
			PlainFunctionType
		=	typename
			Lex::MatchFunction
			<	Lex::MatchSignature
				<	t_tResult
				,	t_tpArgument
					...
				>
			//	Cannot use qualifiers like noexcept as the dispatching may throw exceptions
			//	However, the dispatch paths may differ depending on the qualifiers.
			>
		::	Entity
		;

		using
			QualifiedFunctionType
		=	typename
			Lex::MatchFunction
			<	Lex::MatchSignature
				<	t_tResult
				,	t_tpArgument
					...
				>
			,	t_tpQualifier
				...
			>
		::	Entity
		;

		static_assert
		(	not
			IsPathBlocked<QualifiedFunctionType, t_tID>
		,	"Template instantiation of blocked path may lead to infinite recursion!"
		);

		template
			<	char
					t_vParsed
			>
		using
			NextID
		=	decltype
			(	Append
				<	t_vParsed
				>(	t_tID
					{}
				)
			)
		;

		template
			<	char
					t_vParsed
			>
		auto static constexpr inline
		(	GetNextStep
		)	()
		->	StepPair<PlainFunctionType>
		{	if	constexpr
				(	IsPathBlocked<QualifiedFunctionType, NextID<t_vParsed>>
				)
			{	return
				{};
			}
			else
			{	return
				{	&Step<QualifiedFunctionType, IndexToken<t_vpChar...>, NextID<t_vParsed>>::Advance
				,	&Final<QualifiedFunctionType, NextID<t_vParsed>>::operator()
				};
			}
		}

		auto static constexpr inline
		(	Advance
		)	(	std::string_view
					i_rString
			,	USize
					i_vOffset
			)
		->	StepPair<PlainFunctionType>
		{
			auto const vChar = i_rString[i_vOffset];
			if	(	StepPair<PlainFunctionType>
						fParse
				;	(	...
					or	(	not
							IsPathBlocked<QualifiedFunctionType, NextID<t_vpChar>>
						and	vChar == t_vpChar
						?	(	(void)
								(	fParse
								=	GetNextStep<t_vpChar>()
								)
							,	true
							)
						:	false
						)
					)
				)
			{	return
					fParse
				;
			}
			throw
			PathBlockedError
			{	i_rString
			,	i_vOffset
			};
		}
	};
}
