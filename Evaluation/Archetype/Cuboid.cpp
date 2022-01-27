export module Evaluation.Archetype.Cuboid;

export import Evaluation.Shared.SizeCheck;
export import Archetype.Instance;
export import Evaluation.Archetype.Cuboid.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Cuboid
	=	Archetype::Make
		<	"Cuboid"
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
		,	Bodies3D::Cuboid const&
		>
	)	(	Bodies3D::Cuboid const&
		)
	noexcept
	->	decltype(auto)
	;
}

static_assert(AdditionalSize<Bodies3D::Cuboid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cuboid, 3, 1>);
