export module Meta.Dispatch:DispatchFor;

export import :BlockedPath;
export import :Error;

export import Meta.Arithmetic;
export import Meta.ID;

export import Std;

export namespace
	Meta
{
	template
		<	typename
		>
	struct
		DispatchFor
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		>
	struct
		DispatchFor
		<	t_tResult
				(	t_tpArgument
					...
				)
		>
	{
		using
			ResultType
		=	t_tResult
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
			-> StepPair
			;

			auto
			(	*m_fFinal
			)	(	t_tpArgument
					...
				)
			->	ResultType
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
			<	t_tResult(t_tpArgument...)
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
		)	(	t_tpArgument
				...	i_rpArgument
			)
		->	ResultType
		{
			auto constexpr
				vPath
			=	Dispatch::PathID
				<	t_tResult
						(	t_tpArgument
							...
						)
				,	t_tID
				>{}
			;
			if	constexpr
				(	requires
					{	Call
						(	vPath
						,	std::forward<t_tpArgument>
							(	i_rpArgument
							)
							...
						);
					}
				)
			{	return
				Call
				(	vPath
				,	std::forward<t_tpArgument>
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
			<	ProtoID
					t_tID
			>
		requires
			(	not
				IsPathBlocked<t_tID>
			)
		struct
			Step final
		{
			template
				<	char
						t_nParsed
				>
			static auto constexpr
			(	GetNextStep
			)	()
			->	StepPair
			{
				using
					tNextID
				=	ID_T
					<	Concatenate
						(	t_tID::String
						,	t_nParsed
						)
					>
				;
				if	constexpr
					(	IsPathBlocked<tNextID>
					)
				{	return
					{	&PathBlocked
					,	&Final<tNextID>
					};
				}
				else
				{	return
					{	&Step<tNextID>::Next
					,	&Final<tNextID>
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
			{	return
				[	&i_sString
				,	&i_nOffset
				]	<	char
						...	t_cpChar
					>(	IndexToken
						<	t_cpChar
							...
						>
					)
				{	if	(	StepPair
								fParse
						;	(	...
							or	(	i_sString[i_nOffset] == t_cpChar
								?	(	(void)
										(	fParse
										=	GetNextStep<t_cpChar>()
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
					Dispatch::UnkownCharError
					{	i_sString
					,	i_nOffset
					};

				}(	(Sequence<'~' + 1 - ' '> += Index<' '>).CastAll<char>()
				);
			}
		};

	public:
		static auto constexpr
		(	Dispatch
		)	(	std::string_view
					i_sToDispatch
			)
		->	auto
			(*)	(	t_tpArgument
					...
				)
			->	ResultType
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
				{	&Step<ID<>>::Next
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
