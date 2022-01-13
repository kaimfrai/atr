export module Evaluation.Archetype.ReturnMember;

import Evaluation.Shared;

export import Archetype.Instance;
import Function.ConstantIDMap;

#include <ID/Modify.hpp>
#include <ID/Func.hpp>

export namespace
	Function
{
	using ID::operator""_trim;

	/// simply returns a member
	auto inline
		Body
		(	FunctionName<"ReturnMember">
		,	ArgumentDependencyInstance auto
				i_vObject
		)
	noexcept
	->	decltype(auto)
	{	using ID::operator""_dID;
		return
			i_vObject
			[	"Member"_dID
			]
		;
	}

	/// functions prefixed with Get return the datamember withouth get
	template
		<	ID::FuncPrefix<"Get">
				t_tGetter
		,	ID::StringLiteral
				t_vDataMember
			=	(	"Get"_trim
				-	t_tGetter
					{}
				)
		>
	auto constexpr
		MapAddress
		(	t_tGetter
		,	Archetype::HasDataMember
			<	t_vDataMember
			>	auto const
			&	i_rObject
		)
	{
		using
			MemberType
		=	decltype(
				i_rObject
				[	ID::DataV
					<	t_vDataMember
					>
				]
			)
		;

		constexpr
		auto
			fResolveAlias
		=	[]
			{
				if constexpr
					(	ID::DataInstance
						<	MemberType
						>
					)
				{	return
						MemberType::AsStringLiteral
					;
				}
				else
					return
						t_vDataMember
					;
			}
		;

		return
			DependencyAddress
			{	StaticDependencyInfo
				<	"ReturnMember"
				>
			,	ArgumentDependencyInfo
				<	decltype(i_rObject)
				,	MapDataID(fResolveAlias()) ->* "Member"
				>
			}
		;
	}
}


