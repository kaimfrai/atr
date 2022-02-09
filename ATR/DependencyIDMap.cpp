export module ATR.DependencyIDMap;

export import Meta.Concept.Category;
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
				Polarity
			==	requires
				{	::std::declval<t_tEntity>()
					[	t_tDataID{}
					];
				}
			;
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
		<	ProtoID
				t_tOrigin
		,	ProtoMemberInterface<t_tOrigin::RawArray>
				t_tOwner
		>
	auto constexpr
	(	MapDependency
	)	(	t_tOrigin
				i_vOrigin
		,	Meta::TypeToken<t_tOwner>
		,	Meta::TypePack<>
		)
	{	return
		MemberOffset
		<	::std::remove_reference_t
			<	decltype
				(	::std::declval<t_tOwner>()
					[	i_vOrigin
					]
				)
			>
		>{	::std::remove_reference_t<t_tOwner>::OffsetOf(i_vOrigin)
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
	,	Meta::MakeKeyItem
		<	ID_Of<t_vpIDMap.TargetID>
		>(	::ATR::MapDependency
			(	ID_Of<t_vpIDMap.OriginID>{}
			,	Meta::Type<t_tOwner>
			,	t_vpIDMap.ArgumentPack
			)
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

