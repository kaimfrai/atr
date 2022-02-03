export module ATR.Body;

export import ATR.Dependency;
export import ATR.ID;
export import ATR.StringLiteral;
export import Meta.TypeInfo;

export namespace
	ATR
{
	/// the body of a function. needs to be defined separately.
	/// the requirements are that the first template argument is the FuncID.
	/// other template arguments will be deduced.
	/// does not need to be fully specialized.
	template
		<	DependencyInstance
				t_tFuncID
		,	DependencyInstance
			...	t_tpDependency
		>
	auto inline
		Body
		(	t_tFuncID
		,	t_tpDependency
			...
		)
	noexcept
	{	static_assert
		(	Meta::ProtoNone
			<	t_tFuncID
				(	t_tpDependency
					...
				)
			>
		,	"ATR::Body was used but not defined."
		);
	}

	/// whether a call to Body is noexcept
	template
		<	DependencyInstance
				t_tFuncID
		,	DependencyInstance
			...	t_tpDependency
		>
	bool constexpr
		BodyNoexcept
	=	noexcept
		(	Body
			(	::std::declval<t_tFuncID>()
			,	::std::declval<t_tpDependency>()
				...
			)
		)
	;

	/// the type returned by a call to Body
	template
		<	DependencyInstance
				t_tFuncID
		,	typename
			...	t_tpDependency
		>
	using
		BodyReturnType
	=	decltype
		(	Body
			(	::std::declval<t_tFuncID>()
			,	::std::declval<t_tpDependency>()
				...
			)
		)
	;
}
