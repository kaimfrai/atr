export module Evaluation.Archetype:Square;

export import :Rectangle;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Square"
		>
	=	LayoutConfig<"Rectangle">
		(	Alias
			<	"Height"
			,	"Width"
			>
		)
	;
}
