export module Evaluation.Archetype.Cuboid;

import Evaluation.Shared;
import Evaluation.Archetype.BasicBody;
import Evaluation.Archetype.ComputeVolume;

export import Archetype.Instance;
import <Archetype/LayoutInfo.hpp>;
import Function.Address;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cuboid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<>
		>
	;
}

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
		<	ID::FuncT<"ComputeVolume">
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
