export module ATR.DependencyIDMap;

export import ATR.Address;
export import ATR.Dependency;
export import ATR.DataMember;

export import ATR.MemberOffset;
export import ATR.ID;
export import ATR.StringLiteral;
export import ATR.Layout;

export namespace
	ATR
{
	/// maps one Identifier to another
	template
		<	typename
			...	t_tpArgument
		>
	struct
		IDMap
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
	};

	template
		<	typename
			...	t_tpArgument
		>
	(	IDMap
	)	(	IDMap<t_tpArgument...>
		)
	->	IDMap
		<	t_tpArgument
			...
		>
	;

	template
		<	typename
			...	t_tpArgument
		>
	auto constexpr
	(	MapID
	)	(	StringView
				i_vOrigin
		,	StringView
				i_vTarget
		)
	->	IDMap<t_tpArgument...>
	{	return
		IDMap
		<	t_tpArgument
			...
		>{	i_vOrigin
		,	i_vTarget
		};
	}

	template
		<	ProtoID
				t_tFuncID
		,	typename
				t_tOwner
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	MapDependency
	)	(	t_tFuncID
		,	Meta::TypeToken<t_tOwner>
		,	Meta::TypePack
			<	t_tpArgument
				...
			>
		)
	->	decltype(auto)
	{	return
		Address
		<	t_tFuncID
		,	t_tOwner
		,	t_tpArgument
			...
		>;
	}

	template
		<	typename
				t_tOwner
		>
	auto constexpr
	(	MapDependency
	)	(	MemberAccessIDOf<t_tOwner> auto
				i_vOrigin
		,	Meta::TypeToken<t_tOwner>
				i_vOwner
		,	Meta::TypePack<>
			=	{}
		)
	{
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

		Meta::EraseTypeToken constexpr
			vMemberType
		=	::ATR::MemberType
			(	i_vOrigin
			,	aBegin
			)
		;

		using
			RestoredMemberType
		=	Meta::RestoreTypeEntity
			<	vMemberType
			>
		;

		//	recursively resolve member alias
		if	constexpr(MemberAccessIDOf<RestoredMemberType, t_tOwner>)
			return MapDependency(RestoredMemberType{}, i_vOwner);
		else
			return
			MemberOffset
			<	RestoredMemberType
			>{	::ATR::ByteOffset
				(	i_vOrigin
				,	aBegin
				)
			};
	}

	template
		<	typename
				t_tOwner
		,	IDMap
			...	t_vpIDMap
		>
	Dependency constexpr inline
		ArgumentDependencyInfo
	{	Meta::Type<ErasedType<t_tOwner>>
	,	Meta::MakeKeyItem
		<	ID_T
			<	StringLiteral<t_vpIDMap.TargetID.size()>
				{	t_vpIDMap.TargetID.data()
				}
			>
		>(	::ATR::MapDependency
			(	ID_V
				<	StringLiteral<t_vpIDMap.OriginID.size()>
					{	t_vpIDMap.OriginID.data()
					}
				>
			,	Meta::Type<t_tOwner>
			,	t_vpIDMap.ArgumentPack
			)
		)
		...
	};
}

