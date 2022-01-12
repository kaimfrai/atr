#pragma once

#include <Meta/Pack.hpp>
#include <Pack/Template.hpp>
#include <Pack/Fold.hpp>
#include <Pack/Instance.hpp>
#include <Pack/Size.hpp>
#include <Pack/Apply.hpp>
#include <Pack/Concat.hpp>
#include <Meta/MetaInfo.hpp>
#include <Std/Concepts.hpp>

namespace
	Pack
{
	struct
		[[nodiscard]]
		ReverseConcat
	{
		///	appends the argument to the pack if it satisfies the predicate
		[[nodiscard]]
		constexpr
		Instance auto
			operator()
			(	Instance auto
					i_vCurrentResult
			,	Meta::InfoInstance auto
					i_vArgument
			)	const
		{	return
				Concat
				(	i_vArgument
				,	i_vCurrentResult
				)
			;
		}
	};
	
	///	returns a new pack with the elements in reversed order
	[[nodiscard]]
	constexpr
	Instance auto
		Reverse
		(	Instance auto
				i_vPack
		)
	{
		/// optimization for packs of size 0 or 1
		if constexpr
			(	OptionalInstance
				<	decltype(
						i_vPack
					)
				>
			)
		{
			return
				i_vPack
			;
		}
		else
			return
				Apply
				(	FoldLeft
					(	i_vPack
					,	ReverseConcat
						{}
					,	Meta::Pack()
					)
				,	Template
					(	i_vPack
					)
				)()
			;
	}

	static_assert(Reverse(Meta::Pack()) == Meta::Pack());
	static_assert(Reverse(Meta::Pack<double>()) == Meta::Pack<double>());
	static_assert(Reverse(Meta::Pack<double, bool, int>()) == Meta::Pack<int, bool, double>());
}
