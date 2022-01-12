#pragma once

#include <Evaluation/VirtualShapes.hpp>

namespace
	Bodies3D
{
	struct
		IBody
	{
		virtual
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		=	0
		;
		
		virtual
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		=	0
		;
		
		virtual
		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		=	0
		;
		
		virtual
		auto
			ComputeVolume
			()	const
		noexcept
		->	Float
		=	0
		;
		
		virtual
			compl
			IBody
			()
			noexcept
		=	default
		;
	};
	
	struct
		BasicBody
	:	IBody
	{
		virtual
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		=	0
		;
		
		auto
			ComputeVolume
			()	const
		noexcept
		->	Float
		override
		{
			return
				GetComputeVolumeMultiplier
				()
			*	GetDepth
				()
			*	GetHeight
				()
			*	GetWidth
				()
			;
		}
	};
	
	template
		<	typename
				t_tShape
		>
	struct
		ExtendedShape
	:	BasicBody
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
		override
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
		override
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
				t_tShape
		>
	struct
		CubicBody
	:	ExtendedShape
		<	t_tShape
		>
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
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
		<	Shapes2D::Square
		>
	{
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				this
				->	Shapes2D
				.	Width
			;
		}
	};
	
	struct
		Cuboid
	:	CubicBody
		<	Shapes2D::Rectangle
		>
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
		override
		{
			return
				Depth
			;
		}
	};
	
	template
		<	typename
				t_tShape
		>
	struct
		PyramidicBody
	:	ExtendedShape
		<	t_tShape
		>
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
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
		<	Shapes2D::Triangle
		>
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
		override
		{
			return
				Depth
			;
		}
	};
	
	template
		<	typename
				t_tShape
		>
	struct
		SphericBody
	:	ExtendedShape
		<	t_tShape
		>
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				πFraction
				<	1_sz
				,	6_sz
				>{}
			;
		}
	};
	
	struct
		Sphere
	:	SphericBody
		<	Shapes2D::Circle
		>
	{
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				this
				->	Shapes2D
				.	Width
			;
		}
	};
	
	struct
		Cylinder
	:	ExtendedShape
		<	Shapes2D::Circle
		>
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
		override
		{
			return
				Depth
			;
		}
		
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
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
		<	Shapes2D::Circle
		>
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
		override
		{
			return
				Depth
			;
		}
		
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
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
		<	Shapes2D::Ellipse
		>
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
		override
		{
			return
				Depth
			;
		}
	};
	
	struct
		Head
	:	Sphere
	{
		Sphere
			LeftEye
		;
		Sphere
			RightEye
		;
	};
	
	static_assert(AdditionalSize<Cube, 1> == 20);
	static_assert(AdditionalSize<Cuboid, 3> == 20);
	static_assert(AdditionalSize<Pyramid, 3> == 20);
	static_assert(AdditionalSize<Sphere, 1> == 20);
	static_assert(AdditionalSize<Cylinder, 2> == 20);
	static_assert(AdditionalSize<Cone, 2> == 20);
	static_assert(AdditionalSize<Ellipsoid, 3> == 20);
	static_assert(AdditionalSize<Head, 3, 3> == 60);
	
	static_assert(not SizeMinimal<Cube, 1>);
	static_assert(not SizeMinimal<Cuboid, 3>);
	static_assert(not SizeMinimal<Pyramid, 3>);
	static_assert(not SizeMinimal<Sphere, 1>);
	static_assert(not SizeMinimal<Cylinder, 2>);
	static_assert(not SizeMinimal<Cone, 2>);
	static_assert(not SizeMinimal<Ellipsoid, 3>);
	static_assert(not SizeMinimal<Head, 3, 3>);
}
