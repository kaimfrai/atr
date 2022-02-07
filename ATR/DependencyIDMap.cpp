export module ATR.DependencyIDMap;

export import ATR.Address;
export import ATR.Dependency;
export import ATR.DataMember;

export import ATR.MemberOffset;
export import ATR.ID;
export import ATR.StringLiteral;
export import Std.QualifierTemplate;

export namespace
	ATR
{
	/// maps one Identifier to another
	struct
		DataIDMap
	{
		StringView
			OriginID
		;

		StringView
			TargetID
		;

		explicit constexpr
		(	DataIDMap
		)	(	StringView
					i_vOriginID
			,	StringView
					i_vTargetID
			)
		:	OriginID
			{	i_vOriginID
			}
		,	TargetID
			{	i_vTargetID
			}
		{}
	};

	struct
		DataIDOrigin
	{
		StringView
			Identifier
		;

		constexpr
		(	DataIDOrigin
		)	(	StringView
					i_vIdentifier
			)
		:	Identifier
			{	i_vIdentifier
			}
		{}

		/// creates the mapping
		friend auto constexpr
		(	operator->*
		)	(	DataIDOrigin
					i_vOriginID
			,	StringView
					i_vTargetDataID
			)
		{	return
			DataIDMap
			{	i_vOriginID.Identifier
			,	i_vTargetDataID
			};
		}
	};

	auto constexpr
	(	MapDataID
	)	(	StringView
				i_vIdentifier
		)
	{	return
		DataIDOrigin
		{	i_vIdentifier
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
	->	decltype(auto)
	{
		using
			TargetDataID
		=	ID_T
			<	StringLiteral<t_vDataIDMap.TargetID.size() + 1uz>
				{	t_vDataIDMap.TargetID.data()
				}
			>
		;

		auto constexpr
		&	rOwnerLayout
		=	LayoutConfig
			<	::std::remove_cvref_t<t_tOwner>
			::	TypeName
			>
		;

		Meta::Value<DataMemberInfo const*> constexpr
			aBegin
		=	begin(rOwnerLayout)
		;
		Meta::Value<DataMemberInfo const*> constexpr
			aEnd
		=	end(rOwnerLayout)
		;

		Meta::EraseTypeToken constexpr
			vMemberType
		=	MemberType
			(	t_vDataIDMap.OriginID
			,	aBegin
			,	aEnd
			)
		;

		using
			MemberType
		=	typename
			Std::CVQualifier
			<	t_tOwner
			>
		::	template
			Add
			<	Meta::RestoreTypeEntity
				<	vMemberType
				>
			>
		;

		Meta::USize constexpr
			nMemberOffset
		=	ByteOffset
			(	t_vDataIDMap.OriginID
			,	aBegin
			,	aEnd
			)
		;

		return
		Meta::MakeKeyItem<TargetDataID>
		(	MemberOffset
			<	MemberType
			,	nMemberOffset
			>{}
		);
	}

	/// maps one Identifier to another
	template
		<	typename
			...	t_tpArgument
		>
	struct
		FuncIDMap
	{
		StringView
			OriginID
		;

		StringView
			TargetID
		;

		static Meta::TypePack<t_tpArgument...> constexpr
			ArgumentPack
		{};

		explicit constexpr
		(	FuncIDMap
		)	(	StringView
					i_vOriginID
			,	StringView
					i_vTargetID
			,	Meta::TypePack<t_tpArgument...>
			)
		:	OriginID
			{	i_vOriginID
			}
		,	TargetID
			{	i_vTargetID
			}
		{}
	};

	template
		<	typename
			...	t_tpArgument
		>
	(	FuncIDMap
	)	(	StringView
		,	StringView
		,	Meta::TypePack<t_tpArgument...>
		)
	->	FuncIDMap
		<	t_tpArgument
			...
		>
	;

	template
		<	typename
			...	t_tpArgument
		>
	struct
		FuncIDOrigin
	{
		StringView
			Identifier
		;

		/// creates the mapping
		friend auto constexpr
		(	operator->*
		)	(	FuncIDOrigin
					i_vOriginID
			,	StringView
					i_vTargetID
			)
		{	return
			FuncIDMap
			{	i_vOriginID.Identifier
			,	i_vTargetID
			,	Meta::TypePack
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
	)	(	StringView
				i_vIdentifier
		)
	->	decltype(auto)
	{	return
		FuncIDOrigin
		<	t_tpArgument
			...
		>{	i_vIdentifier
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
	->	decltype(auto)
	{
		using
			TargetFuncID
		=	ID_T
			<	StringLiteral<t_vFuncIDMap.TargetID.size() + 1uz>
				{	t_vFuncIDMap.TargetID.data()
				}
			>
		;

		auto constexpr
			OriginFuncID
		=	ID_V
			<	StringLiteral<t_vFuncIDMap.OriginID.size() + 1uz>
				{	t_vFuncIDMap.OriginID.data()
				}
			>
		;

		return
		Meta::MakeKeyItem<TargetFuncID>
		(	AddressProxy
			{	OriginFuncID
			,	Meta::Type<t_tOwner>
			,	t_vFuncIDMap.ArgumentPack
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
	=	Meta::Type
		<	decltype
			(	MakeArgumentDependency
				(	::std::declval<t_tOwner>()
				,	MakeArgumentDependencyItem
					<	t_tOwner
					,	t_vpIDMap
					>()
					...
				)
			)
		>
	;
}

