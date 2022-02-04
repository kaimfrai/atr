export module Evaluation.Archetype.Head;

export import Evaluation.Shared.SizeCheck;
export import ATR.Instance;
export import Evaluation.Archetype.Head.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Head
	=	ATR::Type
		<	"Head"
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
		,	Bodies3D::Head const&
		>
	)	(	Bodies3D::Head const&
		)
	noexcept
	->	decltype(auto)
	;
}

using T = Bodies3D::Head::LayoutType;
auto constexpr inline f = Meta::Type<Bodies3D::Head::LayoutType>;

static_assert(AdditionalSize<Bodies3D::Head, 3, 3> == 4);
static_assert(SizeMinimal<Bodies3D::Head, 3, 3>);
