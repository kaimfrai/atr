module Evaluation.TagATR.Interface;

import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Square;
import Evaluation.Archetype.Triangle;

import Evaluation.Archetype.ComputeVolume;

import ATR.Instance;
import ATR.Literals;
import ATR.Virtual.Dispatch;

import Meta.ID;
import Meta.String.Literal;

using ::Meta::ID;
using ::Meta::ProtoID;
using ::Meta::String::Literal;

using namespace ::ATR::Literals;

namespace
	Bodies3D
{
	template
		<	Literal
			...	t_vpLiteral
		>
	using
		BodyDispatch
	=	::ATR::Virtual::Dispatch
		<	::ATR::Instance
			<	ID<t_vpLiteral>
			,	LocalBody
			>
			...
		>
	;

	using
		Dispatch
	=	BodyDispatch
		<	"Circle"
		,	"Ellipse"
		,	"Rectangle"
		,	"Square"
		,	"Triangle"
		,	"Cube"
		,	"Cuboid"
		,	"Pyramid"
		,	"Sphere"
		,	"Cylinder"
		,	"Cone"
		,	"Ellipsoid"
		,	"Head"
		>
	;

	auto
	(	Interface
		::	ElementSize
	)	()
		noexcept
	->	::std::size_t
	{	return
			Dispatch
			::	ElementSize
				()
		;
	}

	auto
	(	Interface
		::	ImplementerCount
	)	()
		noexcept
	->	int
	{	return
			Dispatch
			::	ImplementerCount
				()
		;
	}

	auto
	(	Interface
		::	ImplementerIndex
	)	(	TypeID
				i_vType
		)
		noexcept
	->	int
	{	return
			Dispatch
			::	ImplementerIndex
				(	i_vType
				)
		;
	}

	auto
	(	Interface
		::	ComputeVolume
	)	(	::std::byte const
			*	i_aObject
		,	int
				i_vImplementerIndex
		)
		noexcept
	->	float
	{	return
			Dispatch
			::	Call
				<	float
				>(	"ComputeVolume"_id
				,	i_aObject
				,	i_vImplementerIndex
				)
		;
	}

	auto
	(	Interface
		::	Destroy
	)	(	::std::byte
			*	i_aObject
		,	int
				i_vImplementerIndex
		)
		noexcept
	->	void
	{	Dispatch
		::	Destroy
			(	i_aObject
			,	i_vImplementerIndex
			)
		;
	}
}
