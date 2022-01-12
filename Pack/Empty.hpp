#pragma once

#include <Stateless/Tuple.hpp>
#include <Std/Concepts.hpp>

namespace
	Pack
{
	/// special pack type that contains no elements
	struct
		[[nodiscard]]
		Empty
	:	Stateless::Tuple
		<>
	{};
	
	/// instances of empty pack
	template
		<	typename
				t_tEmptyPack
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		PureEmptyInstance
	=	Stateless::Type
		<	t_tEmptyPack
		,	t_t1Transform
		>
	and	Std::SameAs
		<	t_tEmptyPack
		,	Empty
		,	t_t1Transform
		>
	;
}
