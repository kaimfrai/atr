export module Evaluation.Archetype.Head;

export import Evaluation.Shared.SizeCheck;
export import Archetype.Instance;
export import Evaluation.Archetype.Head.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Bodies3D
{
	using
		Head
	=	Archetype::Make
		<	"Head"
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
		,	Bodies3D::Head const&
		>
	)	(	Bodies3D::Head const&
		)
	noexcept
	->	decltype(auto)
	;
}

static_assert(AdditionalSize<Bodies3D::Head, 3, 3> == 4);
static_assert(SizeMinimal<Bodies3D::Head, 3, 3>);
