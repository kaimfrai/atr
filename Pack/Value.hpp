#pragma once

#include <Pack/Sequence.hpp>
#include <Pack/Empty.hpp>
#include <Meta/MetaInfo.hpp>
#include <Meta/ValueInfo.hpp>
#include <Stateless/Tuple.hpp>
#include <Std/Concepts.hpp>

namespace
	Pack
{
	///	wraps around a pack of values
	///	defines value-based operations
	template
		<	auto
			...	t_vpElement
		>
	struct
		[[nodiscard]]
		Value
	:	Stateless::Tuple
		<	Meta::ValueInfo
			<	t_vpElement
			>
			...
		>
	{};
	
	/// inherits from Pack::Value. provides more useful debugging information for stateless types than Value<{}, {}, {}, ...>
	template
		<	Stateless::Type
			...	t_tpStateless
		>
	struct
		[[nodiscard]]
		StatelessValue
	:	Value
		<	Stateless::Copy
			<	t_tpStateless
			>
			...
		>
	{
		// default constructor
		constexpr
			StatelessValue
			()
		=	default
		;
		
		/// deduce template from argument
		constexpr
		explicit
			StatelessValue
			(	t_tpStateless
				...
			)
		{}
	};
	
	///	stateless value pack instances
	template
		<	typename
				t_tValuePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		PureValueInstance
	=	Stateless::Type
		<	t_tValuePack
		,	t_t1Transform
		>
	and	Std::ValuePackInstance
		<	t_tValuePack
		,	t_t1Transform
		>
	;
	
	///	pure value packs, sequence packs, or empty packs
	template
		<	typename
				t_tValuePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		ValueInstance
	=	PureValueInstance
		<	t_tValuePack
		,	t_t1Transform
		>
	or	PureSequenceInstance
		<	t_tValuePack
		,	t_t1Transform
		>
	or	PureEmptyInstance
		<	t_tValuePack
		,	t_t1Transform
		>
	or	requires
			(	t_t1Transform
				<	t_tValuePack
				>	c_vValuePack
			)
		{
			// copy constructs Value -> unambiguously derived from Value
			Value
			{	c_vValuePack
			};
		}
	;
}
