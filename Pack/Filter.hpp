#pragma once

#include <Meta/Pack.hpp>
#include <Stateless/Tuple.hpp>
#include <Pack/Fold.hpp>
#include <Pack/Instance.hpp>
#include <Pack/Apply.hpp>
#include <Pack/Normalize.hpp>
#include <Pack/Size.hpp>
#include <Pack/Concat.hpp>
#include <Meta/MetaInfo.hpp>
#include <Std/Concepts.hpp>

namespace
	Pack
{
	/// appends info objects to a pack if they satisfy a predicate
	template
		<	Stateless::Type
				t_tPredicate
		>
	struct
		[[nodiscard]]
		FilterSplit
	{
		static
		constexpr
		Stateless::Type auto
			PredicateObject
		=	Stateless::Copy<t_tPredicate>
		;
		
		/// default constructor
		constexpr
			FilterSplit
			()
		=	default
		;
		
		/// deduce template from argument
		constexpr
		explicit
			FilterSplit
			(	t_tPredicate
			)
		{}
		
		///	appends the argument to the pack if it satisfies the predicate
		[[nodiscard]]
		constexpr
		Stateless::Pair auto
			operator()
			(	Stateless::Pair auto
					i_vCurrentResult
			,	Pack::Instance auto
					i_vArgument
			)	const
		{
			Stateless::Pair auto
			const
			[	vPositivePack
			,	vNegativePack
			]=	i_vCurrentResult
			;
			
			//	if the predicate is met, put the argument in the positive pack
			if constexpr
				(	PredicateObject
					(	Stateless::Copy<decltype(
							i_vArgument
						)>
					)
				)
			{
				return
					Stateless::Tuple
					{	Concat
						(	vPositivePack
						,	i_vArgument
						)
					,	vNegativePack
					}
				;
			}
			// put it in the negative pack otherwise
			else
				return
					Stateless::Tuple
					{	vPositivePack
					,	Concat
						(	vNegativePack
						,	i_vArgument
						)
					}
				;
		}
	};
	
	///	returns a new pack containing only the elements that satisfy the predicate
	[[nodiscard]]
	constexpr
	Stateless::Pair auto
		Filter
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
				i_fPredicate
		)
	{	/// optimization for empty packs
		if constexpr
			(	EmptyInstance
				<	decltype(
						i_vPack
					)
				>
			)
		{
			return
				Stateless::Tuple
				{	Meta::Pack()
				,	Meta::Pack()
				}
			;
		}
		else
			return
				FoldLeft
				(	i_vPack
				,	FilterSplit
					{	i_fPredicate
					}
				,	Stateless::Tuple
					{	Meta::Pack()
					,	Meta::Pack()
					}
				)
			;
	}
	
	/// filters only the elements that satisfy the predicate
	[[nodiscard]]
	constexpr
	Instance auto
		FilterPositive
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
				i_fPredicate
		)
	{
		Stateless::Pair auto
		const
		[	vPositivePack
		,	vNegativePack
		]=	Filter
			(	i_vPack
			,	i_fPredicate
			)
		;
		
		return
			vPositivePack
		;
	}
	
	/// filters only the elements that do not satisfy the predicate
	[[nodiscard]]
	constexpr
	Instance auto
		FilterNegative
			(	Instance auto
					i_vPack
			,	Stateless::Type auto
					i_fPredicate
			)
		{
			Stateless::Pair auto
			const
			[	vPositivePack
			,	vNegativePack
			]=	Filter
				(	i_vPack
				,	i_fPredicate
				)
			;
			
			return
				vNegativePack
			;
		}
	;
	
 	static_assert(FilterPositive(Meta::Pack<0,1,2>(), Meta::ValueInfoFor([](auto i){return i > 0;})) == Meta::Pack<1,2>());
}
