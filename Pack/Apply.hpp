#pragma once

#include <Pack/Fold.hpp>
#include <Pack/Normalize.hpp>
#include <Pack/Instance.hpp>
#include <Pack/Type.hpp>
#include <Pack/Value.hpp>
#include <Meta/MetaInfo.hpp>
#include <Meta/TypeInfo.hpp>
#include <Meta/ValueInfo.hpp>
#include <Std/Concepts.hpp>

namespace
	Pack
{
	/// calls the function with all elements of the pack
	struct
		Applicator
	{
		/// applies all elements in the pack to the given function and returns the result
		/// note that the final result may not be a pack but every intermediate result in a fold expression has to be
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Instance auto
					i_vPreviousResult
			,	Stateless::Type auto
					i_fApplicator
			)	const
		{	return
				Normalize
				(	i_vPreviousResult
				).	ApplyTo
					(	i_fApplicator
					)
			;
		}
	};
	
	/// forwards the individual elements of the pack to the given objects in sequence
	[[nodiscard]]
	constexpr
	Stateless::Type auto
		Apply
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
			...	i_fpApplicable
		)
	{
		return
			FoldLeft
			(	Stateless::Tuple
				{	i_fpApplicable
					...
				}
			,	Stateless::Copy<Applicator>
			,	i_vPack
			)
		;
	}
	
	/// optimization for one
	[[nodiscard]]
	constexpr
	Stateless::Type auto
		Apply
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
				i_fApplicable
		)
	{
		return
			Stateless::Copy<Applicator>
			(	i_vPack
			,	i_fApplicable
			)
		;
	}
}
