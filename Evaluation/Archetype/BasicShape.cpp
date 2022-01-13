export module Evaluation.Archetype.BasicShape;

import Evaluation.Shared;

export import Archetype.LayoutInfo;
export import Layout.Union;
export import Layout.DataMember;

#include <Pack/Accumulate.hpp>
#include <ID/StringLiteral.hpp>
#include <ID/Data.hpp>

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
