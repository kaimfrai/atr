export module Evaluation.Archetype.Cube;

export import Evaluation.Shared.SizeCheck;
export import Archetype.Instance;
export import Evaluation.Archetype.Cube.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Cube
	=	Archetype::Make
		<	"Cube"
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
		,	Bodies3D::Cube const&
		>
	)	(	Bodies3D::Cube const&
		)
	noexcept
	->	decltype(auto)
	;
}

static_assert(AdditionalSize<Bodies3D::Cube, 1, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cube, 1, 1>);
