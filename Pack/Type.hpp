#pragma once

#include <Pack/Empty.hpp>
#include <Stateless/Tuple.hpp>
#include <Meta/MetaInfo.hpp>
#include <Meta/TypeInfo.hpp>
#include <Std/Concepts.hpp>

namespace
	Pack
{
	///	wraps around a pack of types
	///	defines value-based operations
	template
		<	typename
			...	t_tpElement
		>
	struct
		[[nodiscard]]
		Type
	:	Stateless::Tuple
		<	Meta::TypeInfo
			<	t_tpElement
			>
			...
		>
	{};
	
	///	stateless type pack instances
	template
		<	typename
				t_tTypePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		PureTypeInstance
	=	Stateless::Type
		<	t_tTypePack
		,	t_t1Transform
		>
	and	Std::TypePackInstance
		<	t_tTypePack
		,	t_t1Transform
		>
	;
	
	///	type packs or empty packs
	template
		<	typename
				t_tTypePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		TypeInstance
	=	PureTypeInstance
		<	t_tTypePack
		,	t_t1Transform
		>
	or	PureEmptyInstance
		<	t_tTypePack
		,	t_t1Transform
		>
	;
}
