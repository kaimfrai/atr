export module Evaluation.Archetype.ComputeVolume;

import Evaluation.Shared;
export import Evaluation.Archetype.ReturnMember;
export import Evaluation.Archetype.Product;

import <Function/VirtualArgument.hpp>;
export import <Function/ConstantIDMap.hpp>;

export namespace
	Bodies3D
{
	using
		VolumeComputer
	=	Function::VirtualArgument
		<	void const
			*
		,	Function::Virtual
			<	"ComputeVolume"
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
				t_tBody
		>
	requires
		ValidAddress
		<	ID::FuncT<"GetComputeVolumeMultiplier">
		,	t_tBody const
			&
		>
	and ValidAddress
		<	ID::FuncT<"GetDepth">
		,	t_tBody const
			&
		>
	and	ValidAddress
		<	ID::FuncT<"GetHeight">
		,	t_tBody const
			&
		>
	and	ValidAddress
		<	ID::FuncT<"GetWidth">
		,	t_tBody const
			&
		>
	auto constexpr
		MapAddress
		(	ID::FuncT<"ComputeVolume">
		,	t_tBody const
			&
		)
	{
		return
			MakeProductAddress
			<	t_tBody
			,	MapFuncID("GetComputeVolumeMultiplier")
			->* "Constant"
			,	MapFuncID("GetDepth")
			->* "Get0"
			,	MapFuncID("GetHeight")
			->* "Get1"
			,	MapFuncID("GetWidth")
			->* "Get2"
			>()
		;
	}
}
