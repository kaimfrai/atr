export module Evaluation.Archetype.Ellipsoid;

export import Archetype.Instance;
export import Evaluation.Shared;
export import Evaluation.Archetype.BasicBody;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Ellipsoid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	πFraction
			<	1z
			,	6z
			>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Ellipsoid
	=	Archetype::Make
		<	"Ellipsoid"
		>
	;
}

export namespace
	Function
{
	template<>
	auto constexpr
	(	Invoke
		<	ID::FuncT<"ComputeVolume">
		,	Bodies3D::Ellipsoid const&
		>
	)	(	Bodies3D::Ellipsoid const&
		)
	noexcept
	->	decltype(auto)
	;
}

static_assert(AdditionalSize<Bodies3D::Ellipsoid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);
