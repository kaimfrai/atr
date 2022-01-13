export module Evaluation.Archetype.Product;

import Evaluation.Shared;

import Function.ConstantIDMap;

#include <Stateless/Map.hpp>
#include <ID/Func.hpp>
#include <ID/StringLiteral.hpp>
#include <PackTemplate/Type.hpp>

export namespace
	Function
{
	template
		<	typename
			...	t_tpFuncDependency
		>
	using
		DeduceFuncDependencies
	=	ArgumentDependency
		<	void const
			*
		,	Stateless::Map
			<>
		,	Stateless::Map
			<	t_tpFuncDependency
				...
			>
		>
	;

	/// computes the product of all dependent members and a constant
	template
		<	typename
			...	t_tpFuncDependency
		>
	auto inline
		Body
		(	FunctionName<"Product">
		,	DeduceFuncDependencies
			<	t_tpFuncDependency
				...
			>	i_vArgument
		)
	noexcept
	->	Float
	{	return
			(	...
			*	i_vArgument
				(	t_tpFuncDependency
					::	KeyValue
				)
			)
		;
	}

	template
		<	typename
				t_tObject
		,	FuncIDMap
			...	t_vpFuncDependencies
		>
	constexpr
	auto
		MakeProductAddress
		()
	{
		return
			DependencyAddress
			{	StaticDependencyInfo<"Product">
			,	ArgumentDependencyInfo
				<	t_tObject const
					&
				,	t_vpFuncDependencies
					...
				>
			}
		;
	}
}


