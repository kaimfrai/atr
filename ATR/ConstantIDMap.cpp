export module ATR.ConstantIDMap;

export import ATR.DependencyIDMap;
export import ATR.Dependency;

export import ATR.ID;
export import ATR.StringLiteral;

export namespace
	ATR
{
	/// creates a DependencyItem from a FuncIDMap
	template
		<	FuncIDMap
				t_vFuncIDMap
		>
	auto constexpr
	(	MakeStaticDependencyItem
	)	()
	->	decltype(auto)
	{
		using
			TargetFuncID
		=	ID_T
			<	t_vFuncIDMap
			.	TargetID
			>
		;

		auto constexpr
			OriginFuncID
		=	ID_V
			<	t_vFuncIDMap
			.	OriginID
			>
		;

		return
		[]	<	typename
				...	t_tpArgument
			>	(	Meta::TypePack<t_tpArgument...>
				)
		{	return
			Meta::MakeKeyItem<TargetFuncID>
			(	MapAddress
				(	OriginFuncID
				,	Argument<t_tpArgument>{}()
					...
				)
			);
		}(	t_vFuncIDMap.ArgumentPack
		);
	}

	template
		<	StringLiteral
				t_vFuncID
		,	auto
			...	t_vpIDMap
		>
	auto constexpr inline
		StaticDependencyInfo
	=	MakeArgumentDependency
		(	Meta::Type<ID_T<t_vFuncID>>
		,	MakeStaticDependencyItem
			<	t_vpIDMap
			>()
			...
		)
	;
}
