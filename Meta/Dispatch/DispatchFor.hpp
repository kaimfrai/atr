export module Meta.Dispatch:DispatchFor;

export import :BlockedPath;
export import :Error;

export import Meta.Arithmetic;
export import Meta.ID;
export import Meta.Lex;

export import Std;

export namespace
	Meta
{
	using
		PrintableCharSet
	=	decltype
		(	(Sequence<'~' + 1 - ' '> += Index<' '>)
		.	CastAll<char>()
		)
	;

	using
		LowerCaseCharSet
	=	decltype
		(	(Sequence<'z' + 1 - 'a'> += Index<'a'>)
		.	CastAll<char>()
		)
	;

	using
		UpperCaseCharSet
	=	decltype
		(	(Sequence<'Z' + 1 - 'A'> += Index<'A'>)
		.	CastAll<char>()
		)
	;

	using
		DecimalCharSet
	=	decltype
		(	(Sequence<'9' + 1 - '0'> += Index<'0'>)
		.	CastAll<char>()
		)
	;

	using
		BasicCharSet
	=	decltype
		(	DecimalCharSet{}
		|	UpperCaseCharSet{}
		|	Index<'_'>
		|	LowerCaseCharSet{}
		)
	;

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
			ResultType
		=	typename
			t_tResult
		::	Entity
		;

		using
			FunctionType
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

	private:
		struct
			StepPair final
		{
			auto
			(	*m_fNext
			)	(	std::string_view
				,	USize
				)
			->	StepPair
			;

			FunctionType
				*m_fFinal
			;

			auto constexpr
			(	operator()
			)	(	std::string_view
						i_sString
				,	USize
						i_nOffset
				)
			{	(	*this
				=	m_fNext
					(	i_sString
					,	i_nOffset
					)
				);
			}
		};

		[[noreturn]]
		static auto constexpr
		(	PathBlocked
		)	(	std::string_view
					i_sString
			,	USize
					i_nOffset
			)
		->	StepPair
		{	throw
			Dispatch::PathBlockedError
			{	i_sString
			,	i_nOffset
			};
		}

		template
			<	ProtoID
					t_tID
			>
		static bool constexpr
			IsPathBlocked
		=	Dispatch::IsPathBlocked
			<	FunctionType
			,	t_tID
			>
		;

	public:
		template
			<	ProtoID
					t_tID
			>
		static auto constexpr
		(	Final
		)	(	typename t_tpArgument::Entity
				...	i_rpArgument
			)
		->	ResultType
		{
			auto constexpr
				vPath
			=	Dispatch::PathID
				<	FunctionType
				,	t_tID
				>{}
			;
			if	constexpr
				(	requires
					{	Call
						(	vPath
						,	std::forward<typename t_tpArgument::Entity>
							(	i_rpArgument
							)
							...
						);
					}
				)
			{	return
				Call
				(	vPath
				,	std::forward<typename t_tpArgument::Entity>
					(	i_rpArgument
					)
					...
				);
			}
			else
			{	throw
				Dispatch::NoDefinitionError
				{	t_tID::RawArray
				};
			}
		}

	private:
		template
			<	typename
					t_tCharacterSet
			,	ProtoID
					t_tID
			>
		requires
			(	not
				IsPathBlocked<t_tID>
			)
		struct
			Step
		;

		template
			<	char
				...	t_npChar
			,	ProtoID
					t_tID
			>
		struct
			Step
			<	IndexToken<t_npChar...>
			,	t_tID
			>	final
		{
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
			->	StepPair
			{	if	constexpr
					(	IsPathBlocked<NextID<t_nParsed>>
					)
				{	return
					{};
				}
				else
				{	return
					{	&Step<IndexToken<t_npChar...>, NextID<t_nParsed>>::Next
					,	&Final<NextID<t_nParsed>>
					};
				}
			}

			static auto constexpr
			(	Next
			)	(	std::string_view
						i_sString
				,	USize
						i_nOffset
				)
			->	StepPair
			{
				auto const nChar = i_sString[i_nOffset];
				if	(	StepPair
							fParse
					;	(	...
						or	(	not
								IsPathBlocked<NextID<t_npChar>>
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
				Dispatch::PathBlockedError
				{	i_sString
				,	i_nOffset
				};
			}
		};

	public:
		template
			<	typename
					t_tCharacterSet
				=	BasicCharSet
			>
		static auto constexpr
		(	Dispatch
		)	(	std::string_view
					i_sToDispatch
			,	t_tCharacterSet
				=	t_tCharacterSet{}
			)
		->	FunctionType*
		{	if	constexpr
				(	IsPathBlocked<ID<>>
				)
			{	return
					&Final<ID<>>
				;
			}
			else
			{	StepPair
					vResult
				{	&Step<t_tCharacterSet, ID<>>::Next
				,	&Final<ID<>>
				};
				for	(	auto const
						&	vChar
					:	i_sToDispatch
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
