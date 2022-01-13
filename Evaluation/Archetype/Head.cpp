export module Evaluation.Archetype.Head;

import Evaluation.Shared;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.ComputeVolume;

export import Archetype.Instance;
import Archetype.LayoutInfo;
import Function.Address;

#include <Layout/Concatenate.hpp>
#include <Layout/LayoutCreator.hpp>

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
