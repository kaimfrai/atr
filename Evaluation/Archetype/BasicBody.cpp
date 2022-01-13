export module Evaluation.Archetype.BasicBody;

import Evaluation.Shared;
import Evaluation.Archetype.BasicShape;

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
		<	"BasicBody"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"Depth"
		,	Float
		>
	;
}
