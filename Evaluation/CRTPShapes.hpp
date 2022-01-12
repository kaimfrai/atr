#pragma once

#include "Shared.hpp"

namespace
	Shapes2D
{
	template
		<	typename
				t_tShape
		>
	struct
		BasicShape
	{
		RGBAColor
			Color
		;
		
		auto
			ComputeArea
			()	const
		noexcept
		->	Float
		{
			t_tShape const
			&	rBody
			=	*static_cast
				<	t_tShape const
					*
				>(	this
				)
			;
			return
				rBody
				.	GetComputeAreaMultiplier
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
				t_tShape
		>
	struct
		HeightIsWidth
	{
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		{
			return
				static_cast
				<	t_tShape const
					*
				>(	this
				)->	Width
			;
		}
	};
	
	struct
		SeparateWidth
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
		{
			return
				Width
			;
		}
	};
	
	struct
		SeparateHeight
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
		{
			return
				Height
			;
		}
	};
	
	template
		<	typename
				t_tShape
		>
	struct
		RectangularShape
	:	BasicShape
		<	t_tShape
		>
	,	SeparateWidth
	{
		auto
			GetComputeAreaMultiplier
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
		Square
	:	RectangularShape
		<	Square
		>
	,	HeightIsWidth
		<	Square
		>
	{};
	
	struct
		Rectangle
	:	RectangularShape
		<	Rectangle
		>
	,	SeparateHeight
	{};
	
	template
		<	typename
				t_tShape
		>
	struct
		TriangularShape
	:	BasicShape
		<	t_tShape
		>
	,	SeparateWidth
	{
		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
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
		<	Triangle
		>
	,	SeparateHeight
	{};
	
	template
		<	typename
				t_tShape
		>
	struct
		CircularShape
	:	BasicShape
		<	t_tShape
		>
	,	SeparateWidth
	{
		auto
			GetComputeAreaMultiplier
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
		Circle
	:	CircularShape
		<	Circle
		>
	,	HeightIsWidth
		<	Circle
		>
	{};
	
	struct
		Ellipse
	:	CircularShape
		<	Ellipse
		>
	,	SeparateHeight
	{};
	
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
}
