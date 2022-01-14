export module Evaluation.Archetype.BasicBody;

import Evaluation.Shared;
import Evaluation.Archetype.BasicShape;

export import ID.StringLiteral;
export import ID.Data;
export import Archetype.LayoutInfo;
export import Layout.Union;
export import Layout.DataMember;

export import Pack.Accumulate;

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
