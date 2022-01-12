#pragma once

#include <Evaluation/ArchetypeShapes.hpp>

namespace
	Archetype
{
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"BasicBody"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"Depth"
		,	Float
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Cuboid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<>
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Cube"
		>
	=	LayoutConfig
		<	"Cuboid"
		>
	-	Layout::InfoV
		<	"Depth"
		,	Float
		>
	+	Layout::Alias
		<	"Depth"
		,	"Width"
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
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Pyramid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<	1_sz
			,	3_sz
			>
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Ellipsoid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	πFraction
			<	1_sz
			,	6_sz
			>
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Sphere"
		>
	=	LayoutConfig
		<	"Ellipsoid"
		>
		//	subtract Height & Depth member
	-	(	LayoutConfig
			<	"Cuboid"
			>
		-	LayoutConfig
			<	"Cube"
			>
		)
		//	add Height & Depth alias
	+	(	LayoutConfig
			<	"Cube"
			>
		-	LayoutConfig
			<	"Cuboid"
			>
		)
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Cylinder"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	-	(	LayoutConfig
			<	"Ellipse"
			>
		-	LayoutConfig
			<	"Circle"
			>
		)
	+	(	LayoutConfig
			<	"Circle"
			>
		-	LayoutConfig
			<	"Ellipse"
			>
		)
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
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
		<	"Cone"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	-	(	LayoutConfig
			<	"Ellipse"
			>
		-	LayoutConfig
			<	"Circle"
			>
		)
	+	(	LayoutConfig
			<	"Circle"
			>
		-	LayoutConfig
			<	"Ellipse"
			>
		)
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	πFraction
			<	1_sz
			,	12_sz
			>
		>
	;
	
	template<>
	constexpr inline
	auto
		LayoutConfig
		<	"Head"
		>
	=	LayoutConfig
		<	"Sphere"
		>
	+	SuffixedLayoutConfig
		<	"Sphere"
		,	"LeftEye"
		>
	+	SuffixedLayoutConfig
		<	"Sphere"
		,	"RightEye"
		>
	;
}

namespace
	Bodies3D
{
	using
		Cube
	=	Archetype::Make
		<	"Cube"
		>
	;
	
	using
		Cuboid
	=	Archetype::Make
		<	"Cuboid"
		>
	;
	
	using
		Pyramid
	=	Archetype::Make
		<	"Pyramid"
		>
	;
	
	using
		Sphere
	=	Archetype::Make
		<	"Sphere"
		>
	;
	
	using
		Cylinder
	=	Archetype::Make
		<	"Cylinder"
		>
	;
	
	using
		Cone
	=	Archetype::Make
		<	"Cone"
		>
	;
	
	using
		Ellipsoid
	=	Archetype::Make
		<	"Ellipsoid"
		>
	;
	
	using
		Head
	=	Archetype::Make
		<	"Head"
		>
	;
	
	static_assert(AdditionalSize<Cube, 1> == 4);
	static_assert(AdditionalSize<Cuboid, 3> == 4);
	static_assert(AdditionalSize<Pyramid, 3> == 4);
	static_assert(AdditionalSize<Sphere, 1> == 4);
	static_assert(AdditionalSize<Cylinder, 2> == 4);
	static_assert(AdditionalSize<Cone, 2> == 4);
	static_assert(AdditionalSize<Ellipsoid, 3> == 4);
	static_assert(AdditionalSize<Head, 3, 3> == 4);
	
	static_assert(SizeMinimal<Cube, 1>);
	static_assert(SizeMinimal<Cuboid, 3>);
	static_assert(SizeMinimal<Pyramid, 3>);
	static_assert(SizeMinimal<Sphere, 1>);
	static_assert(SizeMinimal<Cylinder, 2>);
	static_assert(SizeMinimal<Cone, 2>);
	static_assert(SizeMinimal<Ellipsoid, 3>);
	static_assert(SizeMinimal<Head, 3, 3>);
	
	using
		VolumeComputer
	=	Function::VirtualArgument
		<	void const
			*
		,	Function::Virtual
			<	"ComputeVolume"
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
	template
		<	typename
				t_tBody
		>
	requires
		ValidAddress
		<	ID::FuncT<"GetComputeVolumeMultiplier">
		,	t_tBody const
			&
		>
	and ValidAddress
		<	ID::FuncT<"GetDepth">
		,	t_tBody const
			&
		>
	and	ValidAddress
		<	ID::FuncT<"GetHeight">
		,	t_tBody const
			&
		>
	and	ValidAddress
		<	ID::FuncT<"GetWidth">
		,	t_tBody const
			&
		>
	static constexpr
	auto
		MapAddress
		(	ID::FuncT<"ComputeVolume">
		,	t_tBody const
			&
		)
	{
		return
			MakeProductAddress
			<	t_tBody
			,	MapFuncID("GetComputeVolumeMultiplier")
			->* "Constant"
			,	MapFuncID("GetDepth")
			->* "Get0"
			,	MapFuncID("GetHeight")
			->* "Get1"
			,	MapFuncID("GetWidth")
			->* "Get2"
			>()
		;
	}
	
	static_assert(Address<ID::FuncT<"ComputeVolume">, Bodies3D::Head const&>() == Address<ID::FuncT<"ComputeVolume">, Bodies3D::Sphere const&>());
}
