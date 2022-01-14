export module Evaluation.Archetype.Head;

import Evaluation.Shared;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.ComputeVolume;

export import ID.StringLiteral;
export import ID.Data;
export import ID.Modify;
export import Archetype.Instance;
import Archetype.LayoutInfo;
import Function.Address;
export import Layout.Concatenate;
export import Layout.LayoutCreator;

export import Pack.SplitBest;
export import Pack.Filter;
export import Pack.Sort;
export import Pack.Accumulate;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Head"
		>
	=	LayoutConfig
		<	"Sphere"
		>
	+	SuffixedLayoutConfig
		<	"Sphere"
		,	"LeftEye"
		>
	+	SuffixedLayoutConfig
		<	"Sphere"
		,	"RightEye"
		>
	;
}

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

// export namespace
// 	Function
// {
// 	template<>
// 	auto constexpr
// 	(	Invoke
// 		<	ID::FuncT<"ComputeVolume">
// 		,	Bodies3D::Head const&
// 		>
// 	)	(	Bodies3D::Head const&
// 		)
// 	noexcept
// 	->	decltype(auto)
// 	;
// }

static_assert(AdditionalSize<Bodies3D::Head, 3, 3> == 4);
static_assert(SizeMinimal<Bodies3D::Head, 3, 3>);
