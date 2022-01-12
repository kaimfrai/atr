#pragma once

#include <Meta/TypeInfo.hpp>

#include <Stateless/Type.hpp>

#include <Std/FunctionTraits.hpp>
#include <Std/Concepts.hpp>

#include <Std/Size.hpp>

namespace
	Meta
{
	///	wraps around a single compile-time value
	///	defines operations on that value that yield another ValueInfo
	template
		<	auto
				t_vAny
		>
	struct
		[[nodiscard]]
		ValueInfo
	{
		///	the type of the wrapped value
		using
			ValueType
		=	decltype(
				t_vAny
			)
		;
		
		///the wrapped value
		static
		constexpr
		ValueType
			Value
		=	t_vAny
		;
		
		/// conversion to the value
		[[nodiscard]]
		constexpr
			operator
			ValueType
			()	const
		{	return
				Value
			;
		}
		
		/// provides access to members of the wrapped value
		/// note this does not forward to the -> operator of the value
		[[nodiscard]]
		constexpr
		auto
			operator->
			()	const
		->	ValueType
			const
			*
		{	return
				&Value
			;
		}
		
		///	forwards the operator to the wrapped value and returns a ValueInfo of the result
		template
			<	auto
				...	t_vpArgument
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	ValueInfo
				<	t_vpArgument
				>
				...
			)	const
		->	ValueInfo
			<	Value
				(	t_vpArgument
					...
				)
			>
		{	return{};	}
		
		///	special case for unwrapping TypeInfo into a templated operator() of a class value
		template
			<	typename
					t_tInitial
			,	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	TypeInfo
				<	t_tInitial
				>
			,	TypeInfo
				<	t_tpArgument
				>
				...
			)	const
		requires
			Std::Class
			<	ValueType
			>
		{	return
				ValueInfo
				<	Value
					.	template
						operator()
						<	t_tInitial
						,	t_tpArgument
							...
						>()
				>{}
			;
		}
		
		///	forwards the operator to the wrapped value and returns a ValueInfo of the result
		template
			<	auto
					t_vArgument
			>
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	ValueInfo
					<	t_vArgument
					>
			)	const
		->	ValueInfo
			<	t_vAny
				[	t_vArgument
				]
			>
		{	return{};	}
	};
	
	///	stateless types derived from ValueInfo
	template
		<	typename
				t_tValueInstance
		>
	concept
		ValueInstance
	=	Stateless::Type
		<	t_tValueInstance
		>
	and	/// copy constructs ValueInfo -> unambiguously derived from ValueInfo
		Std::ConvertibleToValuePackInstance
		<	t_tValueInstance
		,	ValueInfo
		>
	;
	
	/// frequently used shortcut to create an object of type ValueInfo
	template
		<	auto
				t_vAny
		>
	constexpr
	ValueInstance auto
		V
	=	Stateless::Copy
		<	ValueInfo
			<	t_vAny
			>
		>
	;
	
	/// inherits from value info. provides more useful debugging information for stateless types than ValueInfo<{}>
	template
		<	Stateless::Type
				t_tStateless
		>
	struct
		[[nodiscard]]
		StatelessValueInfo
	:	ValueInfo
		<	Stateless::Copy
			<	t_tStateless
			>
		>
	{
		// default constructor
		constexpr
			StatelessValueInfo
			()
		=	default
		;
		
		/// deduce template from argument
		constexpr
		explicit
			StatelessValueInfo
			(	t_tStateless
			)
		{}
	};
	
	///	deduce value from stateless object
	///	can wrap a function object so that it operates on ValueInfo instead of raw values
	[[nodiscard]]
	constexpr
	Stateless::Type auto
		ValueInfoFor
		(	Stateless::Type auto
				i_vAny
		)
	{	return
			StatelessValueInfo
			{	i_vAny
			}
		;
	}
	
	///	ValueInstances for which the value is of a specific type
	template
		<	typename
				t_tValueInfo
		,	typename
				t_tValue
		>
	concept
		ValueInfoOf
	=	ValueInstance
		<	t_tValueInfo
		>
	and Std::SameAs
		<	typename
			t_tValueInfo
			::	ValueType
		,	t_tValue
		>
	;
	
	///	shortcut for frequently used ValueInfo of USizeType
	template
		<	typename
				t_tValueInfo
		>
	concept
		SizeInfo
	=	ValueInfoOf
		<	t_tValueInfo
		,	Std::USizeType
		>
	;
	
	///	shortcut for frequently used ValueInfo of bool
	template
		<	typename
				t_tValueInfo
		>
	concept
		BoolInfo
	=	ValueInfoOf
		<	t_tValueInfo
		,	bool
		>
	;
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator+
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	+
				t_vAny
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator+
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			+	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator-
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	-
				t_vAny
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator-
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			-	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator*
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	*
				t_vAny
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator*
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			*	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator/
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			/	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator%
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			%	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value
	/// will return bool to sythesize operator !=
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator==
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	decltype(
			t_vLeft
		==	t_vRight
		)
	{	return
			t_vLeft
			==	t_vRight
		;
	}
	
	///	forwards the operator to the wrapped value
	///	will return a comparison type to synthesize comparison operators
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator<=>
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	decltype(
			t_vLeft
		<=>	t_vRight
		)
	{	return
			t_vLeft
		<=>	t_vRight
		;
	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator~
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	~
				t_vAny
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator!
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	!
				t_vAny
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator&
		(	ValueInfo
					<	t_vAny
					>
		)
	->	ValueInfo
		<	(	&
				t_vAny
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator&
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			&	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator&&
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			&&	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator|
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			|	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator||
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			||	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator^
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			^	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator<<
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			<<	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator>>
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			>>	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator->*
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			->*	t_vRight
			)
		>
	{	return{};	}
	
	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator,
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			,	t_vRight
			)
		>
	{	return{};	}
}
