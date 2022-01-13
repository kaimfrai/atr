export module Evaluation.Archetype.Cone;

import Evaluation.Shared;
import Evaluation.Archetype.BasicBody;
import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Ellipse;
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
		<	"Cone"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	-	(	LayoutConfig
			<	"Ellipse"
			>
		-	LayoutConfig
			<	"Circle"
			>
		)
	+	(	LayoutConfig
			<	"Circle"
			>
		-	LayoutConfig
			<	"Ellipse"
			>
		)
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	πFraction
			<	1_sz
			,	12_sz
			>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Cone
	=	Archetype::Make
		<	"Cone"
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
