#pragma once

#include <Pack/Type.hpp>
#include <Pack/Value.hpp>
#include <Pack/Sequence.hpp>
#include <Pack/Empty.hpp>
#include <Std/TypeTraits.hpp>

namespace
	Pack
{
	///	defines what behaves like a pack
	template
		<	typename
				t_tPackInstance
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		Instance
	=	PureTypeInstance
		<	t_tPackInstance
		,	t_t1Transform
		>
	or	PureValueInstance
		<	t_tPackInstance
		,	t_t1Transform
		>
	or	PureSequenceInstance
		<	t_tPackInstance
		,	t_t1Transform
		>
	or	PureEmptyInstance
		<	t_tPackInstance
		,	t_t1Transform
		>
	;
}
