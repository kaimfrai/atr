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
	};

	auto constexpr
	(	MapDataID
	)	(	StringView
				i_vOrigin
		,	StringView
				i_vTarget
		)
	->	DataIDMap
	{	return
		DataIDMap
		{	i_vOrigin
		,	i_vTarget
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
			<	StringLiteral<t_vDataIDMap.TargetID.size()>
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
			>{	nMemberOffset
			}
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
	};

	template
		<	typename
			...	t_tpArgument
		>
	(	FuncIDMap
	)	(	FuncIDMap<t_tpArgument...>
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
	auto constexpr
	(	MapFuncID
	)	(	StringView
				i_vOrigin
		,	StringView
				i_vTarget
		)
	->	FuncIDMap<t_tpArgument...>
	{	return
		FuncIDMap
		<	t_tpArgument
			...
		>{	i_vOrigin
		,	i_vTarget
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
			<	StringLiteral<t_vFuncIDMap.TargetID.size()>
				{	t_vFuncIDMap.TargetID.data()
				}
			>
		;

		auto constexpr
			OriginFuncID
		=	ID_V
			<	StringLiteral<t_vFuncIDMap.OriginID.size()>
				{	t_vFuncIDMap.OriginID.data()
				}
			>
		;

		return
		[&]	<	typename
				...	t_tpArgument
			>	(	Meta::TypePack<t_tpArgument...>
			)
		{	return
			Meta::MakeKeyItem<TargetFuncID>
			(	MapAddress
				(	OriginFuncID
				,	Argument<t_tOwner>{}()
				,	Argument<t_tpArgument>{}()
					...
				)
			);
		}(	t_vFuncIDMap.ArgumentPack
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
	=	MakeArgumentDependency
		(	Meta::Type<ErasedType<t_tOwner>>
		,	MakeArgumentDependencyItem
			<	t_tOwner
			,	t_vpIDMap
			>()
			...
		)
	;
}

