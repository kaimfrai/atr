#pragma once

#include <Meta/Pack.hpp>
#include <Fold/LogicalAnd.hpp>
#include <Fold/LogicalOr.hpp>
#include <Pack/Fold.hpp>
#include <Pack/Transform.hpp>
#include <Pack/Apply.hpp>
#include <Pack/Instance.hpp>
#include <Pack/Sequence.hpp>
#include <Stateless/Binding.hpp>
#include <Meta/MetaInfo.hpp>
#include <Std/Concepts.hpp>

namespace
	Pack
{
	///	checks if the predicate is true for all elements in the pack
	constexpr
	struct
		[[nodiscard]]
		AllFunc
	{
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Instance auto
					i_vPack
			,	Stateless::Type auto
					i_fPredicate
			)	const
		noexcept
		->	bool
		{
			///	optimization for empty packs
			if constexpr
				(	EmptyInstance
					<	decltype(
							i_vPack
						)
					>
				)
			{
				return
					true
				;
			}
			else
				return
					Apply
					(	Transform
						(	i_vPack
						,	i_fPredicate
						)
					,	Fold::LeftLogicalAnd
					)
				;
		}
	}	All
	{};

	static_assert(All(Meta::Pack<1,1,1>(), Stateless::BackBinding{Meta::StatelessEquals, Meta::V<1>}));
	
	///	checks if the predicate is true for any elements in the pack
	constexpr
	struct
		[[nodiscard]]
		AnyFunc
	{
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Instance auto
					i_vPack
			,	Stateless::Type auto
					i_fPredicate
			)	const
		noexcept
		->	bool
		{
			///	optimization for empty packs
			if constexpr
				(	EmptyInstance
					<	decltype(
							i_vPack
						)
					>
				)
			{
				return
					false
				;
			}
			else
				return
					Apply
					(	Transform
						(	i_vPack
						,	i_fPredicate
						)
					,	Fold::LeftLogicalOr
					)
				;
		}
	}	Any
	{};
	
	static_assert(Any(Meta::Pack<3,2,1>(), Stateless::BackBinding{Meta::StatelessEquals, Meta::V<1>}));
	
	///	checks if the given info object is contained within the pack
	constexpr
	struct
		[[nodiscard]]
		ContainsFunc
	{
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Instance auto
					i_vPack
			,	Meta::InfoInstance auto
					i_vContained
			)	const
		noexcept
		->	bool
		{	return
				Any
				(	i_vPack
				,	Stateless::BackBinding
					{	Meta::StatelessEquals
					,	i_vContained
					}
				)
			;
		}
	}	Contains
	{};

	static_assert(Contains(Meta::Pack<3,2,1>(), Meta::V<1>));
}
