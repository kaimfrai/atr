export module Evaluation.Archetype.Ellipsoid;

export import Evaluation.Shared.SizeCheck;
export import Archetype.Instance;
export import Evaluation.Archetype.Ellipsoid.Layout;
export import Evaluation.Archetype.ComputeVolume;

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
		<	::ID::MakeT<"ComputeVolume">
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
