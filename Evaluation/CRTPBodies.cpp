export module Evaluation.CRTPBodies;

export import Evaluation.CRTPShapes;

export namespace
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
				<	1z
				,	6z
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
				<	1z
				,	4z
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
				<	1z
				,	12z
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
}


static_assert(AdditionalSize<Bodies3D::Cube, 1, 1> == 4);
static_assert(AdditionalSize<Bodies3D::Cuboid, 3, 1> == 4);
static_assert(AdditionalSize<Bodies3D::Pyramid, 3, 1> == 4);
static_assert(AdditionalSize<Bodies3D::Sphere, 1, 1> == 4);
static_assert(AdditionalSize<Bodies3D::Cylinder, 2, 1> == 4);
static_assert(AdditionalSize<Bodies3D::Cone, 2, 1> == 4);
static_assert(AdditionalSize<Bodies3D::Ellipsoid, 3, 1> == 4);
static_assert(AdditionalSize<Bodies3D::Head, 3, 3> == 12);

static_assert(SizeMinimal<Bodies3D::Cube, 1, 1>);
static_assert(SizeMinimal<Bodies3D::Cuboid, 3, 1>);
static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1>);
static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);
static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1>);
static_assert(SizeMinimal<Bodies3D::Cone, 2, 1>);
static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);
static_assert(not SizeMinimal<Bodies3D::Head, 3, 3>);
