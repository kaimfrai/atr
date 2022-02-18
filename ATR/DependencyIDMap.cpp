export module ATR.DependencyIDMap;

export import Meta.Logic;
export import Meta.Constraint;

export import ATR.StringLiteral;
export import ATR.ID;
export import ATR.DataMember;
export import ATR.MemberOffset;
export import ATR.Dependency;
export import ATR.Address;
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
		IDMap final
	{
		StringView
			OriginID
		;

		static Meta::TypePack<t_tpArgument...> constexpr
			ArgumentPack
		{};

		constexpr
		(	IDMap
		)	(	StringView
					i_vOriginID
			,	Meta::TypeToken<t_tpArgument>
				...
			)
		:	OriginID
			{	i_vOriginID
			}
		{}
	};

	template
		<	typename
			...	t_tpArgument
		>
	(	IDMap
	)	(	StringView
		,	Meta::TypeToken<t_tpArgument>
			...
		)
	->	IDMap
		<	t_tpArgument
			...
		>
	;
}

export namespace
	ATR::Trait
{
	template
		<	ProtoID
				t_tDataID
		>
	struct
		HasDataMember final
	:	Meta::Trait::LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
			(	Polarity
			==	requires
				{	::std::declval<t_tEntity>()
					[	t_tDataID{}
					];
				}
			);
		}
	};
}

export namespace
	ATR
{
	template
		<	StringLiteral
			...	t_tpMemberName
		>
	Meta::Term constexpr inline
		HasDataMember
	=(	...
	and	Meta::Term
		{	Trait::HasDataMember
			<	ID_T<t_tpMemberName>
			>{}
		}
	);

	template
		<	typename
				t_tProto
		,	StringLiteral
			...	t_tpMemberName
		>
	concept
		ProtoMemberInterface
	=	Meta::ProtoConstraint
		<	t_tProto
		,	HasDataMember
			<	t_tpMemberName
				...
			>
		>
	;
}

namespace
	ATR
{
	template
		<	typename
				t_tOwner
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	MapDependency
	)	(	ProtoAddress<t_tOwner, t_tpArgument...> auto
				i_vFuncID
		,	Meta::TypeToken<t_tOwner>
		,	Meta::TypePack
			<	t_tpArgument
				...
			>
		)
	->	decltype(auto)
	{	return
		Address
		<	decltype(i_vFuncID)
		,	t_tOwner
		,	t_tpArgument
			...
		>;
	}

	template
		<	ProtoID
				t_tDataID
		,	ProtoMemberInterface<t_tDataID::RawArray>
				t_tOwner
		>
	auto constexpr
	(	MapDependency
	)	(	t_tDataID
				i_vDataID
		,	Meta::TypeToken<t_tOwner>
		,	Meta::TypePack<>
		)
	{
		using
			tType
		=	decltype
			(	::std::declval<t_tOwner>()
				[	i_vDataID
				]
			)
		;
		using tOwner = ::std::remove_cvref_t<t_tOwner>;
		if	constexpr
			(	ProtoMemberInterface
				<	typename
					tOwner
				::	StaticLayout
				,	i_vDataID.RawArray
				>
			)
			return
			StaticMember<tType>
			{};
		else
			return
			MemberOffset<tType>
			{	tOwner
			::	DynamicLayout
			::	OffsetOf(i_vDataID)
			};
	}
}

export namespace
	ATR
{
	template
		<	typename
				t_tOwner
		,	IDMap
			...	t_vpIDMap
		>
	Dependency constexpr inline
		ArgumentDependency
	{	Meta::Type<ErasedType<t_tOwner>>
	,	::ATR::MapDependency
		(	::std::remove_cvref_t<t_tOwner>
		::	ResolveAlias
			(	ID_Of<t_vpIDMap.OriginID>{}
			)
		,	Meta::Type<t_tOwner>
		,	t_vpIDMap.ArgumentPack
		)
		...
	};

	template
		<	StringLiteral
				t_vFunctionName
		,	IDMap
			...	t_vpIDMap
		>
	Dependency constexpr inline
		StaticDependency
	=	ArgumentDependency
		<	ID_T<t_vFunctionName>
		,	t_vpIDMap
			...
		>
	;
}

