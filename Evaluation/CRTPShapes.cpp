export module Evaluation.CRTPShapes;

export import Evaluation.Shared;

export namespace
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
				<	1z
				,	4z
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
}

static_assert(AdditionalSize<Shapes2D::Square, 1, 1> == 4);
static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 4);
static_assert(AdditionalSize<Shapes2D::Triangle, 2, 1> == 4);
static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 4);
static_assert(AdditionalSize<Shapes2D::Ellipse, 2, 1> == 4);

static_assert(SizeMinimal<Shapes2D::Square, 1, 1>);
static_assert(SizeMinimal<Shapes2D::Rectangle, 2, 1>);
static_assert(SizeMinimal<Shapes2D::Triangle, 2, 1>);
static_assert(SizeMinimal<Shapes2D::Circle, 1, 1>);
static_assert(SizeMinimal<Shapes2D::Ellipse, 2, 1>);
