import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;

import Evaluation.Archetype.ComputeVolume;
import Evaluation.Shared;

import ID.Modify;
import ID.Data;
import ID.StringLiteral;
import Evaluation.Archetype.ReturnMember;
import Evaluation.Archetype.Product;
import Function.VirtualArgument;
import Function.Address;
import Layout.MemberOffset;

#include <Pack/Sort.hpp>
#include <Std/QualifierTemplate.hpp>
#include <Pack/Accumulate.hpp>

static_assert
(	Function::Address<ID::FuncT<"ComputeVolume">, Bodies3D::Head const&>()
==	Function::Address<ID::FuncT<"ComputeVolume">, Bodies3D::Sphere const&>()
);

auto
	main
	(	int
			i_nArgCount
	,	char const
		*	i_aArgValue
		[]
	)
-> int
{
	using ID::operator""_fID;
	using namespace Bodies3D;

	using
		Body3D
	=	Function::VirtualStorage
		<	sizeof(Head)
		,	alignof(Float)
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

	auto constexpr
		fComputeVolume
	=	+[]	(	Body3D const
				&	i_rBody3D
			)
		{	return
				i_rBody3D
				(	"ComputeVolume"_fID
				)
			;
		}
	;
	return
		MainTemplate
		<	Body3D
		,	&TypeConstruct<Cube>
		,	&TypeConstruct<Cuboid>
		,	&TypeConstruct<Pyramid>
		,	&TypeConstruct<Sphere>
		,	&TypeConstruct<Cylinder>
		,	&TypeConstruct<Cone>
		,	&TypeConstruct<Ellipsoid>
		,	&TypeConstruct<Head>
		,	fComputeVolume
		>(	i_nArgCount
		,	i_aArgValue
		)
	;
}
