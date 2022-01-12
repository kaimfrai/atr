#pragma once

#include <Function/FuncDependencyItem.hpp>
#include <Function/DataDependencyItem.hpp>
#include <Pack/Sort.hpp>
#include <Pack/Type.hpp>
#include <Meta/Template.hpp>
#include <Meta/TypeInfo.hpp>
#include <Stateless/Map.hpp>

namespace
	Function
{
	/// all dependencies will be sorted by their key
	/// this ensures that equivalent dependencies yiels the same type
	/// TODO: check for dublicate keys
	constexpr
	Meta::TypeInstance auto
		MakeSortedDependencyMap
		(	Pack::TypeInstance auto
				i_vUnsorted
		)
	{	Pack::TypeInstance auto const
			vSortedDependencyPack
		=	Pack::SortAscending
			(	i_vUnsorted
			)
		;
		
		return
			vSortedDependencyPack
			.	ApplyTo
				(	Meta::Template<Stateless::Map>
					()
				)
		;
	}
	
	/// creates a TypeInfo of the argument-type
	/// the type will convert to its erased form
	constexpr
	Meta::TypeInstance auto
		MakeDependencyInfo
		(	PackTemplate::TypeInstance auto
				i_vDependencyTemplate
		,	Meta::TypeInstance auto
				i_vArgumentInfo
		,	Stateless::MapItemInstance auto
			...	i_vpDependency
		)
	{
		if constexpr
			(	sizeof...(
					i_vpDependency
				)
			==	0_uz
			)
		{
			return
				i_vDependencyTemplate
				(	ErasedTypeInfo
					(	i_vArgumentInfo
					)
				,	Meta::T<Stateless::Map<>>
				,	Meta::T<Stateless::Map<>>
				)
			;
		}
		else
		{
			Stateless::Pair auto const
			[	vDataDependencyPack
			,	vFuncDependencyPack
			]=	Pack::Filter
				(	Meta::Pack
					<	decltype(i_vpDependency)
						...
					>()
				,	[]	<	Meta::TypeInstance
								t_tDependency
						>(	t_tDependency
						)
					{
						return
							DataDependencyMapItemInstance
							<	typename
								t_tDependency
								::	Type
							>
						;
					}
				)
			;
			
			return
				i_vDependencyTemplate
				(	ErasedTypeInfo
					(	i_vArgumentInfo
					)
				,	MakeSortedDependencyMap
					(	vDataDependencyPack
					)
				,	MakeSortedDependencyMap
					(	vFuncDependencyPack
					)
				)
			;
		}
	}
}
