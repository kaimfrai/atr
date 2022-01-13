export module Evaluation.Archetype.BasicBody;

import Evaluation.Shared;
import Evaluation.Archetype.BasicShape;

export import Archetype.LayoutInfo;
#include <ID/StringLiteral.hpp>
#include <Layout/Union.hpp>
#include <Layout/DataMember.hpp>

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
