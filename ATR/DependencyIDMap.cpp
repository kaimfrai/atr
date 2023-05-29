export module ATR.DependencyIDMap;

import ATR.Dependency;
import ATR.Erase;
import ATR.Member.ConfigData;

import Meta.ID;
import Meta.String.Literal;
import Meta.String.Chain;
import Meta.Logic.Constraint;
import Meta.Logic.Erased.Clause;
import Meta.Logic.LiteralBase;
import Meta.Token.Type;

import Std;

using ::Meta::ID;
using ::Meta::ProtoID;
using ::Meta::String::Chain;
using ::Meta::String::Literal;

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
		auto static constexpr
		(	operator()
		)	(	::Meta::TypeToken<t_tEntity>
			)
			noexcept
		->	bool
		{
			Member::ConfigData const static constexpr
			&	rConfig
			=	t_tEntity
				::	Config
			;

			for	(	auto const
					&	rNamedInfo
				:	rConfig
					.	NamedInfoList
				)
			{
				auto const
					vCompare
				=	(	rNamedInfo
					<=>	t_tDataID
						{}
					)
				;
				if	(	::std::is_eq
						(	vCompare
						)
					)
				{	return
						true
					;
				}

				if	(	::std::is_gt
						(	vCompare
						)
					)
				{	return
						false
					;
				}
			}

			return
				false
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
		<	ProtoID
			...	t_tpMemberName
		>
	::Meta::Logic::Erased::Clause constexpr
		HasDataMember
	{	.BitClause
		{	// TODO Better express the intent of having the bottom bits set
			(	1uz
			<<	sizeof...(t_tpMemberName)
			)
		-	1uz
		}
	,	.Literals
		{	::Meta::Type
			<	Trait::HasDataMember
				<	t_tpMemberName
				>
			>
			...
		}
	};

	template
		<	typename
				t_tProto
		,	typename
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

	template
		<	typename
				t_tOwner
		,	ProtoID
			...	t_tpMemberName
		>
	using
		ArgumentDependency
	=	Dependency
		<	ErasedType<t_tOwner>
		,	typename
			decltype(auto(t_tOwner{}))
			::	template
				Offset_Of
				<	t_tpMemberName
				>
			...
		>
	;
}

