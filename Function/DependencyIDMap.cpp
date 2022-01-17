export module Function.DependencyIDMap;

export import Function.Address;
export import Function.ArgumentDependency;
export import Function.StaticDependency;
export import Archetype.LayoutInfo;

export import Layout.MemberOffset;
export import ID.Func;
export import ID.Data;
export import ID.StringLiteral;
export import Pack.Concat;
export import Pack.Type;
export import Std.QualifierTemplate;
export import Std.Concepts;

export namespace
	Function
{
	/// maps one Identifier to another
	template
		<	ID::StringLiteralInstance
				t_tOriginIdentifier
		,	ID::StringLiteralInstance
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

		constexpr
		explicit
			DataIDMap
			(	t_tOriginIdentifier
				const
				&	i_rOriginID
			,	t_tTargetIdentifier
				const
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
		<	ID::StringLiteralInstance
				t_tOriginIdentifier
		>
	struct
		DataIDOrigin
	{
		t_tOriginIdentifier
			Identifier
		;

		constexpr
			DataIDOrigin
			(	ID::PseudoStringLiteral auto
				&&	i_rIdentifier
			)
		:	Identifier
			{	i_rIdentifier
			}
		{}

		/// creates the mapping
		friend
		constexpr
		auto
			operator->*
			(	DataIDOrigin
				const
				&	i_rOriginID
			,	ID::PseudoStringLiteral auto
				&&	i_rTargetDataID
			)
		{
			return
				DataIDMap
				{	i_rOriginID
					.	Identifier
				,	ID::StringLiteral
					{	i_rTargetDataID
					}
				}
			;
		}
	};

	template
		<	ID::PseudoStringLiteral
				t_tIdentifier
		>
		DataIDOrigin
		(	t_tIdentifier
			&&	i_rIdentifier
		)
	->	DataIDOrigin
		<	decltype(
				ID::StringLiteral
				{	i_rIdentifier
				}
			)
		>
	;

	constexpr
	auto
		MapDataID
		(	ID::PseudoStringLiteral auto
			&&	i_rIdentifier
		)
	{
		return
			DataIDOrigin
			{	i_rIdentifier
			}
		;
	}

	/// creates an DataDependencyItem from an owner and a DataIDMap
	template
		<	typename
				t_tOwner
		,	DataIDMap
				t_vDataIDMap
		>
	constexpr
	auto
		MakeArgumentDependencyItem
		()
	{
		constexpr
		auto
			TargetDataID
		=	ID::DataV
			<	t_vDataIDMap
				.	TargetID
			>
		;

		constexpr
		auto
			OriginDataID
		=	ID::DataV
			<	t_vDataIDMap
				.	OriginID
			>
		;

		return
			DataDependencyItem
			{	TargetDataID
			,	Layout::OffsetOf
				<	// preserve constness
					Std::CVQualifier
					<	t_tOwner
					>::template
						Add
				>(	Archetype::UnderlyingLayout
					<	t_tOwner
					>
				,	OriginDataID
				)
			}
		;
	}

	/// maps one Identifier to another
	template
		<	ID::StringLiteralInstance
				t_tOriginIdentifier
		,	ID::StringLiteralInstance
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

		constexpr
		explicit
			FuncIDMap
			(	t_tOriginIdentifier
				const
				&	i_rOriginID
			,	t_tTargetIdentifier
				const
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
		<	ID::StringLiteralInstance
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
		friend
		constexpr
		auto
			operator->*
			(	FuncIDOrigin const
				&	i_rOriginID
			,	ID::PseudoStringLiteral auto
				&&	i_rTargetID
			)
		{
			return
				FuncIDMap
				{	i_rOriginID
					.	Identifier
				,	ID::StringLiteral
					{	i_rTargetID
					}
				,	Pack::Type
					<	t_tpArgument
						...
					>{}
				}
			;
		}
	};

	template
		<	typename
			...	t_tpArgument
		>
	constexpr
	auto
		MapFuncID
		(	ID::PseudoStringLiteral auto
			&&	i_rIdentifier
		)
	{
		return
			FuncIDOrigin
			<	decltype(
					ID::StringLiteral
					{	i_rIdentifier
					}
				)
			,	t_tpArgument
				...
			>{	ID::StringLiteral
				{	i_rIdentifier
				}
			}
		;
	}

	/// creates an FuncDependencyItem from an owner and a FuncIDMap
	template
		<	typename
				t_tOwner
		,	FuncIDMap
				t_vFuncIDMap
		>
	constexpr
	auto
		MakeArgumentDependencyItem
		()
	{
		constexpr
		auto
			TargetFuncID
		=	ID::FuncV
			<	t_vFuncIDMap
				.	TargetID
			>
		;

		constexpr
		auto
			OriginFuncID
		=	ID::FuncV
			<	t_vFuncIDMap
				.	OriginID
			>
		;

		return
			FuncDependencyItem
			{	TargetFuncID
			,	AddressProxy
				{	OriginFuncID
				,	Pack::Concat
					(	Meta::Type<t_tOwner>
					,	t_vFuncIDMap
						.	ArgumentPack
					)
				}
			}
		;
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

