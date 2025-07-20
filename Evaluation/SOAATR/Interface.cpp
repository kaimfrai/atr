export module Evaluation.SOAATR.Interface;

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

import ATR.District.ExcludingArray;
import ATR.Instance;
import ATR.Member.Composition;

import Meta.ID;
import std;

using ::ATR::District::ExcludingArray;

using ::Meta::ID;

export namespace
	Bodies3D
{
	template
		<	::std::size_t
				t_vCount
		>
	using
		MainDistrict
	=	ExcludingArray
		<	{	"Main"
			,	t_vCount
			}
		>
	;

	template
		<	::std::size_t
				t_vCount
		>
	using
		OtherDistrict
	=	ExcludingArray
		<	{	"Other"
			,	t_vCount
			}
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
		,	"_UnionTag"
		>
	;
}

export namespace
	Bodies3D
{
	template
		<	::std::size_t
				t_vCount
		>
	using
		VolumeComputer
	=	::ATR::Instance
		<	::ATR::Member::Union
			<	ID<"Circle">
			,	ID<"Ellipse">
			,	ID<"Rectangle">
			,	ID<"Square">
			,	ID<"Triangle">
			,	ID<"Cube">
			,	ID<"Cuboid">
			,	ID<"Pyramid">
			,	ID<"Sphere">
			,	ID<"Cylinder">
			,	ID<"Cone">
			,	ID<"Ellipsoid">
			,	ID<"Head">
			>
		,	MainDistrict<t_vCount>
		,	OtherDistrict<t_vCount>
		>
	;
}
