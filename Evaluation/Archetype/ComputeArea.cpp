export module Evaluation.Archetype.ComputeArea;

export import Evaluation.Shared;
export import Evaluation.Archetype.ReturnMember;
export import Evaluation.Archetype.Product;

export import <Function/VirtualArgument.hpp>;

export namespace
	Shapes2D
{
	using
		AreaComputer
	=	Function::VirtualArgument
		<	void const
			*
		,	Function::Virtual
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
	Function
{
	template
		<	typename
				t_tShape
		>
	requires
		ValidAddress
		<	ID::FuncT<"GetComputeAreaMultiplier">
		,	t_tShape const
			&
		>
	and ValidAddress
		<	ID::FuncT<"GetHeight">
		,	t_tShape const
			&
		>
	and	ValidAddress
		<	ID::FuncT<"GetWidth">
		,	t_tShape const
			&
		>
	auto constexpr
		MapAddress
		(	ID::FuncT<"ComputeArea">
		,	t_tShape const
			&
		)
	{
		return
			MakeProductAddress
			<	t_tShape
			,	MapFuncID("GetComputeAreaMultiplier")
			->* "Constant"
			,	MapFuncID("GetHeight")
			->* "Get0"
			,	MapFuncID("GetWidth")
			->* "Get1"
			>()
		;
	}
}


