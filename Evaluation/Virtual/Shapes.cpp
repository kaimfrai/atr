export module Evaluation.Virtual.Shapes;

export import Evaluation.Shared;

export namespace
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
				<	1z
				,	4z
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
}

static_assert(AdditionalSize<Shapes2D::Square, 1, 1> == 12);
static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 12);
static_assert(AdditionalSize<Shapes2D::Triangle, 2, 1> == 12);
static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 12);
static_assert(AdditionalSize<Shapes2D::Ellipse, 2, 1> == 12);
static_assert(not SizeMinimal<Shapes2D::Square, 1, 1>);
static_assert(not SizeMinimal<Shapes2D::Rectangle, 2, 1>);
static_assert(not SizeMinimal<Shapes2D::Triangle, 2, 1>);
static_assert(not SizeMinimal<Shapes2D::Circle, 1, 1>);
static_assert(not SizeMinimal<Shapes2D::Ellipse, 2, 1>);
