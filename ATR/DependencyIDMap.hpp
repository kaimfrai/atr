export module ATR:DependencyIDMap;

export import :DataMember;
export import :Dependency;
export import :Address;
export import :Layout;

export import Meta.ID;
import Meta.Token.Type;
import Meta.Logic.LiteralBase;
import Meta.Logic.Term;
import Meta.Logic.Constraint;
import Meta.Logic.Conjunction;
import Meta.Data.TupleList;

import Std;

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
		Meta::StringView
			OriginID
		;

		static Meta::TypePack<t_tpArgument...> constexpr
			ArgumentPack
		{};

		constexpr
		(	IDMap
		)	(	Meta::StringView
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
	)	(	Meta::StringView
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
			requires
			{	::std::declval<t_tEntity>()
				[	t_tDataID{}
				];
			};
		}
	};
}

using ::Meta::Logic::DeduceTerm;
using ::Meta::Logic::Literal;

export namespace
	ATR
{
	template
		<	Meta::StringLiteral
			...	t_tpMemberName
		>
	DeduceTerm
	<(	...
	and	Literal
		<	Trait::HasDataMember
			<	Meta::ID_T<t_tpMemberName>
			>
		>
	)>	inline
		HasDataMember
	{};

	template
		<	typename
				t_tProto
		,	Meta::StringLiteral
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
				i_vOwner
		,	Meta::TypePack<>
		)
	{
		auto constexpr
			fOwnerTransform
		=	Meta::ComposeTransform
			(	i_vOwner
			)
		;
		return
			::std::remove_cvref_t<t_tOwner>
		::	OffsetOf
			(	i_vDataID
			,	fOwnerTransform
			)
		;
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
		<	Meta::StringLiteral
				t_vFunctionName
		,	IDMap
			...	t_vpIDMap
		>
	Dependency constexpr inline
		StaticDependency
	=	ArgumentDependency
		<	Meta::ID_T<t_vFunctionName>
		,	t_vpIDMap
			...
		>
	;
}

