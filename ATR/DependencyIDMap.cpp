export module ATR.DependencyIDMap;

import ATR.Dependency;
import ATR.Address;
import ATR.Erase;
import ATR.Member.Storage;
import ATR.Member.OffsetOf;

import Meta.ID.Alias;
import Meta.ID.Concept;
import Meta.ID.StringLiteral;
import Meta.Logic.Bit.Clause;
import Meta.Logic.Constraint;
import Meta.Logic.Erased.Term;
import Meta.Logic.LiteralBase;
import Meta.Token.Type;

import Std;

using ::Meta::ProtoID;
using ::ATR::Member::OffsetOf;

export namespace
	ATR
{
	template
		<	ProtoID
				t_tName
		,	typename
			...	t_tpArgument
		>
	struct
		IDMap final
	{
		explicit(false) constexpr
		(	IDMap
		)	(	t_tName
			,	Meta::TypeToken<t_tpArgument>
				...
			)
		{}
	};

	template
		<	ProtoID
				t_tName
		,	typename
			...	t_tpArgument
		>
	(	IDMap
	)	(	t_tName
		,	Meta::TypeToken<t_tpArgument>
			...
		)
	->	IDMap
		<	t_tName
		,	t_tpArgument
			...
		>
	;
}

export namespace
	ATR::Trait
{
	template
		<	::Meta::StringLiteral
				t_vDataID
		>
	struct
		HasDataMember final
	:	Meta::Trait::LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	::Meta::TypeToken<t_tEntity>
			)
			noexcept
		->	bool
		{	return
				Member::GetStorage
				(		::std::remove_cvref_t
						<	t_tEntity
						>
					::	TypeName
				,	t_vDataID
				)
			!=	Member::EStorage::None
			;
		}
	};
}

export namespace
	ATR
{
	// Create a term by direct initialization.
	// This assumes that there are no dublicates in the provided member name pack.
	// Caches the term independently of concept proto type.
	template
		<	::Meta::StringLiteral
			...	t_vpMemberName
		>
	::Meta::Logic::Erased::Term constexpr inline
		HasDataMember
	{	.BitTerm
		{	// TODO Better express the intent of having the bottom bits set
			::Meta::Logic::Bit::Clause
			{	(	1uz
				<<	sizeof...(t_vpMemberName)
				)
			-	1uz
			}
		}
	,	.Literals
		{	::Meta::Type
			<	Trait::HasDataMember
				<	t_vpMemberName
				>
			>
			...
		}
	};

	template
		<	typename
				t_tProto
		,	::Meta::StringLiteral
			...	t_tpMemberName
		>
	concept
		ProtoMemberInterface
	=	::Meta::ProtoConstraint
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
				t_tName
		,	typename
			...	t_tpArgument
		>
	[[nodiscard]]
	auto constexpr
	(	MapDependency
	)	(	IDMap<t_tName, t_tpArgument...>
		,	auto
			&&	i_rOwner
		)
		noexcept
	->	FunctionType
		<	t_tName
		,	decltype(i_rOwner)
		,	t_tpArgument
			...
		>
	{	return
		{};
	}

	[[nodiscard]]
	auto constexpr
	(	MapDependency
	)	(	ProtoID auto
				i_vDataID
		,	auto
			&&	i_rOwner
		)
		noexcept
	->	decltype
		(	OffsetOf
			(	i_vDataID
			,	i_rOwner
				.	TypeName
			)
		)
	{	return
		{};
	}
}

export namespace
	ATR
{
	template
		<	Meta::StringLiteral
				t_vFunctionName
		>
	using
		FunctionName
	=	Dependency
		<	Meta::ID_T<t_vFunctionName>
		>
	;

	template
		<	typename
			...	t_tpDependency
		>
	using
		DeduceDependencies
	=	Dependency
		<	::std::byte const(&)[]
		,	t_tpDependency
			...
		>
	;

	template
		<	typename
				t_tOwner
		,	auto
			...	t_vpIDMap
		>
	using
		ArgumentDependency
	=	Dependency
		<	ErasedType<t_tOwner>
		,	decltype
			(	::ATR::MapDependency
				(	t_vpIDMap
				,	::std::declval<t_tOwner>()
				)
			)
			...
		>
	;

	template
		<	Meta::StringLiteral
				t_vFunctionName
		,	auto
			...	t_vpIDMap
		>
	using
		StaticDependency
	=	ArgumentDependency
		<	Meta::ID_T<t_vFunctionName>
		,	t_vpIDMap
			...
		>
	;
}

