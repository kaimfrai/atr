#pragma once

#include <Pack/Apply.hpp>
#include <Pack/Concat.hpp>
#include <Pack/Size.hpp>
#include <Pack/Normalize.hpp>
#include <Pack/Instance.hpp>
#include <Pack/Type.hpp>
#include <Pack/Value.hpp>
#include <Meta/TypeInfo.hpp>
#include <Meta/ValueInfo.hpp>
#include <Std/Concepts.hpp>

namespace
	Pack
{
	/// applies the same transformation to all info objects of a pack
	template
		<	Stateless::Type
				t_tTransform
		>
	struct
		Transformer
	{
		/// default constructor
		constexpr
			Transformer
			()
		=	default
		;
		
		/// deduce template from argument
		constexpr
		explicit
			Transformer
			(	t_tTransform
			)
		{}
		
		static
		constexpr
		Stateless::Type auto
			TransformObject
		=	Stateless::Copy<t_tTransform>
		;
		
		/// applies the transformation to all info objects in the pack and returns a transformed pack
		[[nodiscard]]
		constexpr
		Instance auto
			operator()
			(	Stateless::Type auto
				...	i_vpInfo
			)	const
		{
			return
				Concat
				(	TransformObject
					(	i_vpInfo
					)
				...
				)
			;
		}
	};
	
	///	applies all transformations in sequence to the pack
	[[nodiscard]]
	constexpr
	Instance auto
		Transform
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
			...	i_fpTransform
		)
	{
		return
			Apply
			(	i_vPack
			,	Transformer
				{	i_fpTransform
				}
				...
			)
		;
	}
}
