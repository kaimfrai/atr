export module Evaluation.TagATR.Interface;

import ATR.District.ExcludingHeap;

import Meta.Token.TypeID;

import Std;

using ::ATR::District::ExcludingHeap;
using ::ATR::District::Info;

using ::Meta::TypeID;

export namespace
	Bodies3D
{
	using
		LocalBody
	=	ExcludingHeap
		<	Info{"Heap"}
		,	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Width"
		,	"Height"
		,	"Depth"
		>
	;

	struct
		Interface
	{
		[[nodiscard]]
		auto static
		(	ElementSize
		)	()
			noexcept
		->	::std::size_t
		;

		[[nodiscard]]
		auto static
		(	ImplementerCount
		)	()
			noexcept
		->	int
		;

		[[nodiscard]]
		auto static
		(	ImplementerIndex
		)	(	TypeID
					i_vType
			)
			noexcept
		->	int
		;

		[[nodiscard]]
		auto static
		(	ComputeVolume
		)	(	::std::byte const
				*	i_aObject
			,	int
					i_vImplementerIndex
			)
			noexcept
		->	float
		;

		auto static
		(	Destroy
		)	(	::std::byte
				*	i_aObject
			,	int
					i_vImplementerIndex
			)
			noexcept
		->	void
		;
	};
}
