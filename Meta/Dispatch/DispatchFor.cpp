export module Meta.Dispatch.DispatchFor;

import Meta.Dispatch.BlockedPath;
import Meta.Dispatch.Error;
import Meta.Dispatch.CharacterSet;
import Meta.Dispatch.Final;
import Meta.Dispatch.StepPair;
import Meta.Dispatch.Step;

import Meta.Lex.Match;
import Meta.Lex.FreeFunctionTokenizer;
import Meta.Lex.Function;
import Meta.Size;
import Meta.String.ID;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tFunction
		>
	struct
		DispatchFor
	:	DispatchFor
		<	Match_To
			<	t_tFunction
			,	Lex::FreeFunctionTokenizer
			>
		>
	{};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		,	typename
			...	t_tpQualifier
		>
	struct
		DispatchFor
		<	Lex::MatchFunction
			<	Lex::MatchSignature
				<	t_tResult
				,	t_tpArgument
					...
				>
			,	t_tpQualifier
				...
			>
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

		template
			<	typename
					t_tCharacterSet
				=	Dispatch::BasicCharSet
			>
		auto static constexpr inline
		(	Dispatch
		)	(	std::string_view
					i_rToDispatch
			,	t_tCharacterSet
				=	t_tCharacterSet{}
			)
		->	PlainFunctionType*
		{	if	constexpr
				(	Dispatch::IsPathBlocked
					<	QualifiedFunctionType
					,	ID<>
					>
				)
			{	return
					&Dispatch::Final<QualifiedFunctionType, ID<>>::operator()
				;
			}
			else
			{	Dispatch::StepPair<PlainFunctionType>
					vResult
				{	&Dispatch::Step<QualifiedFunctionType, t_tCharacterSet, ID<>>::Advance
				,	&Dispatch::Final<QualifiedFunctionType, ID<>>::operator()
				};
				for	(	auto const
						&	vChar
					:	std::span{i_rToDispatch}
					)
				{
					vResult
					(	i_rToDispatch
					,	static_cast<USize>
						(	&vChar
						-	i_rToDispatch.begin()
						)
					);
				}
				return
					vResult.m_fFinal
				;
			}
		}
	};
}
