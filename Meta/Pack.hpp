#pragma once

#include <Pack/Normalize.hpp>

namespace
	Meta
{
	///	frequently used shortcut to bundle types together
	/// at least 1 argument is required to deduce the overload
	template
		<	typename
				t_tInitial
		,	typename
			...	t_tpElement
		>
	constexpr
	Pack::TypeInstance auto
		Pack
		()
	{
		return
			Pack::Normalize
			(	T<t_tInitial>
			,	T<t_tpElement>
				...
			)
		;
	}
	
	///	frequently used shortcut to bundle values together
	/// at least 1 argument is required to deduce the overload
	template
		<	auto
				t_vInitial
		,	auto
			...	t_vpElement
		>
	constexpr
	Pack::ValueInstance auto
		Pack
		()
	{
		return
			Pack::Normalize
			(	V<t_vInitial>
			,	V<t_vpElement>
				...
			)
		;
	}
	
	///	frequently used shortcut to create an empty pack
	[[nodiscard]]
	constexpr
	Pack::PureEmptyInstance auto
		Pack
		()
	{
		return
			Pack::Normalize
			()
		;
	}
}
