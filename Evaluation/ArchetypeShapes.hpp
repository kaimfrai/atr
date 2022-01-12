#pragma once

#include "Shared.hpp"

#include <Archetype/Instance.hpp>
#include <Archetype/LayoutInfo.hpp>
#include <Function/ConstantIDMap.hpp>
#include <Function/VirtualArgument.hpp>
#include <Function/DependencyIDMap.hpp>
#include <Function/Address.hpp>
#include <Function/Body.hpp>
#include <Function/Dependency.hpp>
#include <ID/Modify.hpp>
#include <ID/Func.hpp>
#include <ID/Data.hpp>

namespace
	Archetype
{
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"BasicShape"
		>
	=	Layout::InfoV
		<	"Height"
		,	Float
		>
	+	Layout::InfoV
		<	"Width"
		,	Float
		>
	+	Layout::InfoV
		<	"Color"
		,	RGBAColor
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Rectangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	Fraction
			<>
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Square"
		>
	=	LayoutConfig
		<	"Rectangle"
		>
	-	Layout::InfoV
		<	"Height"
		,	Float
		>
	+	Layout::Alias
		<	"Height"
		,	"Width"
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Triangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	Fraction
			<	1_sz
			,	2_sz
			>
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Ellipse"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	πFraction
			<	1_sz
			,	4_sz
			>
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Circle"
		>
	=	LayoutConfig
		<	"Ellipse"
		>
		//	subtract Height member
	-	(	LayoutConfig
			<	"Rectangle"
			>
		-	LayoutConfig
			<	"Square"
			>
		)
		//	add Height alias
	+	(	LayoutConfig
			<	"Square"
			>
		-	LayoutConfig
			<	"Rectangle"
			>
		)
	;
}

namespace
	Shapes2D
{
	using
		Square
	=	Archetype::Make
		<	"Square"
		>
	;
	
	using
		Rectangle
	=	Archetype::Make
		<	"Rectangle"
		>
	;
	
	using
		Triangle
	=	Archetype::Make
		<	"Triangle"
		>
	;
	
	using
		Circle
	=	Archetype::Make
		<	"Circle"
		>
	;
	
	using
		Ellipse
	=	Archetype::Make
		<	"Ellipse"
		>
	;
	
	static_assert(AdditionalSize<Square, 1> == 4);
	static_assert(AdditionalSize<Rectangle, 2> == 4);
	static_assert(AdditionalSize<Triangle, 2> == 4);
	static_assert(AdditionalSize<Circle, 1> == 4);
	static_assert(AdditionalSize<Ellipse, 2> == 4);
	
	static_assert(SizeMinimal<Square, 1>);
	static_assert(SizeMinimal<Rectangle, 2>);
	static_assert(SizeMinimal<Triangle, 2>);
	static_assert(SizeMinimal<Circle, 1>);
	static_assert(SizeMinimal<Ellipse, 2>);
	
	using
		AreaComputer
	=	Function::VirtualArgument
		<	void const
			*
		,	Function::Virtual
			<	"ComputeArea"
			,	auto(	void const
						*
					)
				noexcept
				->	Float
			>
		>
	;
}

namespace
	Function
{
	using
		ID::operator""_dID
	;
	using
		ID::operator""_fID
	;
	using
		ID::operator""_trim
	;
	
	/// simply returns a member
	static inline
	auto
		Body
		(	FunctionName<"ReturnMember">
		,	ArgumentDependencyInstance auto
				i_vObject
		)
	noexcept
	->	decltype(auto)
	{	return
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
	static constexpr
	auto
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
	static inline
	auto
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
	
	template
		<	typename
				t_tShape
		>
	requires
		ValidAddress
		<	ID::FuncT<"GetComputeAreaMultiplier">
		,	t_tShape const
			&
		>
	and ValidAddress
		<	ID::FuncT<"GetHeight">
		,	t_tShape const
			&
		>
	and	ValidAddress
		<	ID::FuncT<"GetWidth">
		,	t_tShape const
			&
		>
	static constexpr
	auto
		MapAddress
		(	ID::FuncT<"ComputeArea">
		,	t_tShape const
			&
		)
	{
		return
			MakeProductAddress
			<	t_tShape
			,	MapFuncID("GetComputeAreaMultiplier")
			->* "Constant"
			,	MapFuncID("GetHeight")
			->* "Get0"
			,	MapFuncID("GetWidth")
			->* "Get1"
			>()
		;
	}
}
