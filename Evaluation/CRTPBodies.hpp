#pragma once

#include <Evaluation/CRTPShapes.hpp>
#include "Shared.hpp"

namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		>
	struct
		BasicBody
	{
		auto
			ComputeVolume
			()	const
		noexcept
		->	Float
		{
			t_tBody const
			&	rBody
			=	*static_cast
				<	t_tBody const
					*
				>(	this
				)
			;
			
			return
				rBody
				.	GetComputeVolumeMultiplier
					()
			*	rBody
				.	GetDepth
					()
			*	rBody
				.	GetHeight
					()
			*	rBody
				.	GetWidth
					()
			;
		}
	};
	
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		ExtendedShape
	:	BasicBody
		<	t_tBody
		>
	{
		t_tShape
			Shapes2D
		;
		
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		{
			return
				Shapes2D
				.	GetHeight
					()
			;
		}
		
		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		{
			return
				Shapes2D
				.	GetWidth
					()
			;
		}
	};
	
	template
		<	typename
				t_tBody
		>
	struct
		DepthIsWidth
	{
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		{
			return
				static_cast
				<	t_tBody const
					*
				>(	this
				)->	Shapes2D
				.	Width
			;
		}
	};
	
	struct
		SeparateDepth
	{
		Float
			Depth
		;
		
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		{
			return
				Depth
			;
		}
	};
	

	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		CubicBody
	:	ExtendedShape
		<	t_tBody
		,	t_tShape
		>
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				Fraction
				<>{}
			;
		}
	};
	
	struct
		Cube
	:	CubicBody
		<	Cube
		,	Shapes2D::Square
		>
	,	DepthIsWidth
		<	Cube
		>
	{};
	
	struct
		Cuboid
	:	CubicBody
		<	Cuboid
		,	Shapes2D::Rectangle
		>
	,	SeparateDepth
	{};
	
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		PyramidicBody
	:	ExtendedShape
		<	t_tBody
		,	t_tShape
		>
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				Fraction
				<	1ll
				,	3ll
				>{}
			;
		}
	};
	
	struct
		Pyramid
	:	PyramidicBody
		<	Pyramid
		,	Shapes2D::Triangle
		>
	,	SeparateDepth
	{};
	
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		SphericBody
	:	ExtendedShape
		<	t_tBody
		,	t_tShape
		>
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				πFraction
				<	1_sz
				,	6_sz
				>{}
			;
		}
	};
	
	template
		<	typename
				t_tSphere
		>
	struct
		BasicSphere
	:	SphericBody
		<	t_tSphere
		,	Shapes2D::Circle
		>
	,	DepthIsWidth
		<	t_tSphere
		>
	{};
	
	struct
		Sphere
	:	BasicSphere
		<	Sphere
		>
	{};
	
	struct
		Cylinder
	:	ExtendedShape
		<	Cylinder
		,	Shapes2D::Circle
		>
	,	SeparateDepth
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				πFraction
				<	1_sz
				,	4_sz
				>{}
			;
		}
	};
	
	struct
		Cone
	:	ExtendedShape
		<	Cone
		,	Shapes2D::Circle
		>
	,	SeparateDepth
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				πFraction
				<	1_sz
				,	12_sz
				>{}
			;
		}
	};
	
	struct
		Ellipsoid
	:	SphericBody
		<	Ellipsoid
		,	Shapes2D::Ellipse
		>
	,	SeparateDepth
	{};
	
	struct
		Head
	:	BasicSphere
		<	Head
		>
	{
		Sphere
			LeftEye
		;
		Sphere
			RightEye
		;
	};
	
	static_assert(AdditionalSize<Cube, 1> == 4);
	static_assert(AdditionalSize<Cuboid, 3> == 4);
	static_assert(AdditionalSize<Pyramid, 3> == 4);
	static_assert(AdditionalSize<Sphere, 1> == 4);
	static_assert(AdditionalSize<Cylinder, 2> == 4);
	static_assert(AdditionalSize<Cone, 2> == 4);
	static_assert(AdditionalSize<Ellipsoid, 3> == 4);
	static_assert(AdditionalSize<Head, 3, 3> == 12);
	
	static_assert(SizeMinimal<Cube, 1>);
	static_assert(SizeMinimal<Cuboid, 3>);
	static_assert(SizeMinimal<Pyramid, 3>);
	static_assert(SizeMinimal<Sphere, 1>);
	static_assert(SizeMinimal<Cylinder, 2>);
	static_assert(SizeMinimal<Cone, 2>);
	static_assert(SizeMinimal<Ellipsoid, 3>);
	static_assert(not SizeMinimal<Head, 3, 3>);
}
