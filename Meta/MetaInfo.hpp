#pragma once

#include <Meta/TypeInfo.hpp>
#include <Meta/ValueInfo.hpp>
#include <Stateless/Binding.hpp>
#include <Std/Concepts.hpp>

#include <functional>

namespace
	Meta
{
	///	forwards to the given compare type and returns a ValueInfo of the result
	/// defaults to the three way comparison
	template
		<	Stateless::Type
				t_tCompare
		>
	constexpr
	Stateless::Type auto
		StatelessCompare
	=	StatelessValueInfo
		<	t_tCompare
		>{}
	;

	/// extension to std::equal_to in order to compare types
	struct
		EqualTo
	:	std::equal_to
		<>
	{
		using
			std::equal_to
			<>
			::	operator()
		;

		template
			<	typename
					t_tLeft
			,	typename
					t_tRight
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			()	const
		noexcept
		->	bool
		{
			return
				operator()
				(	Meta::T
					<	t_tLeft
					>
				,	Meta::T
					<	t_tRight
					>
				)
			;
		}
	};


	/// shortcut for comparing for equality
	constexpr
	Stateless::Type auto
		StatelessEquals
	=	StatelessCompare
		<	EqualTo
		>
	;

	///	defines what behaves like an info object
	template
		<	typename
				t_tAny
		>
	concept
		InfoInstance
	=	TypeInstance
		<	t_tAny
		>
	or	ValueInstance
		<	t_tAny
		>
	;

	/// overloaded to access info from value or type
	template
		<	auto
				t_vAny
		>
	constexpr
	auto
		Info
		()
	->	ValueInfo<t_vAny>
	{	return{};	}

	/// overloaded to access info from value or type
	template
		<	typename
				t_tAny
		>
	constexpr
	auto
		Info
		()
	->	TypeInfo<t_tAny>
	{	return{};	}
}
