#pragma once

#include <Stateless/Type.hpp>

namespace
	Fold
{
	/// function-object performing a right to left fold over operator ,
	constexpr
	struct
		[[nodiscard]]
		RightCommaFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_vpElement
			)	const
		{	return
				(	i_vpElement
				,	...
				)
			;
		}
	}	RightComma
	{};
	
	/// function-object performing a left to right fold over operator ,
	constexpr
	struct
		[[nodiscard]]
		LeftCommaFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_vpElement
			)	const
		{	return
				(	...
				,	i_vpElement
				)
			;
		}
	}	LeftComma
	{};
}
