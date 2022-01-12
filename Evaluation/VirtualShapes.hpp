#pragma once

#include "Shared.hpp"

namespace
	Shapes2D
{
	struct
		IShape
	{
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
			ComputeArea
			()	const
		noexcept
		->	Float
		=	0
		;
		
		virtual
			compl
			IShape
			()
			noexcept
		=	default
		;
	};
	
	struct
		BasicShape
	:	IShape
	{
		RGBAColor
			Color
		;
		
		virtual
		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
		=	0
		;
		
		auto
			ComputeArea
			()	const
		noexcept
		->	Float
		override
		{
			return
				GetComputeAreaMultiplier
				()
			*	GetHeight
				()
			*	GetWidth
				()
			;
		}
	};
	
	struct
		RectangularShape
	:	BasicShape
	{
		Float
			Width
		;
		
		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
		
		auto
			GetComputeAreaMultiplier
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
		Square
	:	RectangularShape
	{
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
	};
	
	struct
		Rectangle
	:	RectangularShape
	{
		Float
			Height
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
				Height
			;
		}
	};
	
	struct
		TriangularShape
	:	BasicShape
	{
		Float
			Width
		;
		
		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
		
		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				Fraction
				<	1ll
				,	2ll
				>{}
			;
		}
	};
	
	struct
		Triangle
	:	TriangularShape
	{
		Float
			Height
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
				Height
			;
		}
	};
	
	struct
		CircularShape
	:	BasicShape
	{
		Float
			Width
		;
		
		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
		
		auto
			GetComputeAreaMultiplier
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
		Circle
	:	CircularShape
	{
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
	};
	
	struct
		Ellipse
	:	CircularShape
	{
		Float
			Height
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
				Height
			;
		}
	};
	
	static_assert(AdditionalSize<Square, 1> == 12);
	static_assert(AdditionalSize<Rectangle, 2> == 12);
	static_assert(AdditionalSize<Triangle, 2> == 12);
	static_assert(AdditionalSize<Circle, 1> == 12);
	static_assert(AdditionalSize<Ellipse, 2> == 12);
	static_assert(not SizeMinimal<Square, 1>);
	static_assert(not SizeMinimal<Rectangle, 2>);
	static_assert(not SizeMinimal<Triangle, 2>);
	static_assert(not SizeMinimal<Circle, 1>);
	static_assert(not SizeMinimal<Ellipse, 2>);
}
