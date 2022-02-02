export module ATR.ConstantIDMap;

export import ATR.DependencyIDMap;
export import ATR.StaticDependency;
export import ATR.DataDependencyItem;

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

	/// creates an DataDependencyItem from a ConstantIDMap
	template
		<	ConstantIDMap
				t_vConstantIDMap
		>
	auto constexpr
	(	MakeStaticDependencyItem
	)	()
	{
		auto constexpr
			TargetDataID
		=	ID_V
			<	t_vConstantIDMap
			.	TargetID
			>
		;

		return
		DataDependencyItem
		{	TargetDataID
		,	t_vConstantIDMap
		.	Constant
		};
	}

	/// creates an FuncDependencyItem from an owner and a FuncIDMap
	template
		<	FuncIDMap
				t_vFuncIDMap
		>
	auto constexpr
	(	MakeStaticDependencyItem
	)	()
	{
		auto constexpr
			TargetFuncID
		=	ID_V
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
		FuncDependencyItem
		{	TargetFuncID
		,	AddressProxy
			{	OriginFuncID
			,	t_vFuncIDMap
			.	ArgumentPack
			}
		};
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
