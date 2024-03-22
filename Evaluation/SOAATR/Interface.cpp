export module Evaluation.SOAATR.Interface;

import Evaluation.Dependency.TaggedArray;

import ATR.District.ExcludingHeap;
import ATR.Erase;

import Meta.Token.TypeID;

import Std;

using ::ATR::CErasure;
using ::ATR::District::ExcludingHeap;
using ::ATR::District::Info;
using ::ATR::RErasure;

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
		::std::size_t const
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

static_assert
(	::std::random_access_iterator
	<	::Bodies3D::Body3DIterator
		<	::Bodies3D::Interface
		>
	>
);
static_assert
(	::std::is_same_v
	<	typename
		::std::iterator_traits
		<	::Bodies3D::Body3DIterator
			<	::Bodies3D::Interface
			>
		>
		::	iterator_category
	,	::std::random_access_iterator_tag
	>
);
