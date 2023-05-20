export module ATR.DependencyIDMap;

import ATR.Dependency;
import ATR.Address;
import ATR.Erase;
import ATR.Member.Storage;
import ATR.Member.OffsetOf;

import Meta.ID;
import Meta.String.Literal;
import Meta.String.Chain;
import Meta.Logic.Bit.Clause;
import Meta.Logic.Constraint;
import Meta.Logic.Erased.Clause;
import Meta.Logic.LiteralBase;
import Meta.Token.Type;

import Std;

using ::ATR::Member::OffsetOf;
using ::Meta::ProtoID;
using ::Meta::String::Chain;
using ::Meta::ID;
using ::Meta::String::Literal;

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
		<	Literal
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
				,	Chain
					{	t_vDataID
						.	Buffer
					}
				)
			!=	Member::EStorage::None
			;
		}
	};
}

export namespace
	ATR
{
	// Create a clause by direct initialization.
	// This assumes that there are no dublicates in the provided member name pack.
	// Caches the clause independently of concept proto type.
	template
		<	Literal
			...	t_vpMemberName
		>
	::Meta::Logic::Erased::Clause constexpr
		HasDataMember
	{	.BitClause
		{	// TODO Better express the intent of having the bottom bits set
			(	1uz
			<<	sizeof...(t_vpMemberName)
			)
		-	1uz
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
		,	Literal
			...	t_tpMemberName
		>
	concept
		ProtoMemberInterface
	=	::Meta::ProtoConjunctiveConstraint
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
		<	Literal
				t_vFunctionName
		>
	using
		FunctionName
	=	Dependency
		<	ID<t_vFunctionName>
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
		<	Literal
				t_vFunctionName
		,	auto
			...	t_vpIDMap
		>
	using
		StaticDependency
	=	ArgumentDependency
		<	ID<t_vFunctionName>
		,	t_vpIDMap
			...
		>
	;
}

