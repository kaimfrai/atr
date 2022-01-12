#pragma once

#include <Pack/Empty.hpp>
#include <Meta/MetaInfo.hpp>
#include <Meta/ValueInfo.hpp>
#include <Stateless/Tuple.hpp>
#include <Std/Concepts.hpp>

#include <array>

namespace
	Pack
{
	///	wraps around a sequence of values of the same type
	///	defines value-based operations
	template
		<	typename
				t_tElement
		,	t_tElement
			...	t_vpElement
		>
	struct
		[[nodiscard]]
		Sequence
	:	Stateless::Tuple
		<	Meta::ValueInfo
			<	t_vpElement
			>
			...
		>
	{
		using
			RawArrayType
		=	t_tElement
			const
			[	sizeof...(
					t_vpElement
				)
			]
		;
		
		static
		constexpr
		RawArrayType
			RawArray
		{	t_vpElement
			...
		};
		
		using
			StdArrayType
		=	std::array
			<	t_tElement
			,	sizeof...(
					t_vpElement
				)
			>
		;
		
		static
		constexpr
		StdArrayType
			StdArray
		{	t_vpElement
			...
		};
		
		/// converstion to raw array
		constexpr
			operator RawArrayType&
			()	const
		{	return
				RawArray
			;
		}
		
		/// converstion to std::array
		constexpr
			operator StdArrayType const&
			()	const
		{	return
				StdArray
			;
		}
		
		friend
		constexpr
		auto
			begin
			(	Sequence
			)
		{	return
				StdArray
				.	begin
					()
			;
		}
		
		friend
		constexpr
		auto
			end
			(	Sequence
			)
		{	return
				StdArray
				.	end
					()
			;
		}
	};
	
	///	stateless value pack instances
	template
		<	typename
				t_tSequencePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		PureSequenceInstance
	=	Stateless::Type
		<	t_tSequencePack
		,	t_t1Transform
		>
	and	Std::SequencePackInstance
		<	t_tSequencePack
		,	t_t1Transform
		>
	;
	
	/// sequence packs or empty packs
	template
		<	typename
				t_tSequencePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		SequenceInstance
	=	PureSequenceInstance
		<	t_tSequencePack
		,	t_t1Transform
		>
	or	PureEmptyInstance
		<	t_tSequencePack
		,	t_t1Transform
		>
	;
}
