export module Evaluation.Archetype.Pyramid;

export import Evaluation.Shared.SizeCheck;
export import Archetype.Instance;
export import Evaluation.Archetype.Pyramid.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Pyramid
	=	Archetype::Make
		<	"Pyramid"
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
		,	Bodies3D::Pyramid const&
		>
	)	(	Bodies3D::Pyramid const&
		)
	noexcept
	->	decltype(auto)
	;
}

static_assert(AdditionalSize<Bodies3D::Pyramid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1>);
