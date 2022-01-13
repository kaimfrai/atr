#pragma once

#include <Pack/Map.hpp>
#include <Stateless/Binding.hpp>
#include <Pack/Transform.hpp>
#include <Pack/MakeSequence.hpp>
#include <Pack/Instance.hpp>
#include <Pack/Type.hpp>
#include <Pack/Value.hpp>
#include <PackTemplate/Type.hpp>
#include <PackTemplate/Value.hpp>

namespace
	Pack
{
	/// applies the function to the n-th element of each Map as specified by the given index
	constexpr
	Stateless::Type auto
		ReduceByIndex
	=	[]	(	Meta::ValueInstance auto
					i_vIndex
			,	Stateless::Type auto
					i_fFunction
			,	Stateless::Type auto
				...	i_rpMap
			)
		->	Meta::InfoInstance auto
		{	return
				i_fFunction
				(	i_rpMap
					[	i_vIndex
					]
					...
				)
			;
		}
	;
	
	///	applies the function for each n-th element of each pack
	[[nodiscard]]
	constexpr
	Instance auto
		Reduce
		(	Stateless::Type auto
				i_fFunction
		,	Instance auto
				i_vFirst
		,	InstanceOfSameSize
			<	decltype(i_vFirst)
			>	auto
			...	i_vpOther
		)
	{
		///	the indices for accessing each element
		ValueInstance auto
		const
			vIndexSequence
		=	MakeIndexPackSequenceFor
			(	i_vFirst
			)
		;
		
		///	binds an index Map for each pack together with the function
		Stateless::Type auto
		const
			vMapBinding
		=	Stateless::BackBinding
			{	ReduceByIndex
			,	i_fFunction
			,	Stateless::Map
				{	vIndexSequence
				,	i_vFirst
				}
			,	Stateless::Map
				{	vIndexSequence
				,	i_vpOther
				}
				...
			}
		;
		
		//	applies the indices one by one resulting in a pack of the same size
		return
			Transform
			(	vIndexSequence
			,	vMapBinding
			)
		;
	}
	
	///	zips all TypePacks together into one TypePack of TypePacks
	///	overloaded for other pack types
	[[nodiscard]]
	constexpr
	TypeInstance auto
		Zip
		(	PackTemplate::TypeInstance auto
				i_vTemplate
		,	TypeInstance auto
				i_vFirst
		,	TypeInstance auto
			...	i_vpOther
		)
	{	return
			Reduce
			(	i_vTemplate
			,	i_vFirst
			,	i_vpOther
				...
			)
		;
	}
	
	///	zips all ValuePacks together into one TypePack of ValuePacks
	///	overloaded for other pack types
	[[nodiscard]]
	constexpr
	TypeInstance auto
		Zip
		(	PackTemplate::ValueInstance auto
				i_vTemplate
		,	ValueInstance auto
				i_vFirst
		,	ValueInstance auto
			...	i_vpOther
		)
	{	return
			Reduce
			(	i_vTemplate
			,	i_vFirst
			,	i_vpOther
				...
			)
		;
	}
}