export module Evaluation.Archetype.ComputeArea;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Archetype.Product;
export import ATR.VirtualArgument;
export import ATR.DependencyIDMap;

export namespace
	Shapes2D
{
	using
		AreaComputer
	=	ATR::VirtualArgument
		<	void const
			*
		,	ATR::Virtual
			<	"ComputeArea"
			,	auto(	void const
						*
					)
				noexcept
				->	Float
			>
		>
	;
}

export namespace
	ATR
{
	auto constexpr
	(	MapAddress
	)	(	ID_T<"ComputeArea">
		,	ProtoObjectMember
			<	"ComputeAreaMultiplier"
			,	"Height"
			,	"Width"
			>	auto const
			&	i_rShape
		)
	->	Function
		<	StaticDependency<"Product">
		,	ArgumentDependency
			<	decltype(i_rShape)
			,	MapID
				(	"ComputeAreaMultiplier"_id
				,	"a"_id
				)
			,	MapID
				(	"Height"_id
				,	"b"_id
				)
			,	MapID
				(	"Width"_id
				,	"c"_id
				)
			>
		>
	;
}


