#pragma once

#include <Function/StaticDependency.hpp>
#include <Function/ArgumentDependency.hpp>
#include <ID/Func.hpp>
#include <ID/StringLiteral.hpp>
#include <Meta/TypeInfo.hpp>
#include <Std/Concepts.hpp>

namespace
	Function
{
	/// the body of a function. needs to be defined separately.
	/// the requirements are that the first template argument is the FuncID.
	/// other template arguments will be deduced.
	/// does not need to be fully specialized.
	template
		<	StaticDependencyInstance
				t_tFuncID
		,	ArgumentDependencyInstance
			...	t_tpDependency
		>
	static inline
	auto
		Body
		(	t_tFuncID
		,	t_tpDependency
			...
		)
	noexcept
	{
		static_assert
			(	Std::Never
				<	t_tFuncID
				,	t_tpDependency
					...
				>
			,	"Function::Body was used but not defined."
			)
		;
	}

	/// whether a call to Body is noexcept
	template
		<	StaticDependencyInstance
				t_tFuncID
		,	ArgumentDependencyInstance
			...	t_tpDependency
		>
	constexpr
	bool
		BodyNoexcept
	=	noexcept(
			Body
			(	t_tFuncID
				{}
			,	std::declval
				<	t_tpDependency
				>()
				...
			)
		)
	;
	
	/// the type returned by a call to Body
	template
		<	StaticDependencyInstance
				t_tFuncID
		,	typename
			...	t_tpDependency
		>
	using
		BodyReturnType
	=	decltype(
			Body
			(	t_tFuncID
				{}
			,	std::declval
				<	t_tpDependency
				>()
				...
			)
		)
	;
}
