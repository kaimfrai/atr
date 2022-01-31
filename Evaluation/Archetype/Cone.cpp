export module Evaluation.Archetype.Cone;

export import Evaluation.Shared.SizeCheck;
export import ATR.Instance;
export import Evaluation.Archetype.Cone.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Cone
	=	ATR::Type
		<	"Cone"
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
		,	Bodies3D::Cone const&
		>
	)	(	Bodies3D::Cone const&
		)
	noexcept
	->	decltype(auto)
	;
}

static_assert(AdditionalSize<Bodies3D::Cone, 2, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cone, 2, 1>);
