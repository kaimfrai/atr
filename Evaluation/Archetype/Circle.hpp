export module Evaluation.Archetype:Circle;

export import :Ellipse;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"Ellipse"
		>(	Alias
			<	"Height"
			,	"Width"
			>
		)
	>	extern
		LayoutConfig
		<	"Circle"
		>
	;
}
