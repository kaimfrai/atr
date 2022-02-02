export module ATR.DependencyIDMap;

export import ATR.Address;
export import ATR.ArgumentDependency;
export import ATR.StaticDependency;
export import ATR.LayoutInfo;

export import ATR.MemberOffset;
export import ATR.ID;
export import ATR.StringLiteral;
export import Pack.Concat;
export import Pack.Type;
export import Std.QualifierTemplate;

export namespace
	ATR
{
	/// maps one Identifier to another
	template
		<	StringLiteralInstance
				t_tOriginIdentifier
		,	StringLiteralInstance
				t_tTargetIdentifier
		>
	struct
		DataIDMap
	{
		t_tOriginIdentifier
			OriginID
		;

		t_tTargetIdentifier
			TargetID
		;

		explicit constexpr
		(	DataIDMap
		)	(	t_tOriginIdentifier const
				&	i_rOriginID
			,	t_tTargetIdentifier const
				&	i_rTargetID
			)
		:	OriginID
			{	i_rOriginID
			}
		,	TargetID
			{	i_rTargetID
			}
		{}
	};

	template
		<	StringLiteralInstance
				t_tOriginIdentifier
		,	StringLiteralInstance
				t_tTargetIdentifier
		>
	(	DataIDMap
	)	(	t_tOriginIdentifier const&
		,	t_tTargetIdentifier const&
		)
	->	DataIDMap
		<	t_tOriginIdentifier
		,	t_tTargetIdentifier
		>
	;

	template
		<	StringLiteralInstance
				t_tOriginIdentifier
		>
	struct
		DataIDOrigin
	{
		t_tOriginIdentifier
			Identifier
		;

		constexpr
		(	DataIDOrigin
		)	(	PseudoStringLiteral auto
				&&	i_rIdentifier
			)
		:	Identifier
			{	i_rIdentifier
			}
		{}

		/// creates the mapping
		friend auto constexpr
		(	operator->*
		)	(	DataIDOrigin
				const
				&	i_rOriginID
			,	PseudoStringLiteral auto
				&&	i_rTargetDataID
			)
		{	return
			DataIDMap
			{	i_rOriginID
				.	Identifier
			,	StringLiteral
				{	i_rTargetDataID
				}
			};
		}
	};

	template
		<	PseudoStringLiteral
				t_tIdentifier
		>
	(	DataIDOrigin
	)	(	t_tIdentifier
			&&	i_rIdentifier
		)
	->	DataIDOrigin
		<	decltype
			(	StringLiteral
				{	i_rIdentifier
				}
			)
		>
	;

	auto constexpr
	(	MapDataID
	)	(	PseudoStringLiteral auto
			&&	i_rIdentifier
		)
	{	return
		DataIDOrigin
		{	i_rIdentifier
		};
	}

	/// creates a DependencyItem from an owner and a DataIDMap
	template
		<	typename
				t_tOwner
		,	DataIDMap
				t_vDataIDMap
		>
	auto constexpr
	(	MakeArgumentDependencyItem
	)	()
	{
		using
			TargetDataID
		=	ID_T
			<	t_vDataIDMap
			.	TargetID
			>
		;

		auto constexpr
			OriginDataID
		=	ID_V
			<	t_vDataIDMap
			.	OriginID
			>
		;

		return
		Meta::MakeKeyItem<TargetDataID>
		(	OffsetOf
			<	// preserve constness
				Std::CVQualifier
				<	t_tOwner
				>::template
					Add
			>(	UnderlyingLayout
				<	t_tOwner
				>
			,	OriginDataID
			)
		);
	}

	/// maps one Identifier to another
	template
		<	StringLiteralInstance
				t_tOriginIdentifier
		,	StringLiteralInstance
				t_tTargetIdentifier
		,	Pack::TypeInstance
				t_tArgumentPack
		>
	struct
		FuncIDMap
	{
		t_tOriginIdentifier
			OriginID
		;

		t_tTargetIdentifier
			TargetID
		;

		t_tArgumentPack
			ArgumentPack
		{};

		explicit constexpr
			FuncIDMap
			(	t_tOriginIdentifier const
				&	i_rOriginID
			,	t_tTargetIdentifier const
				&	i_rTargetID
			,	t_tArgumentPack
			)
		:	OriginID
			{	i_rOriginID
			}
		,	TargetID
			{	i_rTargetID
			}
		{}
	};

	template
		<	StringLiteralInstance
				t_tOriginIdentifier
		,	StringLiteralInstance
				t_tTargetIdentifier
		,	Pack::TypeInstance
				t_tArgumentPack
		>
	(	FuncIDMap
	)	(	t_tOriginIdentifier const&
		,	t_tTargetIdentifier const&
		,	t_tArgumentPack
		)
	->	FuncIDMap
		<	t_tOriginIdentifier
		,	t_tTargetIdentifier
		,	t_tArgumentPack
		>
	;

	template
		<	StringLiteralInstance
				t_tOriginIdentifier
		,	typename
			...	t_tpArgument
		>
	struct
		FuncIDOrigin
	{
		t_tOriginIdentifier
			Identifier
		;

		/// creates the mapping
		friend auto constexpr
		(	operator->*
		)	(	FuncIDOrigin const
				&	i_rOriginID
			,	PseudoStringLiteral auto
				&&	i_rTargetID
			)
		{	return
			FuncIDMap
			{	i_rOriginID
				.	Identifier
			,	StringLiteral
				{	i_rTargetID
				}
			,	Pack::Type
				<	t_tpArgument
					...
				>{}
			};
		}
	};

	template
		<	typename
			...	t_tpArgument
		>
	auto constexpr
	(	MapFuncID
	)	(	PseudoStringLiteral auto
			&&	i_rIdentifier
		)
	{
		return
		FuncIDOrigin
		<	decltype
			(	StringLiteral
				{	i_rIdentifier
				}
			)
		,	t_tpArgument
			...
		>{	StringLiteral
			{	i_rIdentifier
			}
		};
	}

	/// creates a DependencyItem from an owner and a FuncIDMap
	template
		<	typename
				t_tOwner
		,	FuncIDMap
				t_vFuncIDMap
		>
	auto constexpr
	(	MakeArgumentDependencyItem
	)	()
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
			,	Pack::Concat
				(	Meta::Type<t_tOwner>
				,	t_vFuncIDMap
				.	ArgumentPack
				)
			}
		);
	}

	template
		<	typename
				t_tOwner
		,	auto
			...	t_vpIDMap
		>
	auto constexpr inline
		ArgumentDependencyInfo
	=	MakeArgumentDependencyInfo
		<	t_tOwner
		>(	MakeArgumentDependencyItem
			<	t_tOwner
			,	t_vpIDMap
			>()
			...
		)
	;
}

