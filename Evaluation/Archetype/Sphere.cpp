export module Evaluation.Archetype.Sphere;

export import Evaluation.Shared.SizeCheck;
export import ATR.Instance;
export import Evaluation.Archetype.Sphere.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Sphere
	=	ATR::Type
		<	"Sphere"
		>
	;
}

export namespace
	ATR
{
	template<>
	auto constexpr
	(	Invoke
		<	ID_T<"ComputeVolume">
		,	Bodies3D::Sphere const&
		>
	)	(	Bodies3D::Sphere const&
		)
	noexcept
	->	decltype(auto)
	;
}

static_assert(AdditionalSize<Bodies3D::Sphere, 1, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);
