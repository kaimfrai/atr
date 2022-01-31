export module Evaluation.Archetype.Cylinder;

export import Evaluation.Shared.SizeCheck;
export import ATR.Instance;
export import Evaluation.Archetype.Cylinder.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Cylinder
	=	ATR::Type
		<	"Cylinder"
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
		,	Bodies3D::Cylinder const&
		>
	)	(	Bodies3D::Cylinder const&
		)
	noexcept
	->	decltype(auto)
	;
}

static_assert(AdditionalSize<Bodies3D::Cylinder, 2, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1>);
