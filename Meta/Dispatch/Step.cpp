export module Meta.Dispatch.Step;

import Meta.Dispatch.BlockedPath;
import Meta.Dispatch.Final;
import Meta.Dispatch.StepPair;
import Meta.Dispatch.Error;

import Meta.ID.Concept;
import Meta.ID.Alias;
import Meta.Lex.Match;
import Meta.Lex.FreeFunctionTokenizer;
import Meta.Lex.Function;
import Meta.Token.Index;
import Meta.Size;

import Std;

export namespace
	Meta::Dispatch
{
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
			...	t_npChar
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
		,	IndexToken<t_npChar...>
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
					t_nParsed
			>
		using
			NextID
		=	typename
			t_tID
		::	template
			Append
			<	t_nParsed
			>
		;

		template
			<	char
					t_nParsed
			>
		static auto constexpr
		(	GetNextStep
		)	()
		->	StepPair<PlainFunctionType>
		{	if	constexpr
				(	IsPathBlocked<QualifiedFunctionType, NextID<t_nParsed>>
				)
			{	return
				{};
			}
			else
			{	return
				{	&Step<QualifiedFunctionType, IndexToken<t_npChar...>, NextID<t_nParsed>>::Advance
				,	&Final<QualifiedFunctionType, NextID<t_nParsed>>::operator()
				};
			}
		}

		static auto constexpr
		(	Advance
		)	(	std::string_view
					i_sString
			,	USize
					i_nOffset
			)
		->	StepPair<PlainFunctionType>
		{
			auto const nChar = i_sString[i_nOffset];
			if	(	StepPair<PlainFunctionType>
						fParse
				;	(	...
					or	(	not
							IsPathBlocked<QualifiedFunctionType, NextID<t_npChar>>
						and	nChar == t_npChar
						?	(	(void)
								(	fParse
								=	GetNextStep<t_npChar>()
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
			{	i_sString
			,	i_nOffset
			};
		}
	};
}
