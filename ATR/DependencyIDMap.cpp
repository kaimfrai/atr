export module ATR.DependencyIDMap;

import ATR.Member.OffsetOf;
import ATR.Member.Info;
import ATR.Member.Alias;
import ATR.Member.Contains;
import ATR.Dependency;
import ATR.Address;
import ATR.Erase;

import Meta.ID.Alias;
import Meta.ID.Concept;
import Meta.ID.StringView;
import Meta.ID.StringLiteral;
import Meta.Token.Type;
import Meta.Logic.LiteralBase;
import Meta.Logic.Term;
import Meta.Logic.Constraint;
import Meta.Logic.Conjunction;

import Std;

using ::Meta::ProtoID;
using ::Meta::ID_Of;
using ::Meta::StringView;

export namespace
	ATR
{
	/// maps one Identifier to another
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
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	::Meta::TypeToken<t_tEntity>
			)
			noexcept
		->	bool
		{	return
			Contains
			(	::std::remove_reference_t<t_tEntity>
			::	MemberList
			,	t_tDataID
			::	StringView
			);
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
		,	ProtoAddress<t_tOwner, t_tpArgument...>
				t_tName
		>
	auto constexpr
	(	MapDependency
	)	(	IDMap<t_tName, t_tpArgument...>
		,	Meta::TypeToken<t_tOwner>
		)
	->	decltype(auto)
	{	return
		Address
		<	t_tName
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
	)	(	IDMap<t_tDataID>
		,	Meta::TypeToken<t_tOwner>
				i_vOwner
		)
	{	return
		Member::OffsetOf
		(	t_tDataID{}
		,	i_vOwner
		);
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
		(	t_vpIDMap
		,	Meta::Type
			<	::std::remove_cvref_t
				<	t_tOwner
				>
			>
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

