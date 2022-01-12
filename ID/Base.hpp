#pragma once

#include <ID/Make.hpp>
#include <ID/StringLiteral.hpp>

#include <Meta/Pack.hpp>
#include <Pack/Map.hpp>
#include <Pack/Size.hpp>
#include <Pack/Sequence.hpp>
#include <Std/Concepts.hpp>
#include <Std/Size.hpp>

#include <type_traits>
#include <cstring>

namespace
	ID
{
	/// serves as a base class for all identifer types
	/// provides conversions to arrays as well as begin and end functions
	/// makes sure the sequence ends with \0
	template
		<	template
				<	typename
						t_tNestedChar
				,	t_tNestedChar
					...
				>
			typename
				t_t1Derived
		,	Std::Integral
				t_tChar
		,	t_tChar
			...	t_vpString
		>
	struct
		Base
	:	Pack::Sequence
		<	t_tChar
		,	t_vpString
			...
		,	//	terminating null character
			t_tChar
			{}
		>
	{
		/// the sequence of characters without trailing \0
		static
		constexpr
		Pack::SequenceInstance auto
			CharacterSequence
		=	Meta::Pack
			<	t_vpString
				...
			>()
		;
		
		static constexpr
		StringLiteral
		<	t_tChar
			[	sizeof...(
					t_vpString
				)
			+	1_uz
			]
		>	AsStringLiteral
		{	t_vpString
			...
		,	t_tChar
			{}
		};
		
		constexpr
			operator
			StringLiteral
			<	t_tChar
				[	sizeof...(
						t_vpString
					)
				+	1_uz
				]
			> const&
			()	const
		{	return
				AsStringLiteral
			;
		}
		
		/// checks if the identifer starts with the given string
		template
			<	StringLiteral
					t_vStartString
			>
		static
		constexpr
		auto
			StartsWith
			()
		->	bool
		{	return
				Pack::StartsWith
				(	CharacterSequence
				,	MakeV
					<	Pack::Sequence
					,	t_vStartString
					>
				)
			;
		}
		
		/// checks if the identifer ends with the given string
		template
			<	StringLiteral
					t_vStartString
			>
		static
		constexpr
		auto
			EndsWith
				()
		->	bool
		{	return
				Pack::EndsWith
				(	CharacterSequence
				,	MakeV
					<	Pack::Sequence
					,	t_vStartString
					>
				)
			;
		}
	};
	
	static_assert
		(	Base<Pack::Sequence, char, 'a', 'b', 'c'>
			::	template
				StartsWith<"ab">
				()
		)
	;
	static_assert
		(	Base<Pack::Sequence, char, 'a', 'b', 'c'>
			::	template
				EndsWith<"bc">
				()
		)
	;
}

