#pragma once

#include <Stateless/Type.hpp>

namespace
	Fold
{
	/// function-object performing a right to left fold over operator ||
	constexpr
	struct
		[[nodiscard]]
		RightLogicalOrFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_rpElement
			)
		{
			return
				(	i_rpElement
				||	...
				)
			;
		}
	}	RightLogicalOr
	{};
	
	/// function-object performing a left to right fold over operator ||
	constexpr
	struct
		[[nodiscard]]
		LeftLogicalOrFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_rpElement
			)
		{
			return
				(	...
				||	i_rpElement
				)
			;
		}
	}	LeftLogicalOr
	{};
}
