export module Evaluation.TagATR.Interface;

import Evaluation.Dependency.TaggedArray;

import ATR.District.ExcludingHeap;
import ATR.Erase;

import Meta.Memory.Size;
import Meta.Token.TypeID;

using ::ATR::CErasure;
using ::ATR::District::ExcludingHeap;
using ::ATR::District::Info;
using ::ATR::RErasure;

using ::Meta::ByteSize;
using ::Meta::TypeID;

namespace
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
		ByteSize const
			ElementSize
		;
		unsigned char const
			ImplementerCount
		;
		auto
		(&	ImplementerIndex
		)	(	TypeID
					i_vType
			)
			noexcept
		->	unsigned char
		;
		auto
		(&	Destroy
		)	(	RErasure
					i_rObject
			,	unsigned char
					i_vImplementerIndex
			)
			noexcept
		->	void
		;
		auto
		(&	ComputeVolume
		)	(	CErasure
					i_rObject
			,	unsigned char
					i_vImplementerIndex
			)
			noexcept
		->	float
		;
	}	const constinit extern
		Interface
	;
}

export namespace
	Bodies3D
{
	using
		VolumeComputer
	=	TaggedArray
		<	Interface
		,	LocalBody
		>
	;
}
