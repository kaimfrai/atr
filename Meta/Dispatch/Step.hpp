export module Meta.Dispatch:Step;

export import :BlockedPath;
export import :Final;
export import :StepPair;

export import Meta.ID;
export import Meta.Token;
export import Meta.Lex;
import Meta.Size;

namespace
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
		<	TokenizeEntity
			<	t_tFunction
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
		<	Lex::Func
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
		=	ID_T
			<	Concatenate
				(	t_tID::String
				,	t_nParsed
				)
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
