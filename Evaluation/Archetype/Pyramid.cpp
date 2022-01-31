export module Evaluation.Archetype.Pyramid;

export import Evaluation.Shared.SizeCheck;
export import ATR.Instance;
export import Evaluation.Archetype.Pyramid.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Pyramid
	=	ATR::Type
		<	"Pyramid"
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
