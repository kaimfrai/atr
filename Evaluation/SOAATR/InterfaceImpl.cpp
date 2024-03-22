module Evaluation.SOAATR.Interface;

import Evaluation.SOAATR.Circle;
import Evaluation.SOAATR.Cone;
import Evaluation.SOAATR.Cube;
import Evaluation.SOAATR.Cuboid;
import Evaluation.SOAATR.Cylinder;
import Evaluation.SOAATR.Ellipse;
import Evaluation.SOAATR.Ellipsoid;
import Evaluation.SOAATR.Head;
import Evaluation.SOAATR.Pyramid;
import Evaluation.SOAATR.Rectangle;
import Evaluation.SOAATR.Sphere;
import Evaluation.SOAATR.Square;
import Evaluation.SOAATR.Triangle;

import Evaluation.SOAATR.ComputeVolume;

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

	struct Interface const constinit
		Interface
	{	Dispatch
		::	ElementSize
			()
	,	Dispatch
		::	ImplementerCount
			()
	,	Dispatch
		::	ImplementerIndex
	,	Dispatch
		::	Destroy
	,	Dispatch
		::	Call
			<	float
			,	"ComputeVolume"
			>
	};
}
