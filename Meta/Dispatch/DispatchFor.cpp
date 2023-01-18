export module Meta.Dispatch.DispatchFor;

export import Meta.Dispatch.BlockedPath;
export import Meta.Dispatch.Error;
export import Meta.Dispatch.CharacterSet;
export import Meta.Dispatch.Final;
export import Meta.Dispatch.StepPair;
export import Meta.Dispatch.Step;

import Meta.Lex.Tokenizer;
import Meta.Size;
import Meta.ID.Template;

export import Std;

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
		<	TokenizeEntity
			<	t_tFunction
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
		<	Lex::Func
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
			Lex::Func
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
			Lex::Func
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
		static auto constexpr
		(	Dispatch
		)	(	std::string_view
					i_sToDispatch
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
					:	std::span{i_sToDispatch}
					)
				{
					vResult
					(	i_sToDispatch
					,	static_cast<USize>
						(	&vChar
						-	i_sToDispatch.begin()
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
