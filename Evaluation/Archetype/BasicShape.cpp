export module Evaluation.Archetype.BasicShape;

import Evaluation.Shared;

export import ID.StringLiteral;
export import ID.Data;
export import Layout.Union;
export import Layout.DataMember;
export import Archetype.LayoutInfo;

#include <Pack/Accumulate.hpp>

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"BasicShape"
		>
	=	Layout::InfoV
		<	"Height"
		,	Float
		>
	+	Layout::InfoV
		<	"Width"
		,	Float
		>
	+	Layout::InfoV
		<	"Color"
		,	RGBAColor
		>
	;
}
