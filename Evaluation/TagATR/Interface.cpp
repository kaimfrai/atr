export module Evaluation.TagATR.Interface;

import Evaluation.Dependency.TaggedArray;

import ATR.District.ExcludingHeap;

import Meta.Memory.Size;
import Meta.Token.TypeID;

import Std;

using ::ATR::District::ExcludingHeap;
using ::ATR::District::Info;

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
		)	(	::std::byte
				*	i_aObject
			,	unsigned char
					i_vImplementerIndex
			)
			noexcept
		->	void
		;
		auto
		(&	ComputeVolume
		)	(	::std::byte const
				*	i_aObject
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
