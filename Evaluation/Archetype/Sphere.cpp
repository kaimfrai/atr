export module Evaluation.Archetype.Sphere;

export import Archetype.Instance;
export import Evaluation.Archetype.Ellipsoid;
export import Evaluation.Archetype.Cuboid;
export import Evaluation.Archetype.Cube;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
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
}

export namespace
	Bodies3D
{
	using
		Sphere
	=	Archetype::Make
		<	"Sphere"
		>
	;
}

// export namespace
// 	Function
// {
// 	template<>
// 	auto constexpr
// 	(	Invoke
// 		<	ID::FuncT<"ComputeVolume">
// 		,	Bodies3D::Sphere const&
// 		>
// 	)	(	Bodies3D::Sphere const&
// 		)
// 	noexcept
// 	->	decltype(auto)
// 	;
// }

static_assert(AdditionalSize<Bodies3D::Sphere, 1, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);
