export module Evaluation.Archetype:BasicBody;

export import :BasicShape;

export import Evaluation.Shared;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"BasicBody"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Member
		<	"Depth"
		,	Float
		>
	;
}
