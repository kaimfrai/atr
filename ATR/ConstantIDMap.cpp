export module ATR.ConstantIDMap;

export import ATR.DependencyIDMap;
export import ATR.Dependency;

export import ATR.ID;
export import ATR.StringLiteral;

export namespace
	ATR
{
	template
		<	typename
				t_tConstant
		,	StringLiteralInstance
				t_tTargetIdentifier
		>
	struct
		ConstantIDMap
	{
		t_tConstant
			Constant
		;

		t_tTargetIdentifier
			TargetID
		;

		explicit constexpr
		(	ConstantIDMap
		)	(	t_tConstant const
				&	i_rConstant
			,	t_tTargetIdentifier const
				&	i_rTargetID
			)
		:	Constant
			{	i_rConstant
			}
		,	TargetID
			{	i_rTargetID
			}
		{}
	};

	/// intended for CRTP
	template
		<	typename
				t_tConstant
		>
	struct
		ConstantOrigin
	{
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	ConstantOrigin const
				&	i_rConstant
			,	PseudoStringLiteral auto
				&&	i_rTargetID
			)
		{
			return
			ConstantIDMap
			{	static_cast
				<	t_tConstant	const
					&
				>(	i_rConstant
				)
			,	StringLiteral
				{	i_rTargetID
				}
			};
		}
	};

	/// creates a DependencyItem from a ConstantIDMap
	template
		<	ConstantIDMap
				t_vConstantIDMap
		>
	auto constexpr
	(	MakeStaticDependencyItem
	)	()
	->	decltype(auto)
	{
		using
			TargetDataID
		=	ID_T
			<	t_vConstantIDMap
			.	TargetID
			>
		;

		return
		Meta::MakeKeyItem<TargetDataID>
		(	t_vConstantIDMap
		.	Constant
		);
	}

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
		Meta::MakeKeyItem<TargetFuncID>
		(	AddressProxy
			{	OriginFuncID
			,	t_vFuncIDMap
			.	ArgumentPack
			}
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
	=	MakeStaticDependencyInfo
		<	t_vFuncID
		>(	MakeStaticDependencyItem
			<	t_vpIDMap
			>()
			...
		)
	;
}
